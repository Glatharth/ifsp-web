<?php
include ('Conexao.php');
$username = $_POST['username'];
$email = $_POST['email'];
$password = $_POST['password'];

$sql="insert into users (username, email, password) values (:username,:email, MD5(:password))";

$con = new Conexao();
$con = $con->getConexao();


$resultado= $con->prepare ($sql);

$resultado-> bindParam(':username',$username);
$resultado-> bindParam(':email',$email);
$resultado-> bindParam(':password',$password);
$resultado -> execute();

header("location:../index.php");
?>
