<?php
session_start(); // Asegura que la sesión esté activa

// Verifica si no estás en login.php y si la sesión no está registrada
if ($_SERVER['PHP_SELF'] != "/login.php" && !isset($_SESSION['login'])) {
    session_unset(); // Limpia las variables de sesión
    session_destroy(); // Destruye la sesión
    header("Location:login.php"); // Redirige al login
    exit; // Detiene la ejecución del script
} else {
    echo "Aquí esta tu página"; // Muestra el contenido de la página
}
?>
<br><a href="login.php">SALIR</a>
