<?php
$dir = chdir( dirname ( __FILE__ ) );
$directorio = getcwd();
$oa = $_SERVER['DOCUMENT_ROOT'];

//include "../../datos/usuariosDatos.php";


require_once "../datos/usuariosDatos.php";

class usuariosControlador{
      function insertarUsuarios($usuario,$pass){
		$obj = new usuariosDatos();
		return $obj->insertarUsuarios($usuario,$pass);
	  }
      function validar($usuario,$pass){
        $obj = new usuariosDatos();
		return $obj->validar($usuario,$pass);
      }
      
       function validarsql($usuario,$pass){
        $obj = new usuariosDatos();
        $usu = new usuarios();
		return $obj->validarsql($usuario,$pass);
      }
}

?>