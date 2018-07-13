<?php
$db = 'test_db';
$name='user' ;
$pass='pass';
$host= 'mysql_host';
$conn =new mysqli($host,$name,$pass,$db);
if(!$conn)
     echo "Dog brain is real =))~";
else 
    echo 'noob';