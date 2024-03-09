#!/usr/bin/env bash

set -e

# This is a terminal assistant for remembering shell commands
# #### Usage
# First you need to give execution permission:
# ```
# $ chmod +x find_shell.sh
# ```
# ./find_shell.sh "display git log with changes"
# Produces: git log -p
#
# #### Configure
# You add an alias to the file in .bashrc
# alias ia=/full/path/of/script
# You also need to export the $OPENAI_API_KEY

if [ $# -eq 0 ]; then
    echo "Usage: $0 <command>"
    exit 1
fi

user_command="$1"

response=$(curl -sS https://api.openai.com/v1/chat/completions \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $OPENAI_API_KEY" \
  -d '{
    "model": "gpt-3.5-turbo",
    "messages": [
      {
        "role": "system",
        "content": "You are a helpful assistant that receives inputs you will respond using a simple terminal command by providing a concise command that conveys the necessary information without any additional context or explanation."
      },
      {
        "role": "user",
        "content": "'"$user_command"'"
      }
    ]
  }')

output=$(echo "$response" | grep -o "\"content\": \"[^\"]*" | cut -d "\"" -f4)

echo "$ $output"

read -p "execute command? (y/n): " choice

case "$choice" in 
  y|Y ) 
    echo "Executing command: $output"
    eval "$output"
    ;;
  n|N ) 
    echo "Exiting without executing the command."
    ;;
  * ) 
    echo "Invalid choice, exiting without executing the command."
    ;;
esac

