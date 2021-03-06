import os


def get_java_files(directory):
    """
    A generator that gives you all java files (*.java) in a specific directory.
    :param directory: The directory's absolute path you want to traverse.
    :return: Yields a *.java that exists in the directory
    """
    if not os.path.isdir(directory):
        raise ValueError("directory should be an absolute path of a directory!")
    for root, dirs, files in os.walk(directory):
        for file in files:
            if file.split('.')[-1] == 'java':
                yield os.path.join(root, file)


if __name__ == '__main__':
    for i in get_java_files("C:\\Users\\RGY\\PycharmProjects\\compiler992\\test_project"):
        print(i)
