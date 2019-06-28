TMP=/tmp/do$$
ls -t | egrep '^[[:digit:]]*$' > $TMP
COUNT=`wc -l $TMP | awk '{print $1}'`
DEL=`expr $COUNT - 1`
echo found $COUNT chromium distributions
echo deleting $DEL old distributions
tail -$DEL $TMP | xargs rm -rf
