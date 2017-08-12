<?

class AppModel {

	private $database = array (

				"country" => array (

						"name" => "country",

						"table" => array (
							 	"key" => "country_id",
							 	"columns" => array ("country_id", "type", "name", "latitude", "longitude", "url") 
						    ),

						"belongsTo" => null,
				 		"hasOne" => "region"
					),

				'region' => array (

						"name" => "region",

						"table" => array ( 
								"key" => "region_id",
								"foreign_key" => "country_id",
								"columns" => array ("region_id", "type", "name", "latitude", "longitude", "url", "country_id") 
						    ),

						"belongsTo" => "country",

						"hasOne" => "province",

					),

				'province' => array (

						"name" => "province",

						"table" => array ( 
							 	"key" => "province_id",
								"foreign_key" => "region_id",
								"columns" => array ("province_id", "type", "name", "latitude", "longitude", "url", "region_id") 
						    ),

						"belongsTo" => "region",

						"hasOne" => "commune"
					),

				'commune' => array (

						"name" => "commune",

						"table" => array ( 
								"key" => "commune_id",
								"foreign_key" => "province_id",
								"columns" => array ("commune_id", "type", "name", "latitude", "longitude", "url", "province_id") 
						    ),

						"belongsTo" => "province"

					),

			);
	
	function __construct($table) {
		$this->db = new AppDatabase($table, $this->database[$table]);
		$this->table = $table;
	}

	public function list($params){

		if(count($params) == 0) {

			$this->db->select();
		
		} else {

			$this->db->select();

			// last parent
			end($params);

			$child = $this->table;
			$parent = $this->database[$child]['belongsTo'];
			
			do {

				$this->db->join($this->database[$parent], $this->database[$child]);

				$child = $this->database[$parent]['name'];
				$parent = $this->database[$child]['belongsTo'];

			} while (key($params) != $child);

			reset($params);

			$key = key($params);
			$this->db->where([$key => $params[$key]], $key);

			while (next($params)) {

				$key = key($params);
				$this->db->and([$key => $params[$key]], $key);
			}

		}

		return $this->db->run();
	}

	public function get($params) {

		if (count($params) == 1 ) {

			$this->db->select()->where($params);

		} else {
			
			$this->db->select();
			
			//table
			$table[key($params)] = $params[key($params)]; 
			array_shift($params);
	
			// last parent
			end($params);
			$last = key($params);

			$child = $this->table;
			$parent = $this->database[$child]['belongsTo'];

			do {

				$this->db->join($this->database[$parent], $this->database[$child]);

				$child = $this->database[$parent]['name'];
				$parent = $this->database[$child]['belongsTo'];

			} while (key($params) != $child);

			$key = key($table);
			$this->db->where([$key => $table[$key]], $key);
	
			foreach($params as $key => $val) {
				$this->db->and([$key => $val], $key);
			}

		}
		return $this->db->run();
	}

}

?>