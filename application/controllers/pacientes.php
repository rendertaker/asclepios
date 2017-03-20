<?php
class Pacientes extends CI_Controller {
function index()
{
	//$this->load->Model('Articulos_model');
	//$Result = $this->Articulos_model->lista_articulos();
	//$datos = array('rs_articulos' => $Result);

	$this->load->view('pacientes');
}
}
?> 