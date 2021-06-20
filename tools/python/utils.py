import PyYAML


class Utils:
    def __new__(cls, *args, **kwargs):
        cls.root = ""

        cls.refresh()

    @classmethod
    def refresh(cls):
        pass
