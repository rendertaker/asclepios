<?php
	class Pacientes extends CI_Controller {
		
		//evento por defecto
		function index()
		{
			//$this->load->Model('Articulos_model');
			//$Result = $this->Articulos_model->lista_articulos();
			//$datos = array('rs_articulos' => $Result);


			$this->load->model('M_pacientes');			
			$data['listado'] = $this->M_pacientes->get_todos();

			$this->load->view('pacientes',$data);

			
		}

		//evento agregar 'add' para el formulario de crear pacientes
		public function add(){

			$this->load->helper('form');//metodos para manejo de formularios
			$this->load->view('paciente_add');
		}
	}
?> 