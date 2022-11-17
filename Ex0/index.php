<!--ACTIVITAT 1-->
<?php
$name ="Sandra";
$apellido ="Herrerías";
    echo "Me llamo ".$name." ".$apellido."<br>";

$producte = "la pilota";
$preu=3.4;

echo "El preu de ".$producte." és de ".$preu." euros.";
?>
<br>
<div class="verd">
    El preu de 
    <span class="lila"><?=$producte?></span>
    és de 
    <?=$preu?> 
    euros
</div>

<!--ACTIVITAT 2-->
<?php

$nota=5.8;

if($nota>=5 && $nota<=10){
    echo "Has aprovat l’examen, amb un ".$nota;
}else if($nota>=0 && $nota<=4.9){
    echo "Has suspès l’examen, amb un ".$nota;
}else{
    echo "Dades incorrectes";
}

?>

<!--ACTIVITAT 3-->
<?php

$a = 1; $b = 2;
   $resultado = suma($a, $b);
   echo "<br>Suma a + b = " . $resultado;
 
   function suma($a, $b){
      return $a + $b;
   }
?>

<?php

$a = 1; $b = 2;
   $resultado = suma($a, $b);
   echo "<br>Suma a - b = " . $resultado;
 
   function resta($a, $b){
      return $a - $b;
   }
?>



<style>
    .verd{
        color:greenyellow;
    }

    .lila{
        color:purple;
    }
</style>


<!--
<div class="titulo">Soy un titulo</div>
<div class="subtitulo">Soy un subtitulo</div>
<p>Soy un parrafo</p>
<p>Soy otro parrafo</p>

<u>Hello</u> <b>World</b>
<br>
<a target="blank" href="http://google.es">ir a Google</a>



<ul>
    <li>Opcion 1</li>
    <li>Opcion 2</li>
</ul>


<ol>
    <li>Opcion A</li>
    <li>Opcion B</li>
</ol>-->