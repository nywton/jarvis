# Jarvis - A Terminal Assistant for Shell Commands

This is a terminal assistant for remembering shell commands. It utilizes the OpenAI API to provide concise commands based on user input.

![Peek 08-03-2024 07-26](https://github.com/nywton/jarvis/assets/6857918/797f3f14-5d9b-4eaa-87e0-2e591313deee)


## Install

First, you need to give execution permission to the script:

```bash
$ git clone https://github.com/nywton/jarvis.git
$ cd jarvis
$ chmod +x find_shell.sh
```
You also need to export your [OpenAI API key](https://help.openai.com/en/articles/4936850-where-do-i-find-my-openai-api-key):

```bash
# put in the .bashrc or .zshrc
export OPENAI_API_KEY=your_openai_api_key_here
```

[optional] To use this script efficiently, you can set up an alias in your .bashrc file:

```bash
alias jarvis=/home/user/jarvis/find_shell.sh
```
## Usage
You can use the script like this:

```bash
$ ./find_shell.sh "display git log with changes"
```
This will produce the output:

```bash
# result
git log -p
```



