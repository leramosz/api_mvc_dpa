<?

  $opciones = array(
	  					"http" => array(
	  								"method" => "GET"
	  							),
	  					"ssl" => array(
		        				"verify_peer"=>false,
		        				"verify_peer_name"=>false,
	    					),
  					);

  $contexto = stream_context_create($opciones);
  $json = file_get_contents('https://apis.modernizacion.cl/dpa/provincias', false, $contexto);
  $input= json_decode($json, true);

  $link = new mysqli('localhost', 'leo', '3eM9FN5g7ubnS9IW', 'dpa');
  $link->query("SET NAMES 'utf8'");

  foreach ($input as $k => $v) {
  	echo "Inserted: ";
  	print_r($v);
  	echo "<br>";

  	//Creating the values list
	$escaped_values = array_map(array($link, 'real_escape_string'), array_values($v));
	array_walk($escaped_values, function(&$item) { $item = "'".$item."'"; });
	$values  = implode(",", $escaped_values);


	$query = "INSERT INTO provinces (id, type, name, latitude, longitude, url, region_id) VALUES (".$values.")";
	echo $query;

	$link->query($query);
	
	echo "<br><br>";

  }
  
?>