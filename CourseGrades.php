<html>
<body>
<?php

$link = mysql_connect('mariadb', 'cs332g1', 'giLia5bu');
if (!$link) {
    die('Could not connect: ' .mysql_error());
}
echo 'Connected successfully<br><br>';


mysql_select_db("cs332g1",$link);

$inputSec = $_POST["prof_sec_no"];
$inputCrs = $_POST["prof_cno"];
$query = "SELECT E.Grade, COUNT(*) AS TOTAL
FROM Section S, Enrollment E
WHERE S.CourseNum = '$inputCrs' AND E.SecNumber = $inputSec AND S.Sec_Number = E.SecNumber 
GROUP BY E.Grade";
$result = mysql_query($query,$link);

if(!$result){
    echo "invalid";
}
else if (mysql_numrows($result) == 0){
    echo "Section with Provided Course Number and Section Number Does Not Exist";    
}
else {
    echo "Showing Results for Section with Provided Course Number and Section Number<br><br>";

    for($i = 0; $i < mysql_numrows($result); $i++){
        echo "Letter Grade: ", mysql_result($result,$i,"Grade"), 
            "<br>Number Of Students: ", mysql_result($result,$i,"TOTAL"), "<br><br>";
    }
}

mysql_close($link);
?>
</body>
</html>