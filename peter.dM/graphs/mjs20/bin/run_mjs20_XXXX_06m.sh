echo "$0 `date`: start"

cd `dirname $0` 
IK=`basename $0`


#for SH in run_mjs20_????_06m.sh run_mjs20_????_06m_?.sh
for SH in run_mjs20_????_06m.sh 
do
    [ `basename $SH` != $IK ] && {
        [ -x $SH ] && {
            ls -l $SH
            ./$SH | sed 's/^/    /'
            sleep 1
        }
    }
done

echo "$0 `date`: einde"

echo ""
echo ""
echo ""
echo ""
