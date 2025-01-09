<?php
    //cookie al recargar la pagina la cookie estara creada ya que se creo con el metodo setcookie
    $value = 'something from somewhere';
    setcookie("TestCookie", $value, time()+3600);//la cookie caduca en 1h
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>Titulo</h1>
    <p>Parrafo</p>
    <?php

    $numero = 4;
    $nombre = "Angela"; //declarar las variables 

    echo "Hola  ".$nombre."<br>"."¿Que tal?" ; //tras un echo hay q hacer un salto de linea SIEMPRE
     /*un punto para concatenar*/

     //ejercicio pablo array con contenido
     $array = array(1,2,3,4);
     foreach ($array as $valor){
       echo "<br>" .$valor * 2 ;
     }
    $vacio = array();
    for($contador=0;$contador<10;$contador++){
        $vacio[$contador]=$contador + 1;
    }
    echo "<br>".implode(",",$vacio)."<br>";
    ?>


    <?php
//bucle for y un array sin contenido
    $lista=array();
    for($i=0;$i<10;$i++){
    $lista[$i]=$i+5;
    }
    echo implode(",",$lista);//metodo
  
  ?>

    <h3>Subtitulo</h3>
    <ul
        <li>Uno</li>

    </ul>
    
    <?php
    
// En el body se imprime una cookie individual
echo $_COOKIE["TestCookie"];

// Otra forma de depurar/prueba es ver todas las cookies
print_r($_COOKIE);

?>


</body>
</html>