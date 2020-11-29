git diff-tree origin/DEV..HEAD --diff-filter=d -r --no-commit-id --name-only | grep '\.rb$' | grep -v '^db/' | xargs -r rubocop  --parallel --force-exclusion

git diff-tree origin/master..HEAD --diff-filter=d -r --no-commit-id --name-only | grep '\.rb$' | grep -v '^db/' | xargs -r rubocop  --parallel --force-exclusion