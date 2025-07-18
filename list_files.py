import os

project_path = "."  # This sets the path to the current directory

with open("file_list.txt", "w") as f:
    for root, dirs, files in os.walk(project_path):
        f.write(f"Directory: {root}\n")
        for file in files:
            f.write(f"  {file}\n")
        f.write("\n")

print("File list saved as file_list.txt")
