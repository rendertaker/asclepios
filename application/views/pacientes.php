<html>
<head>
<script>
	$(document).ready(function() {
		$('select').material_select();
	});
</script>
</head>
<body>
	<div class="row">
    <form class="col s12">
      <div class="row">
	    <div class="input-field col s5">
			<select>
					<option value="" disabled selected>Choose your option</option>
					<option value="1">Option 1</option>
					<option value="2">Option 2</option>
					<option value="3">Option 3</option>
			</select>
			<label>ARS</label>
		</div>
		
		
		<div class="row"> 
			<div class="input-field col s6">
				<input id="eNARS" type="text" class="validate">
				<label for="eNARS">Número de ARS</label>
			</div>
      </div>
	  
      <div class="row">
        <div class="input-field col s12">
          <input disabled value="I am not editable" id="disabled" type="text" class="validate">
          <label for="disabled">Disabled</label>
        </div>
      </div>
      <div class="row">
        <div class="input-field col s12">
          <input id="password" type="password" class="validate">
          <label for="password">Password</label>
        </div>
      </div>
      <div class="row">
        <div class="input-field col s12">
          <input id="email" type="email" class="validate">
          <label for="email">Email</label>
        </div>
      </div>
      <div class="row">
        <div class="col s12">
          This is an inline input field:
          <div class="input-field inline">
            <input id="email" type="email" class="validate">
            <label for="email" data-error="wrong" data-success="right">Email</label>
          </div>
        </div>
      </div>
    </form>
  </div>	
		
		
		
</body>
</html>