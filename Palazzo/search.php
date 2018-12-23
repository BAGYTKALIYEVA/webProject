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
                if(isset($_GET['search'])&&strlen($_GET['search'])>=3){
                    $value= $_GET['search'];
                    echo "<h3>Result for search: ".$value."</h3>";
                    $conn = mysqli_connect('localhost', 'root', '', 'forproject'); 
                    $sql = "SELECT * FROM forclothes"; 
                    $result = mysqli_query($conn, $sql); 
                    while($row = mysqli_fetch_assoc($result)) {
                            $Price = $row['Price']; 
                            $image = $row["Photo"]; 
                            $About = $row['Type']; 
                            $ID=$row["ID"];
                            if($value!='' && strpos(strtolower($About),strtolower($value)) !== false){
                                echo "
                                <div class=\"suit\"> 
                                    <p>$About</p> 
                                    <img id=\"image\" src=".$image."> 
                                    <form action=\"element.php\" method=\"get\"> 
                                        <input type=\"hidden\" name=\"ID\" value=".$ID."> 
                                        <input type=\"submit\"  value=".$Price."> 
                                    </form> 
                                </div>";  }
                    }  
				    mysqli_close($conn);
                } 

            ?>
        </div> 
	</body> 
</html>