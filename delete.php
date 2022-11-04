<?php
$con = mysqli_connect("localhost", "root", "", "fotbal");
$_SESSION['con'] = $con;
// Check connection
if (mysqli_connect_errno())
{
	echo "Eroare de conectare la baza de date MySQL. Asigurati-va ca ati instalat corect baza de date: " . mysqli_connect_error();
}
?>

<html>
<head>
<title>Detalii</title>
<link rel="stylesheet" href="stil.css?v=<?php echo time(); ?>">
<script type="text/javascript" src="script.js" language="javascript"></script>
</head>

<body>
<div align="center"><div class="container">

<div class="title">
<div class="nume">

</div>
</div>
<div class="menu bubplastic horizontal red">
	<ul>
		<li><span class="menu_r"><a href="index.php"><span class="menu_ar">Home</span></a></span></li>
		<li><span class="menu_r"><a href="insert.php"><span class="menu_ar">Inserare jucator</span></a></span></li>
		<li><span class="menu_r"><a href="update.php"><span class="menu_ar">Modifica jucator</span></a></span></li>
		<li class="highlight"><span class="menu_r"><a href="delete.php"><span class="menu_ar">Sterge jucator</span></a></span></li>
        	<li><span class="menu_r"><a href="contact.php"><span class="menu_ar">Contact</span></a></span></li>
		<li><span class="menu_r"><a href="account.php"><span class="menu_ar">Account</span></a></span></li>
	</ul>
	<br class="clearit" />
</div>
	<div id="content-r"></div>
	<div id="content-l">
	<div class="padding">

<img src="images/delete.jpg" style="float: right; margin-right: 15px;">

<table><tr><td valign="top">
<h2>Stergere jucator</h2>
<?php
if(isset($_GET['action']) && $_GET['action'] == "delete"){
	 $sql="DELETE FROM `jucatori` WHERE `jucatori`.`ID_jucator` = '".$_POST['juc']."' LIMIT 1";
 $result = mysqli_query($_SESSION['con'], $sql);
	echo 'Jucatorul cu id-ul '.$_POST['juc'].' a fost sters din baza de date !';
}
else{
?>
<form action="delete.php?action=delete" method="post">
<select name="juc">
<?php
$query = "SELECT * from jucatori";
$rez = mysqli_query($_SESSION['con'], $query);
while ($row = mysqli_fetch_assoc($rez)){
echo '<option value="'.$row['ID_jucator'].'">'.$row['Nume'].' '.$row['Prenume'].'</option>';
	}
?>
</select>
<button input type="submit" value="Sterge" name="action">Sterge</button>
</form>
<?php
}
?>
</td></tr></table>

</div>
</div>
	<div id="footer">
	<div id="navigare">
		<a href="index.php">Home</a> |
        <a href="insert.php">Insert</a> |
        <a href="update.php">Update</a> |
        <a href="delete.php">Delete</a> |
        <a href="contact.php">Contact</a> 
	</div>
	<div id="copyright"></div>

	</div>


</div></div>

</body>
</html>
