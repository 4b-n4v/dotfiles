
string1="hello"
string2="2"

if [[ "$(cat ~/mirror.txt | grep " connected" | cut -d "+" -f2 | uniq -c | cut -d " " -f7)" != "$string2" ]]; then
  echo "Strings are equal"
else
  echo "Strings are not equal"
fi
