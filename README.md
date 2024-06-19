# jupyter-notepad-kit
A devcontainer/codespaces jupyterlab notebook template using ipynb with matplotlib compiled to html5.

## Development

### devcontainer/codespaces
Open with devcontainer client such as vscode

### WSL/x86 linux
* install python3, python3-pip, ffmpeg
* run `pip install -r requirements.txt`
* install jupyterlab on vscode

## Release

### Export to HTML5
To export your notes to HTML5, inside devcontainer run `bash bin/builder.sh` or
from your host machine run `bash build.sh` to run the build script in docker.

### nbviewer
https://nbviewer.org/github/ricksterhd123/jupyter-notepad-kit/blob/main/notes/article1.ipynb
