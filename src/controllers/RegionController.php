<?

require "src/models/RegionModel.php";

class RegionController extends AppController {


	function __construct() {

		parent::__construct();
		$this->Region = new RegionModel();

	}

	public function index() {
		return $this->Region->list($this->params);
	}

	public function view() {
		return $this->Region->get($this->params);
	}

	public function exec_api(){

		$data = array();
		$data = (isset($this->params['region'])) ? $this->view() : $this->index(); 
		echo json_encode($data);

	}

}
?>