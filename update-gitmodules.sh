#!/bin/bash

CMDS=$(
  cat <<CMD
  const before = 'git@github.com:div-ops/divops-frontend-shared.git';
  const after = 'https://$GITHUB_TOKEN@github.com/div-ops/divops-frontend-shared.git';
  const content = require('fs').readFileSync('./.gitmodules', 'utf-8').replace(before, after);
  require('fs').writeFileSync('./.gitmodules', content, 'utf-8');
CMD
)

node -p "$CMDS"
