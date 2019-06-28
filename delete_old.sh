TMP=/tmp/do$$
ls -t | egrep '^[[:digit:]]*$' > $TMP
COUNT=`wc -l $TMP | awk '{print $1}'`
DEL=`expr $COUNT - 1`
echo COUNT=$COUNT
echo DEL=$DEL
tail -$DEL $TMP | xargs rm -rf
