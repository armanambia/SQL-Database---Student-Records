<html>
<body>
<?php

$link = mysql_connect('mariadb', 'cs332g1', 'giLia5bu');
if (!$link) {
    die('Could not connect: ' .mysql_error());
}
echo 'Connected successfully<br><br>';


mysql_select_db("cs332g1",$link);

$input = $_POST["stu_cwid"];
$query = "SELECT C.Crs_Number, E.Grade
FROM Course C, Student S, Enrollment E, Section SE
WHERE S.CWID = $input AND E.SCWID = S.CWID 
AND E.SecNumber = SE.Sec_Number AND C.Crs_Number = SE.CourseNum
";
$result = mysql_query($query,$link);

if(!$result){
    echo "invalid";
}
else if (mysql_numrows($result) == 0){
    echo "Student with Provided CWID Does Not Exist";    
}
else {
    echo "Showing Results for Student with Provided CWID<br><br>";

    for($i = 0; $i < mysql_numrows($result); $i++){
        echo "Course Number: ", mysql_result($result,$i,"Crs_Number"), 
            "<br>Grade: ", mysql_result($result,$i,"Grade"), "<br><br>";
    }
}

mysql_close($link);
?>
</body>
</html>