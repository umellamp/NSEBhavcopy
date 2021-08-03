#!bash
for i in JAN FEB MAR APR MAY JUN JUL AUG SEP OCT NOV DEC
do 
  x=${i}2021bhav.csv.zip
  for foo in {01..31}
  do
    j=$(printf "%02d" $foo)
    wget -q --user-agent="Links (2.6; Linux 3.2.0-38-generic x86_64; GNU C 4.6.3; text)" https://www1.nseindia.com/content/historical/EQUITIES/2021/$i/cm$j$x
    if [ -e cm$j$x ]
    then
      echo cm$j$x
      unzip -q cm$j$x
      rm cm$j$x
    fi
  done
done
