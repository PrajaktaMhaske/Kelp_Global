echo "Enter a number: "
read rows

a=1
echo "Pattern: "
for((i=1; i<=rows; i++))
do
  for((j=1; j<=i; j++))
  do
    echo -n "$a "
    a=$((a + 1))
  done
  a=1
  echo
done