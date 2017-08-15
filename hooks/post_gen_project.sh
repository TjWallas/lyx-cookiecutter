#!/bin/bash

/usr/bin/git init && \
/bin/ln -s -f ../../.git_hooks/post-commit .git/hooks/post-commit && \
/bin/ln -s -f ../../.git_hooks/pre-commit .git/hooks/pre-commit
