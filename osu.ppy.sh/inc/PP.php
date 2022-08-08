<?php
// Custom PP calculator
function Cal_PP($m, $scoreDataArray, $beatmap_id) {
	require_once dirname(__FILE__).'/ModsEnum.php';
	$beatmapHash = $scoreDataArray[0];
	$count300 = $scoreDataArray[3];
	$count100 = $scoreDataArray[4];
	$count50 = $scoreDataArray[5];
	$countGeki = $scoreDataArray[6];
	$countKatu = $scoreDataArray[7];
	$countMisses = $scoreDataArray[8];
	$score = $scoreDataArray[9];
	$maxCombo = $scoreDataArray[10];
	$playMode = $scoreDataArray[15];
	$acc = strval(calculateAccuracy($count300, $count100, $count50, $countGeki, $countKatu, $countMisses, $playMode));
	$sv = 1;
	$r = '+';
	if ($m & ModsEnum::NoFail) {
		$r .= 'NF';
	}
	if ($m & ModsEnum::Easy) {
		$r .= 'EZ';
	}
	if ($m & ModsEnum::TouchDevice) {
		$r .= 'TD';
	}
	if ($m & ModsEnum::Hidden) {
		$r .= 'HD';
	}
	if ($m & ModsEnum::HardRock) {
		$r .= 'HR';
	}
	if ($m & ModsEnum::SuddenDeath) {
		$r .= 'SD';
	}
	if ($m & ModsEnum::DoubleTime) {
		$r .= 'DT';
	}
	if ($m & ModsEnum::Relax) {
		$r .= 'RX';
	}
	if ($m & ModsEnum::HalfTime) {
		$r .= 'HT';
	}
	if ($m & ModsEnum::Nightcore) {
		$r .= 'NC';
	}
	if ($m & ModsEnum::Flashlight) {
		$r .= 'FL';
	}
	if ($m & ModsEnum::Autoplay) {
		$r .= 'AP';
	}
	if ($m & ModsEnum::SpunOut) {
		$r .= 'SO';
	}
	if ($m & ModsEnum::Relax2) {
		$r .= 'AP';
	}
	if ($m & ModsEnum::Perfect) {
		$r .= 'PF';
	}
	if ($m & ModsEnum::Key4) {
		$r .= '4K';
	}
	if ($m & ModsEnum::Key5) {
		$r .= '5K';
	}
	if ($m & ModsEnum::Key6) {
		$r .= '6K';
	}
	if ($m & ModsEnum::Key7) {
		$r .= '7K';
	}
	if ($m & ModsEnum::Key8) {
		$r .= '8K';
	}
	if ($m & ModsEnum::keyMod) {
		$r .= '';
	}
	if ($m & ModsEnum::FadeIn) {
		$r .= 'FD';
	}
	if ($m & ModsEnum::Random) {
		$r .= 'RD';
	}
	if ($m & ModsEnum::LastMod) {
		$r .= 'CN';
	}
	if ($m & ModsEnum::Key9) {
		$r .= '9K';
	}
	if ($m & ModsEnum::Key10) {
		$r .= '10K';
	}
	if ($m & ModsEnum::Key1) {
		$r .= '1K';
	}
	if ($m & ModsEnum::Key3) {
		$r .= '3K';
	}
	if ($m & ModsEnum::Key2) {
		$r .= '2K';
	}
	if ($m & ModsEnum::Mirror) {
		$r .= 'MN';
	}
	if ($m & ModsEnum::ScoreV2) {
		$sv = 2;
	}
	if($r == "+") $r = "+NM";
	if (strtoupper(substr(PHP_OS, 0, 3)) === 'WIN') {
		$oppai = __DIR__ . "\\oppai.exe";
	} else {
		$oppai = __DIR__ . "/oppai";
	}
	system("curl https://osu.ppy.sh/osu/$beatmap_id -silent | $oppai - $r {$acc}% {$count100}x100 {$count50}x50 {$countMisses}m {$maxCombo}x scorev{$sv} -m{$playMode} > " . __DIR__ . "/a.txt");
	$input_line = file_get_contents(__DIR__ . "/a.txt");
	preg_match('/(.*) pp/', $input_line, $output_array);
	unlink(__DIR__ . "/a.txt");
	return $output_array[1];
}
?>
