#!/bin/bash
  ip=$1
  file=$2
  nfName=$3
  echo $ip
  diff  -q --suppress-common-lines --ignore-blank-lines $file <(sshpass -p "P5vKG6vE" ssh cnrusr@"${ip}"  'cat /opt/cinar/'$nfName'/'$file)
  if [ $? = 0 ]; then
   echo "aaaaaaa"
   python -c 'import sys;nfIp=sys.argv[1];fileName=sys.argv[2];f = open(sys.argv[1]+"_"+sys.argv[2]+".html","wb");message = """<html>
<head>
<style>
body {
  color: green}
</style>
</head>
<body>
<p>""" +nfIp+ """</p>
<p>""" +fileName+ """ SAME</p></body>
</html>""";f.write(message);f.close()' $ip $file
    elif [ $? = 1 ];then
    echo "bbbbbbbb"
        python -c 'import sys;nfIp=sys.argv[1];fileName=sys.argv[2];f = open(sys.argv[1]+"_"+sys.argv[2]+".html","wb");message = """<html>
<head>
<style>
body {
  color: red}
</style>
</head>

<body>
<p>""" +nfIp+ """</p>
<p>""" +fileName+ """ DIFF EXIST!!!! </p></body>
</html>""";f.write(message);f.close()' $ip $file

   else
python -c 'import sys;nfIp=sys.argv[1];fileName=sys.argv[2];f = open(sys.argv[1]+"_"+sys.argv[2]+".html","wb");message = """<html>
<head>
<style>
body {
  color: red}
</style>
</head>

<body>
<p>""" +nfIp+ """</p>
<p>""" +fileName+ """ CAN NOT CHECKED SETTINGS FILES!!!! </p></body>
</html>""";f.write(message);f.close()' $ip $file



  fi

