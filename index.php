<?
	

require "app/AppController.php";
require "app/AppModel.php";
require "app/AppDatabase.php";
require "app/AppBootstrap.php";

$app = new AppBootstrap();
$app->exec();

?>