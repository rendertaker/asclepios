<html>
<head>
<script src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>

  <!-- Compiled and minified CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/css/materialize.min.css">

  <!-- Compiled and minified JavaScript -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/js/materialize.min.js"></script>
</head>
<body>
<h1>Nuevo Paciente</h1>
		<div class="row">




      <?php echo form_open('',['class'=>'col s12']); ?>
        
    <div class="row">
	    <div class="input-field col s5">
			<select>
					<option value="" disabled selected>Choose your option</option>
					<option value="1">Option 1</option>
					<option value="2">Option 2</option>
					<option value="3">Option 3</option>
			</select>
			<?php echo form_label('ARS'); ?>
		</div>
	  </div>

      <?php echo form_submit('bt_enviar','Guardar'); ?>  
      <?php echo form_close(); ?>
    </div>
		
<script>
	$(document).ready(function() {
		$('select').material_select();
	});
</script>
		
</body>
</html>