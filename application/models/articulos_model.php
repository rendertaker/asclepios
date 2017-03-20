<?php
	class Articulos_model extends CI_Model 
	{
		function lista_articulos()
		{
			$query = $this->db->get('articulos');
			return $query->result();
		}
	}
?>