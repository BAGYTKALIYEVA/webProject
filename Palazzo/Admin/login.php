<?php
	$servername = "127.0.0.1"; 
	$username = "root"; 	
	$password = ""; 
	$dbname = "forproject"; 
	$connection = mysqli_connect($servername, $username, $password, $dbname); 
	$ifPassed=false;
	$User ='';
	$Pass =''; 
	if(isset($_COOKIE["Username"]) && isset($_COOKIE["Password"])) {
		$ifPassed=true;
		$User=$_COOKIE["Username"];
		$Pass=$_COOKIE["Password"];
	}elseif((isset($_POST["Username"]) && isset($_POST["Password"]))){
		$User =$_POST['Username'];
		$Pass =$_POST['Password']; 
		$sql = "SELECT * FROM users";
		$result = mysqli_query($connection, $sql); 
		while ($row = mysqli_fetch_assoc($result)) {
			if($User==$row['Username'] &&$Pass==$row['Password']){
				$ifPassed=true;
				$cookie_name = "Username";
				$cookie_password = "Password";
				setcookie($cookie_name, $User, time() + (86400 * 30), "/"); // 86400 = 1 day
				setcookie($cookie_password,$Pass, time() + (86400 * 30), "/"); // 86400 = 1 day
			}
		}
		if(!$ifPassed){
			header("Location: /Palazzo/Admin/admin.php");
		}
	}

?>
<html>
	<head>
		<title>Одежда</title>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="/Palazzo/CSS/login.css">
	</head>
	<body class = "telo">
		<div class = "header">
			<a>PALAZZO</a>
			<a href="/Palazzo/site1.php" style="padding-left:60px;padding-right:60px;">ГЛАВНАЯ</a>
			<a href="/Palazzo/man.php" style="padding-left:60px;padding-right:60px;">МУЖСКОЙ ОТДЕЛ</a>
			<a href="/Palazzo/woman.php" style="padding-left:60px;padding-right:60px;">ЖЕНСКИЙ ОТДЕЛ</a>
			<a href="/Palazzo/Admin/admin.php" style ="padding-left:60px;padding-right:60px;">АДМИН</a>
			<div class="search-container">
    			<form action="search.php">
      				<input type="text" placeholder="Search.." name="search">
      				<button type="submit">Search</button>
    			</form>
			</div>
			<form action="add.html">
				<input type="submit" id="deleteCookie" value="Add" />
			</form>
			<form method="POST">
				<input type="submit" name="deleteCookie" id="deleteCookie" value="Sign out">
			</form>
		</div>
		<style>

		</style>
		<div class ="main"> 	
				<table>
				<tbody>
                    <tr>
						<td>ID</td>
						<td>Image</td>
                      	<td>Price</td>
                      	<td>Headline</td>
                      	<td>Type</td>
                      	<td>Actions</td>
                    </tr>	
		<?php
			if(isset($_POST["deleteCookie"])){
				deleteCookie();
			}
			if($ifPassed){
				show();
			}
			else{
				header("Location: /Palazzo/Admin/admin.php");
			} 
			$file='data.json'; 
			file_put_contents($file,get_data()); 
			$info='info.json'; 
			file_put_contents($info,set_data());  
			function show(){ 
				$conn = mysqli_connect('localhost', 'root', '', 'forproject'); 
				$sql = "SELECT * FROM forclothes"; 
				$result = mysqli_query($conn, $sql); 
				while($row = mysqli_fetch_assoc($result)) {
					echo '<tr>';
						echo '<td>'. $row['ID'] . '</td>';
						echo '<td class="IMG"><img src='. $row['Photo'] . '></td>';
						echo '<td>'. $row['Price'] . '</td>';
						echo '<td>'. $row['Opisanie'] . '</td>';
						echo '<td>'. $row['Type'] . '</td>';
						echo '<td><a class="btn" href="/Palazzo/element.php?ID='.$row['ID'].'">READ</a> <br><a class="btn" href="update.php?ID='.$row['ID'].'">UPDATE</a> <br> <a class="btn" href="delete.php?ID='.$row['ID'].'">DELETE</a></td>';
					echo '</tr>';
				}
				mysqli_close($conn);
			}
			function deleteCookie(){
				setcookie('Username', null, -1, '/');
				setcookie('Password', null, -1, '/');
				header("Location: /Palazzo/Admin/admin.php");
			}
			function get_data(){ 
				$conn = mysqli_connect('localhost', 'root', '', 'forproject'); 
				$sql = "SELECT * FROM forclothes JOIN genderid ON forclothes.ID=genderid.ID"; 
				$result = mysqli_query($conn, $sql); 
				$data=array(); 
				while($row = mysqli_fetch_assoc($result)) { 
					$data[]=array( 
						"ID"=>$row["ID"], 
						"Image"=>$row["Photo"], 
						"Price"=>$row["Price"], 
						"Opisanie"=>$row["Opisanie"],
						"Gender"=>$row["Gender"]
						); 

					} 
				mysqli_close($conn); 
				return json_encode($data,JSON_UNESCAPED_UNICODE); 
			} 
			function set_data(){ 
				$conn = mysqli_connect('localhost', 'root', '', 'forproject'); 
				$sql = "SELECT * FROM forclothes JOIN forinfo ON forclothes.ID=forinfo.ID"; 
				$result = mysqli_query($conn, $sql); 
				$data=array(); 
				while($row = mysqli_fetch_assoc($result)) { 
					$data[]=array( 
						"ID"=>$row["ID"], 
						"Image1"=>$row["Photo"], 
						"Image2"=>$row["Image2"],
						"Image3"=>$row["Image3"],
						"Price"=>$row["Price"],
						"Sostav"=>$row["Sostav"], 
						"Country"=>$row["Country"],
						"Size"=>$row["Size"],
						"Information"=>$row["Information"],
						); 
				} 
				mysqli_close($conn); 
				return json_encode($data,JSON_UNESCAPED_UNICODE); 
			}
			?>
			 </tbody>
			</table>
		</div>
	</body>
			
</html>