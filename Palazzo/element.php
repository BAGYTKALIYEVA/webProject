<head> 
	<title>Одежда</title> 
	<meta charset="UTF-8"> 
	<link rel="stylesheet" href="/Palazzo/CSS/elementstyle.css"> 
</head> 
<body background="back.jpg" class = "telo">
		<div class = "header">	
			<a>PALAZZO</a>
			<a href="site1.php" style="padding-left:60px;padding-right:60px;">ГЛАВНАЯ</a>
			<a href="man.php" style="padding-left:60px;padding-right:60px;">МУЖСКОЙ ОТДЕЛ</a>
			<a href="woman.php" style="padding-left:60px;padding-right:60px;">ЖЕНСКИЙ ОТДЕЛ</a>
			<a href="/Palazzo/Admin/admin.php" style ="padding-left:60px;padding-right:60px;">АДМИН</a>
		</div>
	<div class ="main">
		<?php
			$json_data = file_get_contents('info.json'); 
			$json=json_decode($json_data,true); 
		    if (empty($_POST['ID'])) {
		        $id = $_GET['ID'];
		    }		
		    else{
				$id = $_POST['ID'];
			}
			foreach($json as $row){ 
				if($row["ID"]==$id){
						$img1=$row["Image1"];
						$img2=$row["Image2"];
						$img3=$row["Image3"];
						echo 
							'<div class = "carousel">
								<img id="c1" src='.$img1.'>
								<div class="niz">
									<img id="cc1" onclick=clickMe("'.$img1.'") src="'.$img1.'"/>
									<img id="cc1" onclick=clickMe("'.$img2.'") src="'.$img2.'"/>
									<img id="cc1" onclick=clickMe("'.$img3.'") src="'.$img3.'"/>
								</div>
								<script>
									function clickMe(image){
										document.getElementById("c1").src=image;
									}	
								</script>
							</div>	
							<div class="i">
								<p class="about"><strong>О ТОВАРЕ</p></strong>
								<p class="ab">'.$row["Information"].'</p>
								<p class="name"><strong>Состав:</strong><span> '.$row["Sostav"].'</span></p>
								<p class="name"><strong>Страна:</strong><span> '.$row["Country"].'</span></p>
								<p class="name"><strong>Размер:</strong><span> '.$row["Size"].'</span></p>
								<p class="name"><strong>Цена:</strong><span> '.$row["Price"].'$</span></p>
							</div>
						</div>';
					}
			}
		?>

</body> 
</html>