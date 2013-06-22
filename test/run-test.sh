#!/bin/sh

# startup
rake install
cd test/fixtures

# case 1
echo "### case 1"
echo "% ls"
ls
echo
echo "% ls | spsleep"
ls | spsleep
echo

# case 2
echo "### case 2"
echo "% ls"
ls
echo
echo "% ls | spsleep 0.5"
ls | spsleep 0.5
echo

# case 3
echo "### case 3"
echo "% cat foo"
cat foo
echo
echo "% spsleep foo"
spsleep foo
echo

# case 4
echo "### case 4"
echo "% cat foo"
cat foo
echo
echo "% spsleep 0.5 foo"
spsleep 0.5 foo
echo

# shutdown
cd - >/dev/null
