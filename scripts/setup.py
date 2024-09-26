import os
import stat

print("Starting setup...")

# Set the permissions of the directory to read, write, and execute for the user
permissions = (stat.S_IRUSR | stat.S_IWUSR | stat.S_IXUSR)

# Get all files in this directory
files = os.listdir(".")

for file in files:

    # Get the absolute path of the file
    file_abs_path = os.path.abspath(file)

    # Change the permissions of the file
    os.chmod(file_abs_path, permissions)

print("Permissions set.")

# Get the absolute path of the directory where this file is located
dir_abs_path: str = os.path.dirname(os.path.abspath(__file__))

current_path = os.environ.get('PATH', '')

if f":{dir_abs_path}:" in current_path or f":{dir_abs_path}" in current_path:
    
    print("Directory already in PATH.")

    print("Setup complete.")

else:
    
    # Make the modified path
    modified_path = f"{dir_abs_path}:{current_path}"

    # Set the PATH environment variable
    os.environ['PATH'] = modified_path

    print("Setup complete.")