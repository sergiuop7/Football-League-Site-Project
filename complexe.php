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
<h2>Interogari complexe</h2>
<?php
echo 'Afisati jucatorii echipei gazda din meciul Manchester City - FC Liverpool<br><br>';
$query = "SELECT J.Nume,J.Prenume FROM jucatori J,echipe E WHERE J.ID_echipa = E.ID_echipa AND E.ID_echipa IN 
          (SELECT EC.ID_echipa FROM meci M , echipe EC WHERE EC.ID_echipa = M.ID_echipa_gazda AND M.ID_echipa_gazda = 1 )";
$rezultat = mysqli_query($_SESSION['con'], $query);
while ($row = mysqli_fetch_assoc($rezultat)){
echo $row['Nume'].' '.$row['Prenume'].'<br>';
      }
	  
	  
echo '<br><br>Afisati numele sponsorilor de pe tricoul jucatorului Ederson Junior<br><br>';
$query = "SELECT S.Nume_sponsor FROM sponsori S,echipe E WHERE S.ID_echipa = E.ID_echipa AND E.ID_echipa IN 
          (SELECT EC.ID_echipa FROM jucatori J , echipe EC WHERE EC.ID_echipa = J.ID_echipa AND J.ID_jucator = 1000 )";
$rezultat = mysqli_query($_SESSION['con'], $query);
while ($row = mysqli_fetch_assoc($rezultat)){
echo $row['Nume_sponsor'].'<br>';
      }
	  
echo '<br><br>Afisati ce jucatori sponsorizeaza Castrol<br><br>';
$query = "SELECT J.Nume,J.Prenume FROM jucatori J,echipe E WHERE J.ID_echipa = E.ID_echipa AND E.ID_sponsor = 
          (SELECT EC.ID_sponsor FROM sponsori S , echipe EC WHERE EC.ID_sponsor = S.ID_sponsor AND S.ID_sponsor = 55 )";
$rezultat = mysqli_query($_SESSION['con'], $query);
while ($row = mysqli_fetch_assoc($rezultat)){
echo $row['Nume'].' '.$row['Prenume'].'<br>';
      }
	  
echo '<br><br>Afisati antrenorii jucatorului Zackary Steffen<br><br>';
$query = "SELECT A.Nume,A.Prenume,A.Functie FROM antrenori A,echipe E WHERE A.ID_echipa = E.ID_echipa AND E.ID_echipa IN 
          (SELECT EC.ID_echipa FROM jucatori J , echipe EC WHERE EC.ID_echipa = J.ID_echipa AND J.ID_jucator = 1001 )";
$rezultat = mysqli_query($_SESSION['con'], $query);
while ($row = mysqli_fetch_assoc($rezultat)){
echo 'Nume: <b>'.$row['Nume'].' '.$row['Prenume'].'</b>; Functie: <b>'.$row['Functie'].'</b><br>';
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
