# Jarvis - A Terminal Assistant for Shell Commands

This is a terminal assistant for remembering shell commands. It utilizes the OpenAI API to provide concise commands based on user input.

![Peek 2024-03-07 20-47](https://github.com/nywton/jarvis/assets/6857918/e097c884-3835-4564-9427-67b69e2f53e3)

## Configuration

First, you need to give execution permission to the script:

```bash
$ chmod +x find_shell.sh
```
You also need to export your OpenAI API key:

```bash
# put in the .bashrc or .zshrc
export OPENAI_API_KEY=your_openai_api_key_here
```

[optional] To use this script efficiently, you can set up an alias in your .bashrc file:

```bash
alias ia=/full/path/of/script
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



