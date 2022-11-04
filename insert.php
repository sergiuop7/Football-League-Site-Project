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
		<li class="highlight"><span class="menu_r"><a href="insert.php"><span class="menu_ar">Inserare jucator</span></a></span></li>
		<li><span class="menu_r"><a href="update.php"><span class="menu_ar">Modifica jucator</span></a></span></li>
		<li><span class="menu_r"><a href="delete.php"><span class="menu_ar">Sterge jucator</span></a></span></li>
        	<li><span class="menu_r"><a href="contact.php"><span class="menu_ar">Contact</span></a></span></li>
		<li><span class="menu_r"><a href="account.php"><span class="menu_ar">Account</span></a></span></li>
	</ul>
	<br class="clearit" />
</div>
	<div id="content-r"></div>
	<div id="content-l">
	<div class="padding">

<img src="images/insert.jpg" style="float: right; margin-right: 15px;">

<table><tr><td valign="top">
<h2>Jucator nou</h2>
<?php
if(isset($_GET['action']) && $_GET['action'] == "insert"){
	 $sql="INSERT INTO jucatori ( ID_jucator ,ID_echipa ,Nume ,Prenume ,Data_nasterii ,Nationalitate ,Pozitie) VALUES ('','".$_POST['ech']."','".$_POST['nm']."','".$_POST['pr']."','".$_POST['data']."','".$_POST['nat']."','".$_POST['poz']."')";
    mysqli_query($_SESSION['con'], $sql);
	echo 'Jucatorul '.$_POST['nm'].' '.$_POST['pr'].' a fost adaugat in baza de date !';
}
else{
?>
<form action="insert.php?action=insert" method="post">
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
<tr><td>Nume</td><td><input type="text" name="nm"></td></tr>
<tr><td>Prenume</td><td><input type="text" name="pr"></td></tr>
<tr><td>Data nastere</td><td><input type="text" name="data"> aaaa-ll-zz</td></tr>
<tr><td>Nationalitate</td><td><input type="text" name="nat"></td></tr>
<tr><td>Pozitie</td><td><input type="text" name="poz"></td></tr>
</table>
<br><button input type="submit" value="Creeaza" name="action">Creeaza</button>
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
