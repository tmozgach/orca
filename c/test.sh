sleep 5
# The bug with `quast`, have to test twice!
brew test quast 2> /dev/null

if brew test $(brew list) --cc=gcc-4.8 |& grep -q ': failed'; then
  echo "Tests failed!"
  exit 1
else
  brew tests
fi
