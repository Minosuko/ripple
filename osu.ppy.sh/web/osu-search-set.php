<?php
/*
 * This file fixes #ILBUGDELLENNEPPI
 * Thanks to Avail for request/response structure :3
*/
require_once '../inc/functions.php';
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
try {
	// Check if everything is set
	if (!isset($_GET['u']) || !isset($_GET['h']) || empty($_GET['u']) || empty($_GET['h']) || !isset($_GET['b']) || empty($_GET['b'])) {
		throw new Exception();
	}
	// Check login
	if (!PasswordHelper::CheckPass($_GET['u'], $_GET['h'])) {
		throw new Exception();
	}
	// Get API response and save it in an array
	$OsuAPI = new OsuAPI(OSU_API_TOKEN);
	$data = [];
	if(isset($_GET['b'])){
		$data['b'] = $_GET['b'];
		$data['s'] = $_GET['b'];
	}elseif(isset($_GET['s'])){
		$data['s'] = $_GET['s'];
		$data['b'] = $_GET['s'];
	}
	$bcData = $OsuAPI->get_beatmaps($data);
	// Make sure the beatmap was found
	if (count($bcData) == 0) {
		throw new Exception();
	}
	// Output result
	echo OsuAPIDirectString($bcData[0]);
}
catch(Exception $e) {
	echo $e->getMessage();
}
