<html>
<body>
<?php

$link = mysql_connect('mariadb', 'cs332g1', 'giLia5bu');
if (!$link) {
    die('Could not connect: ' .mysql_error());
}
echo 'Connected successfully<br><br>';


mysql_select_db("cs332g1",$link);

$inputCrs = $_POST["stu_cno"];
$query = "SELECT S.Sec_Number, S.Classroom, S.Meeting_Days, S.Begin_Time, S.End_Time, COUNT(ST.CWID) AS TOTAL
FROM Section S, Enrollment E, Student ST
WHERE S.CourseNum = '$inputCrs' AND E.SecNumber = S.Sec_Number AND ST.CWID = E.SCWID
GROUP BY S.Sec_Number
";
$result = mysql_query($query,$link);

if(!$result){
    echo "invalid";
}
else if (mysql_numrows($result) == 0){
    echo "Section with Provided Course Number Does Not Exist";    
}
else {
    echo "Showing Results for Section with Provided Course Number<br><br>";

    for($i = 0; $i < mysql_numrows($result); $i++){
        echo "Section Number: ", mysql_result($result,$i,"Sec_Number"), 
            "<br>Classroom: ", mysql_result($result,$i,"Classroom"), 
            "<br>Meeting Days: ", mysql_result($result,$i,"Meeting_Days"),
            "<br>Begin Time: ", mysql_result($result,$i,"Begin_Time"),
            "<br>End Time: ", mysql_result($result,$i,"End_Time"),
            "<br>Number of Students: ", mysql_result($result,$i,"TOTAL"), "<br><br>";
    }
}

mysql_close($link);
?>
</body>
</html>