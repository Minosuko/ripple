<?php
// Custom PP calculator
function Cal_PP($m, $scoreDataArray) {
	require_once dirname(__FILE__).'/ModsEnum.php';
	$r = '';
	$beatmapHash = $scoreDataArray[0];
	$username = rtrim($scoreDataArray[1], ' ');
	//$??	 		= $scoreDataArray[2];
	$count300 = $scoreDataArray[3];
	$count100 = $scoreDataArray[4];
	$count50 = $scoreDataArray[5];
	$countGeki = $scoreDataArray[6];
	$countKatu = $scoreDataArray[7];
	$countMisses = $scoreDataArray[8];
	$score = $scoreDataArray[9];
	$maxCombo = $scoreDataArray[10];
	$fullCombo = $scoreDataArray[11] == 'True';
	$rank = $scoreDataArray[12];
	$mods = $scoreDataArray[13];
	$passed = $scoreDataArray[14] == 'True';
	$playMode = $scoreDataArray[15];
	$playDateTime = $scoreDataArray[16];
	$osuVersion = $scoreDataArray[17];
	$acc = strval(calculateAccuracy($count300, $count100, $count50, $countGeki, $countKatu, $countMisses, $playMode));
	$pp_cal = ((((((($score / $acc) * $maxCombo) / ($countMisses + 1) + $count300) / 100) - $count50) / 2) / 200);
	$pp = $pp_cal;
	if ($m & ModsEnum::NoFail) {
		$pp = $pp * 0.5;
	}
	if ($m & ModsEnum::Easy) {
		$pp = $pp * 0.85;
	}
	if ($m & ModsEnum::NoVideo) {
		$pp = $pp * 1;
	}
	if ($m & ModsEnum::Hidden) {
		$pp = $pp * 1.5;
	}
	if ($m & ModsEnum::HardRock) {
		$pp = $pp * 1.5;
	}
	if ($m & ModsEnum::SuddenDeath) {
		$pp = $pp * 1.75;
	}
	if ($m & ModsEnum::DoubleTime) {
		$pp = $pp * 1.5;
	}
	if ($m & ModsEnum::Relax) {
		$pp = $pp * 0.25;
	}
	if ($m & ModsEnum::HalfTime) {
		$pp = $pp * 0.85;
	}
	if ($m & ModsEnum::Nightcore) {
		$pp = $pp * 1.5;
	}
	if ($m & ModsEnum::Flashlight) {
		$pp = $pp * 1.25;
	}
	if ($m & ModsEnum::Autoplay) {
		$pp = $pp * 0;
	}
	if ($m & ModsEnum::SpunOut) {
		$pp = $pp * 0;
	}
	if ($m & ModsEnum::Relax2) {
		$pp = $pp * 0;
	}
	if ($m & ModsEnum::Perfect) {
		$pp = $pp * 2;
	}
	if ($m & ModsEnum::Key4) {
		$pp = $pp * 1;
	}
	if ($m & ModsEnum::Key5) {
		$pp = $pp * 1.15;
	}
	if ($m & ModsEnum::Key6) {
		$pp = $pp * 1.25;
	}
	if ($m & ModsEnum::Key7) {
		$pp = $pp * 1.65;
	}
	if ($m & ModsEnum::Key8) {
		$pp = $pp * 1.85;
	}
	if ($m & ModsEnum::keyMod) {
		$pp = $pp * 1;
	}
	if ($m & ModsEnum::FadeIn) {
		$pp = $pp * 1.5;
	}
	if ($m & ModsEnum::Random) {
		$pp = $pp * 1.5;
	}
	if ($m & ModsEnum::LastMod) {
		$pp = $pp * 0;
	}
	if ($m & ModsEnum::Key9) {
		$pp = $pp * 1.95;
	}
	if ($m & ModsEnum::Key10) {
		$pp = $pp * 2;
	}
	if ($m & ModsEnum::Key1) {
		$pp = $pp * 0.25;
	}
	if ($m & ModsEnum::Key3) {
		$pp = $pp * 0.50;
	}
	if ($m & ModsEnum::Key2) {
		$pp = $pp * 0.75;
	}
	return $pp;
}
?>