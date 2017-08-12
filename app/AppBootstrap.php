<?php

class AppBootstrap {
	
	function __construct(){

		header('Access-Control-Allow-Origin: *');
		header('Access-Control-Allow-Methods: GET, POST, DELETE, PUT');
		header("Access-Control-Allow-Headers: X-Requested-With");

		require "src/controllers/".$_REQUEST['controller'].".php";
		$this->controller = new $_REQUEST['controller']();
	
	}

	public function exec() {

		// only GET method is accepted
		if ($_SERVER['REQUEST_METHOD'] != "GET") {
			$output['error'] = 'true';
			$output['message'] = 'HTTP Method not allowed'; 
			echo json_encode($output);
			return;
		}
		
		$this->controller->exec_api();

	}
}

?>