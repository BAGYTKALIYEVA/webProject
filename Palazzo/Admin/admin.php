<html>
	<head>
		<title>Одежда</title>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="/Palazzo/CSS/admin.css">
	</head>
	<body background="back.jpg" class = "telo">
		<div class = "header">
			<a>PALAZZO</a>
			<a href="/Palazzo/site1.php" style="padding-left:60px;padding-right:60px;">ГЛАВНАЯ</a>
			<a href="/Palazzo/man.php" style="padding-left:60px;padding-right:60px;">МУЖСКОЙ ОТДЕЛ</a>
			<a href="/Palazzo/woman.php" style="padding-left:60px;padding-right:60px;">ЖЕНСКИЙ ОТДЕЛ</a>
			<a href="/Palazzo/Admin/admin.php" style ="padding-left:60px;padding-right:60px;">АДМИН</a>
			<div class="search-container">
    			<form action="search.php">
      				<input type="text" class="Search" placeholder="Search.." name="search">
      				<button type="submit" class="Search" >Search</button>
    			</form>
  			</div>
		</div>
		<?php
			if(!isset($_COOKIE['Username']) && !isset($_COOKIE['Password'])) {
				echo 
					'
					<div class="login">
						<form action="login.php" method="POST"> 
					    <input type="text" placeholder="Username" id="username" name="Username">  
						<input type="password" name="Password" placeholder="password" id="password">  
						<input type="submit" id="submit" value="Enter"> 
					</form>
					</div>'
					;
			}
			elseif($_COOKIE['Username']!=null &&$_COOKIE['Password']!=null) {
				header("Location: login.php");
			} 
		?>
	</body>

</html>