# Run and Debug the Django Project along with Celery

This guide provides instructions on how to set up and debug a Django project along with Celery using Visual Studio Code.

## Prerequisites

- Visual Studio Code installed
- Python extension for Visual Studio Code installed
- Django project set up
- Celery integrated with your Django project

## Configuration

To configure debugging for both Django and Celery, you need to set up your `launch.json` file. This file is used to define the debugging configurations in Visual Studio Code.

### Steps

1. Create a folder named `.vscode` in the root of your project directory if it doesn't exist.
2. Create a file named `launch.json` inside the `.vscode` folder.
3. Copy the configuration below into the `launch.json` file.

For your convenience, the `launch.json` file is provided below:

[Download launch.json](launch.json)

### Additional Resources

- [Django Debugging in VSCode](https://code.visualstudio.com/docs/python/tutorial-django)
- [Celery Documentation](https://docs.celeryproject.org/en/stable/)

For more detailed steps and troubleshooting, refer to the official documentation linked above.
