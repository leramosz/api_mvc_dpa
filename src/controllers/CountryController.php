<?

require "src/models/CountryModel.php";

class CountryController extends AppController {


	function __construct() {

		parent::__construct();
		$this->Country = new CountryModel();

	}

	public function index() {
		return $this->Country->list($this->params);
	}

	public function view() {
		return $this->Country->get($this->params);
	}

	public function exec_api(){

		$data = array();
		$data = (isset($this->params['country'])) ? $this->view() : $this->index(); 
		echo json_encode($data);

	}

}
?>