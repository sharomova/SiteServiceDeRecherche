<!DOCTYPE html>
<html>
<head>

</head>
<body>

<?php
echo "Cette ligne a été écrite \"uniquement\" en PHP."; 
$con = mysqli_connect('localhost','peter','abc123','my_db');
if (!$con) {
    die('Could not connect: ' . mysqli_error($con));
}

mysqli_select_db($con,"ajax_demo");
$sql="UPDATE utilisateur SET Nom='Doe' WHERE id_utilisateur=3";
$result = mysqli_query($con,$sql);


mysqli_close($con);



 
//$result = mysql_query("UPDATE utilisateur set " . $_POST["column"] . " = '".$_POST["editval"]."' WHERE  id_utilisateur=".$_POST["id"]);

?>
</body>
</html>