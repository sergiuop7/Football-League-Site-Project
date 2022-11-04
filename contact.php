<?php
$con = mysqli_connect("localhost", "root", "", "fotbal");
$_SESSION['con'] = $con;
// Check connection
if (mysqli_connect_errno())
{
	echo "Eroare de conectare la baza de date MySQL. Asigurati-va ca ati instalat corect baza de date: " . mysqli_connect_error();
}

if (isset($_GET['id'])) {
	$id = $_GET['id'];
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
		<li><span class="menu_r"><a href="delete.php"><span class="menu_ar">Sterge jucator</span></a></span></li>
        	<li class="highlight"><span class="menu_r"><a href="contact.php"><span class="menu_ar">Contact</span></a></span></li>
		<li><span class="menu_r"><a href="account.php"><span class="menu_ar">Account</span></a></span></li>
	</ul>
	<br class="clearit" />
</div>
	<div id="content-r"></div>
	<div id="content-l">
	<div class="padding">

<table><tr><td valign="top">
<h2>ECHIPE</h2>
<?php
$query = "SELECT ID_echipa ,Nume_echipa FROM echipe ";
$rezultat = mysqli_query($_SESSION['con'], $query);
while ($row = mysqli_fetch_assoc($rezultat)){
echo '<a href="echipa.php?id='.$row['ID_echipa'].'" >'.$row['Nume_echipa'].'</a><br>';
      }
?>
</td>
<td valign="top" style="padding-left:30px;">
<h2>DETALII AUTOR</h2><br><br><br>
<h2>Oprea Sergiu-Daniel</h2>
<h2>UTCN - Automatica si Calculatoare</h2>
<h2>Grupa 30322</h2>
<a href="complexe.php">Interogari complexe</a>
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
