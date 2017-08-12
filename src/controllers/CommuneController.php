<?

require "src/models/CommuneModel.php";

class CommuneController extends AppController {


	function __construct() {

		parent::__construct();
		$this->Commune = new CommuneModel();

	}

	public function index() {
		return $this->Commune->list($this->params);
	}

	public function view() {
		return $this->Commune->get($this->params);
	}

	public function exec_api(){

		$data = array();
		$data = (isset($this->params['commune'])) ? $this->view() : $this->index(); 
		echo json_encode($data);

	}

}
?>