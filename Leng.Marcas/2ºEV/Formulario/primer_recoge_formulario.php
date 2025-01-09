<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>


<?php
//Metodo para validar que se hayan introducido datos en la variable
if(isset($_POST["nombre"])){
    $nombre = $_POST["nombre"];
}

//Otro metodo para validar que se hayan introducido datos en la variable
if(!empty($_POST["nombre"])){
    $nombre = $_POST["nombre"];
}



$pass= $_POST["contrasena"];
$seleccion=$_POST["trabajos"];
$textolargo=$_POST["area"];

$palabras = explode(" ",$textolargo); //split = explode
/* El $ es un objeto o un metodo o una variable de un tipo
    $_POST es un arreglo que contiene los datos del formulario que se envían mediante el método POST.
    ["nombre"] es el nombre del campo de texto que se definió en el formulario con el atributo name="nombre".
    El valor del campo se asigna a la variable $nombre.
    $pass= $_POST["contrasena"];:
    Similar al punto anterior, se asigna el valor del campo de texto con el nombre "contrasena" a la variable $pass.
    $seleccion=$_POST["trabajos"];:
    Se asigna el valor del campo de texto con el nombre "trabajos" a la variable $seleccion.
    $textolargo=$_POST["area"];:
    Se asigna el valor del campo de texto con el nombre "area" a la variable $textolargo.
    La siguiente línea de código utiliza la función explode() para dividir el texto largo en un arreglo de palabras:

    $palabras = explode(" ",$textolargo);:
    explode() es una función que divide una cadena de texto en un arreglo de substrings.
    El primer argumento es el carácter que se utiliza para dividir la cadena, en este caso es un espacio en blanco (" ").
    El segundo argumento es la cadena de texto que se va a dividir, en este caso es la variable $textolargo.
    El resultado es un arreglo de palabras que se asigna a la variable $palabras.
    En resumen, este código procesa los datos de un formulario que se envía mediante el método POST y asigna los valores de los campos a variables. Luego, divide el texto largo en un arreglo de palabras utilizando la función explode()
*/

echo "Hola ".$nombre." ¿Q tal estas?";
echo "<p>Bien en tu puesto de ".$seleccion."</p>";

foreach($palabras as $palabra){
    echo $palabra."<br>";
}

?>
</body>
</html>
