<html>
 <head>
  <title>Formulario de PHP</title>
 </head>
 <body>
	 <form action="accion.php" method="post">
		 <p>Su nombre: <input type="text" name="nombre" required/></p>
		 <p>Su edad: <input type="number" name="edad" min="0" required/></p>
		 <p>Su email: <input type="email" name="email" required/></p>
		 <p><input type="submit" value="Enviar"/></p>
	</form>
 </body>
</html>