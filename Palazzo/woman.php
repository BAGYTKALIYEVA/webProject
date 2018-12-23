<!DOCTYPE html>
<html>
	<head> 
		<title>Одежда</title> 
		<meta charset="UTF-8"> 
		<link rel="stylesheet" href="/Palazzo/CSS/stylesheet.css"> 
		<script type="forelement.js" defer></script> 
	</head> 
	<body background="back.jpg" class = "telo">
		<div class = "header"> 
			<a>PALAZZO</a> 
			<a href="site1.php" style="padding-left:60px;padding-right:60px;">ГЛАВНАЯ</a> 
			<a href="man.php" style="padding-left:60px;padding-right:60px;">МУЖСКОЙ ОТДЕЛ</a> 
			<a href="woman.php" style="padding-left:60px;padding-right:60px;">ЖЕНСКИЙ ОТДЕЛ</a> 
			<a href="/Palazzo/Admin/admin.php" style="padding-left:60px;padding-right:60px;">АДМИН</a> 
			<div class="search-container">
    			<form action="search.php">
      				<input type="text" placeholder="Search.." name="search">
      				<button type="submit">Search</button>
    			</form>
  			</div>
		</div> 
		<div class ="main"> 	
		<?php 
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
			function show(){ 
				$json_data = file_get_contents('data.json'); 
				$json=json_decode($json_data,true); 
				$i=0;
				foreach($json as $row){ 
					if($row["Gender"]=="Woman"){ 
						$Price = $row['Price']; 
						$image = $row["Image"]; 
						$About = $row['Opisanie']; 
						$ID=$row["ID"];
							print "
							<div class=\"suit\"> 
								<p>$About</p>
								<img id=\"image\" src=".$image."> 
								<form action=\"element.php\" method=\"post\"> 
									<input type=\"hidden\" name=\"ID\" value=".$ID."> 
									<input type=\"submit\"  value=".$Price."> 
								</form> 
							</div>"; 
					}
				} 
			} 
			$file='data.json'; 
			file_put_contents($file,get_data()); 
			$info='info.json'; 
			file_put_contents($info,set_data());
			show(); 
			?> 
		</div> 
	</body> 
</html>