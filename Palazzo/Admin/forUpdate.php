<?php 
$servername = "127.0.0.1"; 
$username = "root"; 
$password = ""; 
$dbname = "forproject"; 
$conn = mysqli_connect($servername, $username, $password, $dbname); 
$OldID=$_POST['OldID'];
$Gender = $_POST['Gender']; 
$price = $_POST['Price']; 
$About = $_POST['About'];
$Size = $_POST['Size'];
$Photo1 = $_POST['Photo1'];
$Photo2 = $_POST['Photo2'];
$Photo3 = $_POST['Photo3'];
$Zagolovok=$_POST['Zagolovok'];
$Type=$_POST["Type"];
$Sostav=$_POST['Sostav'];
$Country=$_POST['Country'];
$stmt = $conn->prepare("UPDATE forinfo, forclothes, genderid SET price=?,photo=?,Opisanie=?,Type=?,Gender=?,Size=?,Image2=?,Image3=?,Information=?,Sostav=?,Country=? WHERE forclothes.ID=? and forinfo.ID=? and genderid.ID=?");
$stmt->bind_param("issssisssssiii", $price, $Photo1,$Zagolovok,$Type,$Gender,$Size,$Photo2,$Photo3,$About,$Sostav,$Country,$OldID,$OldID,$OldID);
$stmt->execute();
$stmt->close();
$conn->close();
header("Location: /Palazzo/Admin/admin.php");
?>