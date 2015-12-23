<style type="text/css">
<!--
table { vertical-align: top; }
tr    { vertical-align: top; }
td    { vertical-align: top; }
table.page_footer {width: 100%; border: none; background-color: white; padding: 2mm;border-collapse:collapse; border: none;}
}
-->
</style>
<page backtop="15mm" backbottom="15mm" backleft="15mm" backright="15mm" style="font-size: 12pt; font-family: arial" >
        <page_footer>
        <table class="page_footer">
            <tr>

                <td style="width: 50%; text-align: left">
                    P&aacute;gina [[page_cu]]/[[page_nb]]
                </td>
                <td style="width: 50%; text-align: right">
                    &copy; <? echo "obedalvarado.pw "; echo  $anio=date('Y'); ?>
                </td>
            </tr>
        </table>
    </page_footer>
    <table cellspacing="0" style="width: 100%;">
        <tr>

            <td style="width: 25%; color: #444444;">
                <img style="width: 100%;" src="../../img/logo.jpg" alt="Logo"><br>
                
            </td>
			<td style="width: 75%;text-align:right">
			COTIZACION Nº <? echo $numero_cotizacion;?>
			</td>
			
        </tr>
    </table>
    <br>
    <table cellspacing="0" style="width: 100%; text-align: left; font-size: 10pt;">
		<tr>
		<td style="width:50%; "><strong>Dirección:</strong> <br>San Miguel, El Salvador C.A.<br> Teléfono.: (503)2222-2222</td>
		
		</tr>
	</table>
	
	<table cellspacing="0" style="width: 100%; text-align: left; font-size: 11pt;">
		<tr>
			<td style="width: 100%;text-align:right">
			Fecha: <? echo date("d-m-Y");?>
			</td>
		</tr>
	</table>
	
    <table cellspacing="0" style="width: 100%; text-align: left; font-size: 11pt;">
        <tr>
           
            <td style="width:15%; ">Atención:</td>
            <td style="width:50%"><? echo $atencion; ?> </td>
			<td style="width:15%;text-align:right"> Teléfono:</td>
			<td style="width:20%">&nbsp;<? echo $tel1; ?> </td>
        </tr>
        <tr>
            
            <td style="width:15%; ">Empresa:</td>
            <td style="width:50%"><? echo $empresa; ?></td>
			<td style="width:15%;text-align:right"> Teléfono:</td>
			<td style="width:20%">&nbsp; <? echo $tel2; ?> </td>
        </tr>
        <tr>
            
            <td style="width:15%; ">Email:</td>
            <td style="width:50%"><? echo $email; ?></td>
        </tr>
   
    </table>
    
        <table cellspacing="0" style="width: 100%; text-align: left;font-size: 11pt">
        <tr>
             <td style="width:100%; ">A continuación Presentamos nuestra oferta que esperamos sea de su conformidad.</td>
        </tr>
    </table>
  
    <table cellspacing="0" style="width: 100%; border: solid 1px black; background: #E7E7E7; text-align: center; font-size: 10pt;padding:1mm;">
        <tr>
            <th style="width: 10%">CANT.</th>
            <th style="width: 60%">DESCRIPCION</th>
            <th style="width: 15%">PRECIO UNIT.</th>
            <th style="width: 15%">PRECIO TOTAL</th>
            
        </tr>
    </table>
<?php
$sumador_total=0;
$sql=mysqli_query($con, "select * from productos_demo, tmp_cotizacion where productos_demo.id_producto=tmp_cotizacion.id_producto and tmp_cotizacion.session_id='".$session_id."'");
while ($row=mysqli_fetch_array($sql))
	{
	$id_tmp=$row["id_tmp"];
	$id_producto=$row["id_producto"];
	$codigo_producto=$row['codigo_producto'];
	$cantidad=$row['cantidad_tmp'];
	$nombre_producto=$row['nombre_producto'];
	$id_marca_producto=$row['id_marca_producto'];
	if (!empty($id_marca_producto))
	{
	$sql_marca=mysqli_query($con,"select nombre_marca from marcas_demo where id_marca='$id_marca_producto'");
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
	<table cellspacing="0" style="width: 100%; border: solid 1px black;  text-align: center; font-size: 11pt;padding:1mm;">
        <tr>
            <td style="width: 10%; text-align: center"><?php echo $cantidad; ?></td>
            <td style="width: 60%; text-align: left"><? echo $nombre_producto.$marca_producto;?></td>
            <td style="width: 15%; text-align: right"><? echo $precio_venta_f;?></td>
            <td style="width: 15%; text-align: right"><? echo $precio_total_f;?></td>
            
        </tr>
    </table>
	<?php 
	//Insert en la tabla detalle_cotizacion
	$insert_detail=mysqli_query($con, "INSERT INTO detalle_cotizacion_demo VALUES ('','$numero_cotizacion','$id_producto','$cantidad','$precio_venta_r')");
	}

?>
    <table cellspacing="0" style="width: 100%; border: solid 1px black; background: #E7E7E7; text-align: center; font-size: 11pt;padding:1mm;">
        <tr>
            <th style="width: 87%; text-align: right;">TOTAL : </th>
            <th style="width: 13%; text-align: right;">&#36; <? echo number_format($sumador_total,2);?></th>
        </tr>
    </table>
	*** Precios incluyen IVA ***
	
	<br>
          <table cellspacing="0" style="width: 100%; text-align: left; font-size: 11pt;">
            <tr>
                <td style="width:50%;text-align:right">Condiciones de pago: </td>
                <td style="width:50%; ">&nbsp;<? echo $condiciones; ?></td>
            </tr>
			<tr>
                <td style="width:50%;text-align:right">Validez de la oferta: </td>
                <td style="width:50%; ">&nbsp;<? echo $validez; ?></td>
            </tr>
			<tr>
                <td style="width:50%;text-align:right">Tiempo de entrega: </td>
                <td style="width:50%; ">&nbsp;<? echo $entrega; ?></td>
            </tr>
        </table>
    <br><br><br><br>
	
	
	  <table cellspacing="10" style="width: 100%; text-align: left; font-size: 11pt;">
			 <tr>
                <td style="width:33%;text-align: center;border-top:solid 1px">Vendedor</td>
               <td style="width:33%;text-align: center;border-top:solid 1px">Cotizado</td>
               <td style="width:33%;text-align: center;border-top:solid 1px">Aceptado Cliente</td>
            </tr>
        </table>

</page>

<?
$date=date("Y-m-d H:i:s");
$insert=mysqli_query($con,"INSERT INTO cotizaciones_demo VALUES ('','$numero_cotizacion','$date','$atencion','$tel1','$empresa','$tel2','$email','$condiciones','$validez','$entrega')");
$delete=mysqli_query($con,"DELETE FROM tmp_cotizacion WHERE session_id='".$session_id."'");
?>