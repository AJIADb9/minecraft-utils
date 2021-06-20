import environment


def main():
    if not environment.check_env():
        print("WARN: something went wrong")


if __name__ == '__main__':
    main()
