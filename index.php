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
<title>Premier League - Campionatul Angliei</title>
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
		<li class="highlight"><span class="menu_r"><a href="index.php"><span class="menu_ar">Home</span></a></span></li>
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

<center><a href="https://www.premierleague.com/"><font size="+4">Premier League Official Site</font></a></center>

<table><tr><td valign="top">
<h2>CLASAMENT ECHIPE</h2>
<?php
$query = "SELECT ID_echipa ,Nume_echipa FROM echipe ";
$rezultat = mysqli_query($_SESSION['con'], $query);
while ($row = mysqli_fetch_assoc($rezultat)){
echo '<a href="echipa.php?id='.$row['ID_echipa'].'" >'.$row['Nume_echipa'].'</a><br>';
      }
?>
</td>
<td valign="top" style="padding-left:30px;">
<h2>ULTIMELE MECIURI</h2>
<?php
$query = "SELECT ID_echipa_gazda ,ID_echipa_oaspete,Rezultat FROM meci ";
$rezultat = mysqli_query($_SESSION['con'], $query);
while ($row = mysqli_fetch_assoc($rezultat)){
	$query1 = "SELECT Nume_echipa FROM echipe WHERE ID_echipa =".$row['ID_echipa_gazda']; 
	$rez1 = mysqli_query($_SESSION['con'], $query1);$r1 = mysqli_fetch_assoc($rez1); 
	$query2 = "SELECT Nume_echipa FROM echipe WHERE ID_echipa =".$row['ID_echipa_oaspete'];
	$rez2 = mysqli_query($_SESSION['con'], $query2);$r2 = mysqli_fetch_assoc($rez2); 
	
echo $r1['Nume_echipa'].' - '.$r2['Nume_echipa'].' ('.$row['Rezultat'].')<br>';
      }
?>
</td>
<td style="padding-left:100px;">
<h2>SPONSORI</h2>
<?php
$query = "SELECT Nume_sponsor ,Capital FROM sponsori ";
$rezultat = mysqli_query($_SESSION['con'], $query);
while ($row = mysqli_fetch_assoc($rezultat)){
echo ''.$row['Nume_sponsor'].' - '.$row['Capital'].' EUR<br>';
      }
?>
</td></tr></table>

<img src="images/index1.jpg">
<img src="images/index2.jpg" style="float: right; margin-right: 15px;">

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
