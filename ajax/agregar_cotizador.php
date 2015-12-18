<?php
	/*-------------------------
	Autor: Obed Alvarado
	Web: obedalvarado.pw
	Mail: info@obedalvarado.pw
	---------------------------*/
session_start();
$session_id= session_id();
if (isset($_POST['id'])){$id=$_POST['id'];}
if (isset($_POST['cantidad'])){$cantidad=$_POST['cantidad'];}
if (isset($_POST['precio_venta'])){$precio_venta=$_POST['precio_venta'];}

	/* Connect To Database*/
	require_once ("../config/db.php");//Contiene las variables de configuracion para conectar a la base de datos
	require_once ("../config/conexion.php");//Contiene funcion que conecta a la base de datos
	
if (!empty($id) and !empty($cantidad) and !empty($precio_venta))
{
$insert_tmp=mysqli_query($con, "INSERT INTO tmp_cotizacion (id_producto,cantidad_tmp,precio_tmp,session_id) VALUES ('$id','$cantidad','$precio_venta','$session_id')");
}
if (isset($_GET['id']))//codigo elimina un elemento del array
{
$delete=mysqli_query($con, "DELETE FROM tmp_cotizacion WHERE id_tmp='".mysql_escape_string($_GET['id'])."'");
}

?>
<table class="table">
<tr>
	<th>CODIGO</th>
	<th>CANT.</th>
	<th>DESCRIPCION</th>
	<th><span class="pull-right">PRECIO UNIT.</span></th>
	<th><span class="pull-right">PRECIO TOTAL</span></th>
	<th></th>
</tr>
<?php
	$sumador_total=0;
	$sql=mysqli_query($con, "select * from productos_demo, tmp_cotizacion where productos_demo.id_producto=tmp_cotizacion.id_producto and tmp_cotizacion.session_id='".$session_id."'");
	while ($row=mysqli_fetch_array($sql))
	{
	$id_tmp=$row["id_tmp"];
	$codigo_producto=$row['codigo_producto'];
	$cantidad=$row['cantidad_tmp'];
	$nombre_producto=$row['nombre_producto'];
	$id_marca_producto=$row['id_marca_producto'];
	if (!empty($id_marca_producto))
	{
	$sql_marca=mysqli_query($con, "select nombre_marca from marcas_demo where id_marca='$id_marca_producto'");
	$rw_marca=mysqli_fetch_array($sql_marca);
	$nombre_marca=$rw_marca['nombre_marca'];
	$marca_producto=" ".strtoupper($nombre_marca);
	}
	else {$marca_producto='';}
	$precio_venta=$row['precio_tmp'];
	$precio_venta_f=number_format($precio_venta,2);//Formateo variables
	$precio_venta_r=str_replace(",","",$precio_venta_f);//Reemplazo las comas
	$precio_total=$precio_venta_r*$cantidad;
	$precio_total_f=number_format($precio_total,2);//Precio total formateado
	$precio_total_r=str_replace(",","",$precio_total_f);//Reemplazo las comas
	$sumador_total+=$precio_total_r;//Sumador
	
		?>
		<tr>
			<td><? echo $codigo_producto;?></td>
			<td><? echo $cantidad;?></td>
			<td><? echo $nombre_producto.$marca_producto;?></td>
			<td><span class="pull-right"><? echo $precio_venta_f;?></span></td>
			<td><span class="pull-right"><? echo $precio_total_f;?></span></td>
			<td ><span class="pull-right"><a href="#" onclick="eliminar('<? echo $id_tmp ?>')"><i class="glyphicon glyphicon-trash"></i></a></span></td>
		</tr>		
		<?php
	}

?>
<tr>
	<td colspan=4><span class="pull-right">TOTAL $</span></td>
	<td><span class="pull-right"><? echo number_format($sumador_total,2);?></span></td>
	<td></td>
</tr>
</table>
					<div class="form-group row">
							<label for="condiciones" class="col-md-2 control-label">Condiciones de pago:</label>
							<div class="col-md-3">
								<select class="form-control" id="condiciones">
									<option value='Contado'>Contado</option>
									<option value='Crédito 30 días'>Crédito 30 días</option>
									<option value='Crédito 45 días'>Crédito 45 días</option>
									<option value='Crédito 60 días'>Crédito 60 días</option>
									<option value='Crédito 90 días'>Crédito 90 días</option>
								</select>
							</div>
							<label for="validez" class="col-md-2 control-label">Validez de la oferta:</label>
							<div class="col-md-2">
								<select class="form-control" id="validez">
									<option value='5 días'>5 días</option>
									<option value='10 días'>10 días</option>
									<option value='15 días' selected>15 días</option>
									<option value='30 días'>30 días</option>
									<option value='60 días'>60 días</option>
								</select>
							</div>
							<label for="entrega" class="col-md-1 control-label">Tiempo:</label>
							<div class="col-md-2">
								<input type="text" class="form-control" id="entrega" placeholder="Tiempo de entrega" value="Inmediato">
							</div>
						</div>