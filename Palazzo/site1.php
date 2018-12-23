<html>
	<head>
		<title>Одежда</title>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="/Palazzo/CSS/stylesheet.css">
	</head>
	<div class = "header">
		<a>PALAZZO</a>
		<a href="site1.php" style="padding-left:60px;padding-right:60px;">ГЛАВНАЯ</a>
		<a href="man.php" style="padding-left:60px;padding-right:60px;">МУЖСКОЙ ОТДЕЛ</a>
		<a href="woman.php" style="padding-left:60px;padding-right:60px;">ЖЕНСКИЙ ОТДЕЛ</a>
		<a href="/Palazzo/Admin/admin.php" style ="padding-left:60px;padding-right:60px;">АДМИН</a>
		<div class="search-container">
    		<form action="search.php">
    			<input type="text" placeholder="Search.." name="search">
    			<button type="submit">Search</button>
    		</form>
  		</div>
	</div>
	<body  class = "telo">
		<div class = "Pmodel1">
			<div class = "Pblock1">
				<img class="man" src="Images/man1.jpg">
				<img class="man" src="Images/man2.jpg">
				<img class="man" src="Images/man3.jpg">
			</div>
			<div class = "Pblock2">
				<h1>СИЛА И СВОБОДА</h1>
				<h2>ГОТОВЬТЕСЬ К ЛЕТУ</h2>
				<h1>______</h1>
				<a href="man.php" id = "manO"><h2>В мужской отдел</h2></a>
			</div>
		</div>
		<div class = "Pmodel1">
			<div class = "Pblock2" style="background-color: #fee8e2;">
				<h1 style="color: black;">УМ И СОБЛАЗН</h1>
				<h2 style="color: black;">ВЕСЕННЯЯ КОЛЛЕКЦИЯ</h2>
				<h1 style="color: black;">______</h1>
				<a href="woman.php" style="color: black;" id = "manO"><h2>В женский отдел</h2></a>
			</div>
			<div class = "Pblock1" >
				<img class="woman" src="Images/woman1.jpg">
				<img class="woman" src="Images/woman2.jpg">
				<img class="woman" src="Images/woman3.jpg">
			</div>
		</div>
			<h2 id = "newPos">НОВЫЕ ПОСТУПЛЕНИЯ</h2>
			<div class="fornew">
				<?php
					$json_data = file_get_contents('data.json');
					$json = json_decode($json_data, true);
					$size = 0;
					foreach ($json as $row) {$size++;}
					$i = 0;
					foreach ($json as $row) {
						if ($size - $i <= 3) {
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
						$i++;
					}
				?>
			</div>
	</body>
</html>
<script>
var slideIndex = 1;

var slideIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("man");
    var y = document.getElementsByClassName("woman");

    for (i = 0; i < x.length; i++) {
      x[i].style.display = "none"; 
      y[i].style.display = "none"; 
	  
    }
    slideIndex++;
    if (slideIndex > x.length) {slideIndex = 1} 
    x[slideIndex-1].style.display = "block";
    y[slideIndex-1].style.display = "block"; 
    setTimeout(carousel,1500); // Change image every 2 seconds
}
</script>