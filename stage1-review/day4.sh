for item in `ls *.java`
do
name1=`echo $item | awk -F. '{ print $1 }'`
mkdir $name1
if [ -d $name1 ]
then
name2=`echo $item | awk -F. '{ print $2 }'`
mkdir -p $name1/$name2
fi
mv $item $name1/$name2
done


