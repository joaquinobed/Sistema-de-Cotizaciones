<?php
	/*-------------------------
	Autor: Obed Alvarado
	Web: obedalvarado.pw
	Mail: info@obedalvarado.pw
	---------------------------*/
	session_start();
	/* Connect To Database*/
	include("../../config/db.php");
	include("../../config/conexion.php");
	$session_id= session_id();
	$sql_count=mysqli_query($con,"select * from tmp_cotizacion where session_id='".$session_id."'");
	$count=mysqli_num_rows($sql_count);
	if ($count==0)
	{
	echo "<script>alert('No hay productos agregados a la cotizacion')</script>";
	echo "<script>window.close();</script>";
	exit;
	}

	require_once(dirname(__FILE__).'/../html2pdf.class.php');
		
	//Variables por GET
	$atencion=$_GET['atencion'];
	$tel1=$_GET['tel1'];
	$empresa=$_GET['empresa'];
	$tel2=$_GET['tel2'];
	$email=$_GET['email'];
	$condiciones=$_GET['condiciones'];
	$validez=$_GET['validez'];
	$entrega=$_GET['entrega'];
	//Fin de variables por GET
	$sql_cotizacion=mysqli_query($con, "select LAST_INSERT_ID(numero_cotizacion) as last from cotizaciones_demo order by id_cotizacion desc limit 0,1 ");
	$rwC=mysqli_fetch_array($sql_cotizacion);
	$numero_cotizacion=$rwC['last']+1;	
    // get the HTML
     ob_start();
     include(dirname('__FILE__').'/res/cotizacion_html.php');
    $content = ob_get_clean();

    try
    {
        // init HTML2PDF
        $html2pdf = new HTML2PDF('P', 'LETTER', 'es', true, 'UTF-8', array(0, 0, 0, 0));
        // display the full page
        $html2pdf->pdf->SetDisplayMode('fullpage');
        // convert
        $html2pdf->writeHTML($content, isset($_GET['vuehtml']));
        // send the PDF
        $html2pdf->Output('Cotizacion.pdf');
    }
    catch(HTML2PDF_exception $e) {
        echo $e;
        exit;
    }
