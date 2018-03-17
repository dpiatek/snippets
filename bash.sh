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

# Split a string in bash
${"When in Rome":4}


# display free disk space
df

# display directory size
du -sh /dir

# unzip a tar.gz
# f: this must be the last flag of the command, and the tar file must be immediately after. It tells tar the name and path of the compressed file.
# z: tells tar to decompress the archive using gzip
# x: tar can collect files or extract them. x does the latter.
# v: makes tar talk a lot. Verbose output shows you all the files being extracted.

tar -xvzf file.tar.gz
