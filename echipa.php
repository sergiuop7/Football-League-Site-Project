<?php
$con = mysqli_connect("localhost", "root", "", "fotbal");
$_SESSION['con'] = $con;
// Check connection
if (mysqli_connect_errno())
{
	echo "Eroare de conectare la baza de date MySQL. Asigurati-va ca ati instalat corect baza de date: " . mysqli_connect_error();
}

$id = $_GET['id'];
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
        	<li><span class="menu_r"><a href="contact.php"><span class="menu_ar">Contact</span></a></span></li>
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
<h2>DETALII ECHIPA</h2>
<?php
$query = "SELECT J.Nume,J.Prenume,J.Pozitie,E.Nume_echipa,E.Oras,E.Meciuri_jucate,E.Victorii,E.Egaluri,E.Infrangeri,E.Golaveraj, E.Nr_puncte 
          FROM echipe E,jucatori J WHERE  E.ID_echipa = J.ID_echipa AND E.ID_echipa = ".$id;
$rezultat = mysqli_query($_SESSION['con'], $query);
$row = mysqli_fetch_assoc($rezultat);
echo 'Nume echipa: '.$row['Nume_echipa'].'<br>';
echo 'Oras: '.$row['Oras'].'<br>';
echo 'Meciuri jucate: '.$row['Meciuri_jucate'].'<br>';
echo 'Victorii: '.$row['Victorii'].'<br>';
echo 'Egaluri: '.$row['Egaluri'].'<br>';
echo 'Infrangeri: '.$row['Infrangeri'].'<br>';
echo 'Nr. puncte: '.$row['Nr_puncte'].'<br>';
echo 'Golaveraj: '.$row['Golaveraj'].'<br>';
 echo '<h2>Jucatori</h2>';
while ($row = mysqli_fetch_assoc($rezultat)){
	
echo $row['Nume'].' '.$row['Prenume'].' - '.$row['Pozitie'].'<br>';

	 	 	 	 	 	 	
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
	<div id="copyright"> </div>

	</div>


</div></div>

</body>
</html>
