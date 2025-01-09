<?php
if (isset($_POST['nombre']) && isset($_POST['password']) && $_POST['nombre'] == "usuario" && $_POST['password'] == "password") {
    // Si es correcto el usuario, redirige
    session_start();
    $_SESSION['login'] = true; // Usa $_SESSION en lugar de session_register
    header("Location: index.php");
    exit; // Detiene la ejecución
} else {
    if (!function_exists('standardheader')) {
        function standardheader($title) {
            echo "<h1>{$title}</h1>";
        }
    }
    if (!function_exists('block_begin')) {
        function block_begin($message) {
            echo "<p>{$message}</p>";
        }
    }
    standardheader('Login');
    block_begin("Logging");
}
?>
<table border="0">
<tr>
<td align="center" valign="top">
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td align="center">
<b>- Login Agenda -</b>
</td>
</tr>
</table>
<br />
<FORM name="log" id="log" method="post" action="./login.php">
<table>
<tr>
<td>
Nombre:
</td>
<td>
<INPUT TYPE="text" NAME="nombre" value="<?php echo htmlspecialchars($_POST['nombre'] ?? '', ENT_QUOTES, 'UTF-8'); ?>">
</td>
</tr>
<tr>
<td>
Contraseña:
</td>
<td>
<INPUT TYPE="password" NAME="password">
</td>
</tr>
</table>
<br />
<table>
<tr>
<td colspan="2" align="center">
<b>Por favor, introduce tu nombre de usuario y contraseña.</b>
</td>
</tr>
<tr>
<td colspan="2" align="center">
<br><center><INPUT type="submit" value="Hacer Logging" name="btnlog"/></center>
</td>
</tr>
</table>
</form>
</td>
</tr>
</table>
