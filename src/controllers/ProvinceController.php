<?

require "src/models/ProvinceModel.php";

class ProvinceController extends AppController {


	function __construct() {

		parent::__construct();
		$this->Province = new ProvinceModel();

	}

	public function index() {
		return $this->Province->list($this->params);
	}

	public function view() {
		return $this->Province->get($this->params);
	}

	public function exec_api(){

		$data = array();
		$data = (isset($this->params['province'])) ? $this->view() : $this->index(); 
		echo json_encode($data);

	}

}
?>