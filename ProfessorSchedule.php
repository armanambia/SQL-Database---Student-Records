<html>
<body>
<?php

$link = mysql_connect('mariadb', 'cs332g1', 'giLia5bu');

if (!$link) {
    die('Could not connect: ' .mysql_error());
}

echo 'Connected successfully<br><br>';
$input = $_POST["prof_sno"];

mysql_select_db("cs332g1",$link);
$query =  "SELECT C.Title, S.Classroom, S.Meeting_Days, S.Begin_Time, S.End_Time 
           FROM Course C, Section S, Professor P 
           WHERE C.Crs_Number = S.CourseNum AND  P.SSN = $input AND P.SSN = S.ProfSSN ";

$result = mysql_query($query, $link);

if(!$result){
    echo "invalid";
}
else if (mysql_numrows($result) == 0){
    echo "Professor with Provided SSN does not exist<br><br>";    
}
else {
    echo "Showing Results for Professor with Provided SSN<br><br>";

    for($i = 0; $i < mysql_numrows($result); $i++){
        echo "Title: ", mysql_result($result,$i,"Title"), 
            "<br>Classroom: ", mysql_result($result,$i,"Classroom"), 
            "<br>Meeting Days: ", mysql_result($result,$i,"Meeting_Days"),
            "<br>Begin Time: ", mysql_result($result,$i,"Begin_Time"),
            "<br>End Time: ", mysql_result($result,$i,"End_Time"), "<br><br>";
    }
}


mysql_close($link);
?>
</body>
</html>