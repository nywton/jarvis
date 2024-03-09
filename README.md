# Jarvis - A Terminal Assistant for concise Shell Commands

This is a terminal assistant for remembering shell commands. It utilizes the OpenAI API to provide concise commands based on user input.

![Peek 08-03-2024 07-26](https://github.com/nywton/jarvis/assets/6857918/797f3f14-5d9b-4eaa-87e0-2e591313deee)


## Install

Unix/Based:

```bash
# clone the repo to .config files
$ git clone https://github.com/nywton/jarvis.git ~/.config/jarvis

# give execution permission to the script
$ chmod u+x ~/.config/jarvis/find_shell.sh

# add a alias to to execute script
$ echo 'alias jarvis=~/.config/jarvis/find_shell.sh' >> ~/.bashrc # or ~/.zshrc for zsh

# reload the session
$ source ~/.bashrc # or source ~/.zshrc for zsh
```
You also need to export your [OpenAI API key](https://help.openai.com/en/articles/4936850-where-do-i-find-my-openai-api-key):

```bash
# put in the .bashrc or .zshrc
$ echo 'export OPENAI_API_KEY=your_openai_api_key_here' >> ~/.bashrc # or ~/.zshrc for zsh
```

[optional] To use this script efficiently, you can set up an alias in your .bashrc file:

```bash
alias jarvis=/home/user/jarvis/find_shell.sh
```
## Usage
You can use the script like this:

```bash
$ jarvis "docker disk usage"                                                                    
=> $ docker system df
execute command? (y/n): y
Executing command: docker system df
TYPE            TOTAL     ACTIVE    SIZE      RECLAIMABLE
Images          7         4         4.018GB   1.61GB (40%)
Containers      4         0         243.4MB   243.4MB (100%)
Local Volumes   24        1         858.9MB   858.9MB (99%)
Build Cache     45        0         546.4MB   546.4MB 
```



