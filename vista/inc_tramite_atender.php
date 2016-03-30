<?php
  require_once('../controlador/TramiteControlador.php');
  $objTramites= new TramiteControlador();
  $fecha_1 = $_GET["fecha1"];
  $fecha_2 = $_GET["fecha2"];
  $administrado = $_GET["ad"];
  $cod_are_em = '';//$_GET["cod_area_emp"];
  $id_emple = '';//$_GET["cod_emp"];
  $lt_tramitessinactivar = $objTramites->obtenerTramitesPorAsignar($fecha_1, $fecha_2, $administrado,$cod_are_em,$id_emple);
?>
<?php foreach ($lt_tramitessinactivar as $row) { ?>
  <tr>
    <td>
      <?php echo $row['cod_tramite'];?>
    </td>
    <td>
      <?php echo $row['administrado'];?>
    </td>
    <td>
      <?php echo $row['fec_recepcion'];?>
    </td>
    <td>
      <?php echo $row['diastupa'];?>
    </td>
    <td>
      <?php echo $row['diasTrans'];?>
    </td>
    <td style="width: 35px">
      <a class="btn btn-info btn-sm" title="Atender Tramite" href="Atender_Tramite2.php?id=<?php echo $row['cod_tramite']; ?>">
        <span class="glyphicon glyphicon-edit"></span>
      </a>
    </th>
  </tr>
<?php } ?>