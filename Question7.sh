set="abcdefghijklmonpqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*/?"
n=8
rand=""
for i in `seq 1 $n`; do
    char=${set:$RANDOM % ${#set}:1}
    rand+=$char
done
echo $rand