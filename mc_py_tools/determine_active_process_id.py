from time import sleep
from typing import Optional
from ctypes import wintypes, windll, create_unicode_buffer
import psutil


def get_foreground_window_title() -> (Optional[int], Optional[str]):
    hWnd = windll.user32.GetForegroundWindow()
    length = windll.user32.GetWindowTextLengthW(hWnd)
    buf = create_unicode_buffer(length + 1)
    windll.user32.GetWindowTextW(hWnd, buf, length + 1)

    # 1-liner alternative: return buf.value if buf.value else None
    if buf.value:
        return hWnd, buf.value
    else:
        return None, None


def main():
    # Список процессов с именем файла notepad.exe:
    notepads = [item for item in psutil.process_iter() if item.name() == 'notepad.exe']
    print(notepads)  # [<psutil.Process(pid=4416, name='notepad.exe') at 64362512>]

    # Просто pid первого попавшегося процесса с именем файла notepad.exe:
    # pid = next(item for item in psutil.process_iter() if item.name() == 'notepad.exe').pid
    # (вызовет исключение StopIteration, если Блокнот не запущен)

    # print(pid)  # 4416

    while True:
        hWnd, name = get_foreground_window_title()
        if hWnd != 66560:
            print(hWnd, name)
        # sleep(1)


if __name__ == '__main__':
    main()
