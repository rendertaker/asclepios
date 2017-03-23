<?php
if(!defined('BASEPATH'))exit('No direct access allowed');

	class M_pacientes extends CI_Model 
	{
		public function __construct(){
            parent::__construct();
        }

        /**
         * get function
         * Metodo para traer todos los registros de la base de datos
         * @return Array | Objeto
         */
        public function get_todos(){
            $this->load->database();
            $query = $this->db->get('pacientes');
            return $query->result();
        }

        /**
         * add function
         * Metodo para guardar datos en la base de datos
         * @return void
         */
        public function add(){
            $this->load->database();
            $data_insertar = $this->input->post();
            unset($data_insertar['btn_enviar']);
            $this->db->insert('pacientes',data_insertar);
        }
	}

/* Fin del Archivo m_pacientes.php */