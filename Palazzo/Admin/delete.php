<?php
	$ID=$_GET['ID'];
	$conn = mysqli_connect('localhost', 'root', '', 'forproject'); 
	$stmt = $conn->prepare("DELETE genderid,forinfo,forclothes FROM genderid,forclothes,forinfo where genderid.id=? and genderid.ID=forinfo.ID and genderid.ID=forclothes.ID");
	$stmt->bind_param("i", $ID);
	$stmt->execute();
	$stmt->close();
	$conn->close();
	header("Location: /Palazzo/Admin/admin.php");
?>