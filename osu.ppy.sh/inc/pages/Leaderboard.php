<?php

class Leaderboard {
	const PageID = 13;
	const URL = 'leaderboard';
	const Title = 'Ripple - Leaderboard';
	const LoggedIn = true;

	public function P() {
		// Leaderboard names (to bold the selected mode)
		$modesText = [0 => 'osu!standard', 1 => 'Taiko', 2 => 'Catch the Beat', 3 => 'osu!mania'];
		// Set $m value to 0 if not set
		if (!isset($_GET['m']) || empty($_GET['m'])) {
			$m = 0;
		} else {
			$m = $_GET['m'];
		}
		if (!isset($_GET['c']) || empty($_GET['c'])) {
			$cty = '';
		} else {
			$cty = strtolower($_GET['c']);
			if($cty == "XX") $xx = true;
		}
		// Get stats for selected mode
		$modeForDB = getPlaymodeText($m);
		$modeReadable = getPlaymodeText($m, true);
		$c = getCountyList();
		// Make sure that $m is a valid mode integer
		$m = ($m < 0 || $m > 3 ? 0 : $m);
		// Bold the selected mode
		$modesText[$m] = '<b>'.$modesText[$m].'</b>';
		// Header stuff
		echo '<blockquote><p>Plz enjoy game.</p><footer>rrtyui</footer></blockquote>';
		echo '<a href="index.php?p=13&m=0&c='.$ct.'">'.$modesText[0].'</a> | <a href="index.php?p=13&m=1&c='.$ct.'">'.$modesText[1].'</a> | <a href="index.php?p=13&m=2&c='.$ct.'">'.$modesText[2].'</a> | <a href="index.php?p=13&m=3&c='.$ct.'">'.$modesText[3].'</a>';
		echo "<br>";
		echo '<div class="dropdown">';
		echo '<button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">';
		echo 'Country <span class="caret"></span>';
		echo '</button>';
		echo '<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">';
		foreach($c as $ct){
			echo '<li role="presentation"><a role="menuitem" tabindex="-1" href="index.php?p=13&c='.$ct['code'].'&m='.$m.'"><img src="./images/flags/'.strtolower($ct['code']).'.png"/> '.$ct['display_name'].'</a></li>';
		}
		echo "</ul>";
		echo "</div>";
		// Leaderboard
		echo '<table class="table table-striped table-hover">
		<thead>
		<tr>
		<th>Rank</th>
		<th>Player</th>
		<th>Accuracy</th>
		<th>Playcount</th>
		<th>pp</th>
		</tr>
		</thead>';
		echo '<tbody>';
		// Get all user data and order them by score
		$tb = 'leaderboard_'.getPlaymodeText($m);
		$leaderboard = $GLOBALS['db']->fetchAll("SELECT users_stats.*, $tb.* FROM users_stats INNER JOIN $tb ON users_stats.id=$tb.user ORDER BY $tb.position;");
		// Set rank to 0
		$r = 0;
		$allowedUsers = getAllowedUsers();
		// Print table rows
		foreach ($leaderboard as $lbUser) {
			// Make sure that this user is not banned
			if(empty($cty)){
				$check_country = true;
			}else{
				if((strtolower($lbUser['country']) == strtolower($cty) && $lbUser['show_country'] == 1) or $xx)
					$check_country = true;
				else
					$check_country = false;
			}
			if ($allowedUsers[$lbUser['username']] && $check_country) {
				// Increment rank
				$r++;
				// Style for top and noob players
				if ($r <= 3) {
					// Yellow bg and trophy for top 3 players
					$tc = 'warning';
					$rankSymbol = '<i class="fa fa-trophy"></i> ';
				} else {
					// Standard table style for everyone else
					$tc = 'default';
					$rankSymbol = '#';
				}
				// Draw table row for this user
				echo '<tr class="'.$tc.'">
				<td><b>'.$rankSymbol.$r.'</b></td>';
				if ($lbUser['country'] != 'XX' && $lbUser['show_country'] == 1) {
					$country = strtolower($lbUser['country']);
				} else {
					$country = 'xx';
				}
				echo '<td><img src="./images/flags/'.$country.'.png"/>	<a href="index.php?u='.$lbUser['id'].'&m='.$m.'">'.$lbUser['username'].'</a></td>
				<td>'.(is_numeric($lbUser['avg_accuracy_'.$modeForDB]) ? accuracy($lbUser['avg_accuracy_'.$modeForDB]) : '0.00').'%</td>
				<td>'.number_format($lbUser['playcount_'.$modeForDB]).'<i> (lvl.'.$lbUser['level_'.$modeForDB].')</i></td>
				<td>'.number_format($lbUser[$modeForDB.'_pp']).'</td>
				</tr>';
			}
		}
		// Close table
		echo '</tbody></table>';
	}

	public static function GetUserRank($u, $mode) {
		$query = $GLOBALS['db']->fetch("SELECT `position` FROM `leaderboard_$mode` WHERE `user` = ?", [$u]);
		if ($query !== false) {
			$rank = (string) current($query);
		} else {
			$rank = 'Unknown';
		}

		return $rank;
	}

	public static function GetUserMapRank($user, $hash) {
		$query = $GLOBALS['db']->fetchAll("SELECT * FROM `scores` WHERE `beatmap_md5` = ? ORDER BY `score` DESC;", [$hash]);
		$r = 1;
		$user_rank = 1;
		$n = true;
		foreach($query as $rank){
			if($rank['username'] == $user && $n){
				$user_rank = $r;
				$n = false;
			}
			$r++;
		}
		return $user_rank;
	}
	public static function GetUserMapPP($user, $hash) {
		$query = $GLOBALS['db']->fetch("SELECT `position` FROM `scores` WHERE `beatmap_md5` = ? AND `user` = ? ORDER BY `score` DESC;", [$hash, $user]);
		if ($query !== false) {
			$pp = (string) current($query);
		} else {
			$pp = 0;
		}

		return $pp;
	}

	public static function BuildLeaderboard() {
		// Declare stuff that will be used later on.
		$modes = ['std', 'taiko', 'ctb', 'mania'];
		$data = ['std' => [], 'taiko' => [], 'ctb' => [], 'mania' => []];
		$allowedUsers = getAllowedUsers('id');
		// Get all user's stats
		$users = $GLOBALS['db']->fetchAll('SELECT `id`, `std_pp`, `mania_pp`, `ctb_pp`, `taiko_pp` FROM `users_stats`');
		// Put the data in the correct way into the array.
		foreach ($users as $user) {
			if (!$allowedUsers[$user['id']]) {
				continue;
			}
			foreach ($modes as $mode) {
				$data[$mode][] = ['user' => $user['id'], 'pp' => $user[$mode.'_pp']];
			}
		}
		// We're doing the sorting for every mode.
		foreach ($modes as $mode) {
			// Do the sorting
			usort($data[$mode], function ($a, $b) {
				if ($a['pp'] == $b['pp']) {
					return 0;
				}
				// We're doing ? 1 : -1 because we're doing in descending order.
				return ($a['pp'] < $b['pp']) ? 1 : -1;
			});
			// Remove all data from the table
			$GLOBALS['db']->execute("TRUNCATE TABLE `leaderboard_$mode`;");
			// And insert each user.
			foreach ($data[$mode] as $key => $val) {
				$GLOBALS['db']->execute("INSERT INTO `leaderboard_$mode` (`position`, `user`, `v`) VALUES (?, ?, ?)", [$key + 1, $val['user'], $val['pp']]);
			}
		}
	}

	public static function Update($userID, $newScore, $mode) {
		// Who are we?
		$us = $GLOBALS['db']->fetch("SELECT * FROM `leaderboard_$mode` WHERE `user` = ?", [$userID]);
		$newplayer = false;
		if (!$us) {
			$newplayer = true;
		}
		// Find player who is right below our score
		$target = $GLOBALS['db']->fetch("SELECT * FROM `leaderboard_$mode` WHERE `v` <= ? ORDER BY `position` ASC LIMIT 1", [$newScore]);
		$plus = 0;
		if (!$target) {
			// Wow, this user completely sucks at this game.
			$target = $GLOBALS['db']->fetch("SELECT * FROM `leaderboard_$mode` ORDER BY `position` DESC LIMIT 1");
			$plus = 1;
		}
		// Set $newT
		if (!$target) {
			// Okay, nevermind. It's not this user to suck. It's just that no-one has ever entered the leaderboard thus far.
			// So, the player is now #1. Yay!
			$newT = 1;
		} else {
			// Otherwise, just give them the position of the target.
			$newT = $target['position'] + $plus;
		}
		if($us['position'] != 1){
			// Make some place for the new "place holder".
			if ($newplayer) {
				$GLOBALS['db']->execute("UPDATE `leaderboard_$mode` SET `position` = `position` + 1 WHERE `position` >= ? ORDER BY `position` DESC", [$newT]);
			} else {
				$GLOBALS['db']->execute("DELETE FROM `leaderboard_$mode` WHERE `user` = ?", [$userID]);
				$GLOBALS['db']->execute("UPDATE `leaderboard_$mode` SET `position` = `position` + 1 WHERE `position` < ? AND `position` >= ? ORDER BY `position` DESC", [$us['position'], $newT]);
				$GLOBALS['db']->execute("INSERT INTO `leaderboard_$mode` (`position`, `user`, `v`) VALUES (?, ?, ?)", [$newT, $userID, $newScore]);
			}
		}else{
			$GLOBALS['db']->execute("UPDATE `leaderboard_$mode` SET `v` = ? WHERE `position` = 1 AND `user` = ?", [$newScore, $userID]);
		}
	}
}
