<?php 
// iniciando uma sessão
session_start();
global $pdo;
// Conexão com o banco de dados Classifiados
try {
	$pdo = new PDO("mysql:dbname=classificados;host=localhost", "root", "");
} catch (PDOException $e) {
	echo "FALHOU: ".$e->getMessage();
	exit;
}
?>