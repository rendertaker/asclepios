<html>
<head>
<title>Prueba de una Vista</title>
</head>
<body>
	<h1>Lista de Articulos</h1>
	<table>
	<tr>
		<td width="20%">CODIGO</td>
		<td width="60%">DESCRIPCION</td>
		<td width="20%">PRECIO</td>
	</tr>
	<?
		 foreach($rs_articulos as $registro)
		{
		
	?>
			<tr>
				<td><?= $registro->Codigo; ?></td>
				<td><?= $registro->Descripcion; ?></td>
				<td align="right"><?= number_format($registro->Precio,2); ?></td>
			</tr>
	<?
		}
	?>
	</table>
</body>
</html>