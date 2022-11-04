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
		<li class="highlight"><span class="menu_r"><a href="update.php"><span class="menu_ar">Modifica jucator</span></a></span></li>
		<li><span class="menu_r"><a href="delete.php"><span class="menu_ar">Sterge jucator</span></a></span></li>
        	<li><span class="menu_r"><a href="contact.php"><span class="menu_ar">Contact</span></a></span></li>
		<li><span class="menu_r"><a href="account.php"><span class="menu_ar">Account</span></a></span></li>
	</ul>
	<br class="clearit" />
</div>
	<div id="content-r"></div>
	<div id="content-l">
	<div class="padding">

<table><tr><td valign="top">
<h2>Update Jucator</h2>
<?php
if(isset($_GET['action']) && $_GET['action'] == "update"){
 $sql="UPDATE `fotbal`.`jucatori` SET `Nume` = '".$_POST['nm']."', `Prenume` = '".$_POST['pr']."', `Data_nasterii` = '".$_POST['data']."', 
 `Nationalitate` = '".$_POST['nat']."', `Pozitie` = '".$_POST['poz']."'
               WHERE `jucatori`.`ID_jucator` =".$_POST['id']." LIMIT 1 ";
    mysqli_query($_SESSION['con'], $sql);
	echo 'Jucatorul '.$_POST['nm'].' '.$_POST['pr'].' a fost modificat in baza de date !';
}
else
if(isset($_GET['action']) && $_GET['action'] == "juc"){
$query = "SELECT * from jucatori WHERE ID_jucator = ".$_POST['juc'];
$rez = mysqli_query($_SESSION['con'], $query);
$r = mysqli_fetch_assoc($rez);
?>
<form action="update.php?action=update" method="post">
<table>
<tr><td>Echipa</td><td>
<select name="ech">
<?php
$query = "SELECT * from echipe";
$rez = mysqli_query($_SESSION['con'], $query);
while ($row = mysqli_fetch_assoc($rez)){
echo '<option value="'.$row['ID_echipa'].'">'.$row['Nume_echipa'].'</option>';
	}
?>
</select>
</td></tr>
<tr><td>Nume</td><td><input type="text" name="nm" value="<?php echo $r['Nume']; ?>" ></td></tr>
<tr><td>Prenume</td><td><input type="text" name="pr" value="<?php echo $r['Prenume']; ?>" ></td></tr>
<tr><td>Data nastere</td><td><input type="text" name="data" value="<?php echo $r['Data_nasterii']; ?>" > aaaa-ll-zz</td></tr>
<tr><td>Nationalitate</td><td><input type="text" name="nat" value="<?php echo $r['Nationalitate']; ?>" ></td></tr>
<tr><td>Pozitie</td><td><input type="text" name="poz" value="<?php echo $r['Pozitie']; ?>" ></td></tr>
</table>
<input type="hidden" name="id" value="<?php echo $_POST['juc']; ?>" >
<br><button input type="submit" value="Modifica" name="action">Modifica</button>
</form>
<?php
}
else{
?>
<form action="update.php?action=juc" method="post">
<select name="juc">
<?php
$query = "SELECT * from jucatori";
$rez = mysqli_query($_SESSION['con'], $query);
while ($row = mysqli_fetch_assoc($rez)){
echo '<option value="'.$row['ID_jucator'].'">'.$row['Nume'].' '.$row['Prenume'].'</option>';
	}
?>
</select>
<button input type="submit" value="Selecteaza" name="action">Selecteaza</button>
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
