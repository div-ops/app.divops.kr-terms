#!/bin/bash

FILE=$(
  cat <<CMD
Host *
  StrictHostKeyChecking no
  UserKnownHostsFile /dev/null
  LogLevel quiet
CMD
)

echo $FILE >~/.ssh/config
