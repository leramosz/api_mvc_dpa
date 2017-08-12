<?

class AppController {
	
	function __construct() {
	
		$this->params = array();
		foreach ($_REQUEST as $k => $v) {
			
			if ($k == 'controller') {
				$this->controller = $v;
				continue;
			}

			$this->params[$k] = $v;
		}	

		$this->params = array_reverse($this->params);
	}

}

?>