<?php 
    $servername = "127.0.0.1"; 
    $username = "root"; 
    $password = ""; 
    $dbname = "forproject"; 
    $conn = mysqli_connect($servername, $username, $password, $dbname); 
    $Type=$_POST["Type"];
    $Zagolovok=$_POST['Zagolovok'];
    $price = $_POST['Price']; 
    $Size = $_POST['Size'];
    $About = $_POST['About'];
    $Gender = $_POST['Gender']; 
    $Photo1 = $_POST['Photo1'];
    $Photo2 = $_POST['Photo2'];
    $Photo3 = $_POST['Photo3'];
    $Country=$_POST['Country'];
    $Sostav=$_POST['Sostav'];
    $sql2 = "INSERT INTO `forclothes` (`ID`, `Price`,`Photo`, `Opisanie`,`Type`) VALUES (NULL, '$price','$Photo1', '$Zagolovok','$Type') "; 
    $query=mysqli_query($conn, $sql2); 
    $sql1 = "INSERT INTO genderid (ID, Gender) VALUES (NULL, '$Gender')"; 
    $query=mysqli_query($conn,$sql1);
    
    $sql3 = "INSERT INTO `forinfo` (`ID`, `Size`, `Image2`, `Image3`, `Information`, `Sostav`, `Country`) VALUES (NULL, '$Size', '$Photo2', '$Photo3', '$About', '$Sostav', '$Country')"; 
    $query=mysqli_query($conn, $sql3);  
    mysqli_close($conn); 
    header("Location: /Palazzo/Admin/admin.php");
?>