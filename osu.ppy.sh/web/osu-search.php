<?php
/*
 * Osu! direct search
*/
require_once '../inc/functions.php';
try {
	// Check if everything is set
	if (!isset($_GET['u']) || !isset($_GET['h']) || empty($_GET['u']) || empty($_GET['h'])) {
		throw new Exception('login');
	}
	// Check login
	if (!PasswordHelper::CheckPass($_GET['u'], $_GET['h'])) {
		throw new Exception('login');
	}
	// Make sure mode and ranked status are set
	if (!isset($_GET['m']) || !isset($_GET['r'])) {
		throw new Exception();
	}
	// Default values for bloodcat query
	$bcM = $_GET['m'];;
	$bcS = '1,2,3,4';
	$bcQ = '';
	$bcPopular = false;
	$bcP = 1;
	switch ($_GET['r']) {
			// Ranked/Ranked played (Ranked)
		case 0:
		case 7:
			$bcS = '1';
		break;

			// Qualified (Qualified)
		case 3:
			$bcS = '3';
		break;

			// Pending/Help (Approved)
		case 2:
			$bcS = '2';
		break;

			// Graveyard (Unranked)
		case 5:
			$bcS = '0';
		break;

			// Loved
		case 8:
			$bcS = '4';
		break;

			// All
		case 4:
			$bcS = '1,2,3,0';
		break;
	}
	if ($_GET['m'] == -1) {
		$bcM = '0,1,2,3';
	} // All
	else {
		$bcM = $_GET['m'];
	}
	if (isset($_GET['q']) && !empty($_GET['q'])) {
		if ($_GET['q'] == 'Top Rated' || $_GET['q'] == 'Most Played') {
			$bcPopular = true;
		} elseif ($_GET['q'] == 'Newest') {
			$bcQ = '';
		} else {
			$bcQ = $_GET['q'];
		}
	} else {
		$bcQ = '';
	}
	if (isset($_GET['p'])) {
		$bcP = $_GET['p'];
	}
	$bcQ = str_replace(' ', '+', $bcQ);
	$bcURL = 'https://api.chimu.moe/v1/search?query=' . $bcQ . '&amount=101&offset=' . ($bcP * 100) . '&status=' . $bcS . '&mode=' . $bcM;
	$bcData = json_decode(file_get_contents($bcURL), true);
	$output = '';
	if (count($bcData["data"]) >= 40) {
		$output = 101;
	} else {
		$output = count($bcData["data"]);
	}
	// Separator
	$output .= "\r\n";
	foreach ($bcData["data"] as $song) {
		$output .= ChimuDirectString($song)."\r\n";
	}
	echo $output;
	// bmapid.osz|Artist|Song name|mapper|ranked(1/0)|idk(prob star rating)|last update|bmap id again|topic id tho|has video(0/1)|0|0||Diff 1@mode,Diff 2@mode

}
catch(Exception $e) {
	echo $e->getMessage();
}
