# Check for existence of enviroment variable. -z flag checks if string is equal
# to 0
if [ -z "$GH_TOKEN" ]; then
  echo "GH_TOKEN not set. Generate one at https://github.com/settings/tokens"
  exit 1
fi

# Check for existence of an executable, using type
# -t gives only the type. The fn will give us 0 or 1 exit code
exists() { type -t "$1" > /dev/null 2>&1; }

if ! exists jq; then
  echo "jq json parser not found; install with brew install jq"
  exit 1
fi

# Find a string in all files in current directory
grep "some string" . -R

