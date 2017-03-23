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
	}

/* Fin del Archivo m_pacientes.php */