<html>
	<head>
		<title>Одежда</title>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="/Palazzo/CSS/add.css"> 
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
		</div>
		<?php
			$id=null;
			if(empty($_GET['ID'])) {
		    	header("Location: /Palazzo/Admin/admin.php");
		    }	
			else{
				$id = $_GET['ID'];
			}
			$conn = mysqli_connect('localhost', 'root', '', 'forproject'); 
			$sql = "SELECT * FROM forclothes JOIN genderid ON forclothes.ID=genderid.ID JOIN forinfo on forclothes.ID=forinfo.ID where forinfo.ID=$id";
			$result = mysqli_query($conn, $sql); 
				while($row = mysqli_fetch_assoc($result)) {
						print 
						'<div class="container">  
						<form id="contact" action="forUpdate.php" method="post">
							<h3>Update information</h3>
							<h4>Enter your variables to update</h4>
							<fieldset>
								<p>Type</p>
								<input placeholder='.$row['Type'].' name="Type"  type="text" tabindex="1" required autofocus>
							</fieldset>
							<fieldset>
								<p>Headline</p>
								<input placeholder='.$row['Opisanie'].' name="Zagolovok" type="text" tabindex="2" required >
							</fieldset>
							<fieldset>
								<p>Price</p>
								<input placeholder='.$row['Price'].'  name="Price" type="number" tabindex="3" required>
								<p>Size</p>
								<input placeholder='.$row['Size'].' name="Size" type="number" tabindex="5" required>
							</fieldset>
							<fieldset>
								<p>Information</p>
								<textarea  name="About" form="contact" tabindex="6" required placeholder='.$row['Information'].'></textarea>
							</fieldset>
							<fieldset>
							<p>First image</p>
								<input placeholder='.$row['Photo'].' name="Photo1" type="text" tabindex="7" required >
							</fieldset>
							<fieldset>
							<p>Second image</p>
								<input placeholder='.$row['Image2'].' name="Photo2" type="text" tabindex="8" required >
							</fieldset>
							<fieldset>
							<p>Third image</p>
								<input placeholder='.$row['Image3'].' name="Photo3" type="text" tabindex="9" required >
							</fieldset>
							<fieldset>
							<p>Country</p>
								<input placeholder='.$row['Country'].' name="Country" type="text" tabindex="10" required >
							</fieldset>
							<fieldset>
								<p>Composition</p>
								<input placeholder='.$row['Sostav'].' name="Sostav" type="text" tabindex="11" required >
								<input type="hidden" value='.$row['ID'].' name="OldID">
							</fieldset>
							<fieldset>
								<p>Gender</p>
									<select name="Gender" id="Gender"   required> 
											<option selected disabled hidden></option> 
											<option value="Man">Man</option> 
											<option value="Woman">Woman</option> 
									</select> 			  
								</fieldset>
							<fieldset>
								<button name="submit" type="submit" id="contact-submit" data-submit="...Sending">Submit</button>
							</fieldset>
							</form>
					  </div>';
				}
			mysqli_close($conn); 
		?>
		
	</body>
</html>