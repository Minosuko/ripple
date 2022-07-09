<?php

class URL {
	public static function Avatar() {
		global $URL;

		return isset($URL['avatar']) ? $URL['avatar'] : 'https://a.zamaru.ml';
	}

	public static function Server() {
		global $URL;

		return isset($URL['server']) ? $URL['server'] : 'https://zamaru.ml';
	}
}
