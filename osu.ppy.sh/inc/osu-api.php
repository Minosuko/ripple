<?php
class OsuAPI{
	public function __construct($key){
		$this->api_key = $key;
		$this->error = false;
		$this->error_message = null;
		$this->mod = json_decode('{"NM":0, "NF":1, "EZ":2, "HD":8,"HR": 16,"SD": 32,"DT": 64,"RX": 128,"HT": 256,"NC": 512,"FL": 1024,"AT": 2048,"SO": 4096,"AP": 8192,"PF": 16384}', true);
		$this->url_api = "https://osu.ppy.sh/api/";
	}
	
	public function get_mods_enum(){
		return $this->mod;
	}
	
	public function get_mods_name_array($mod_list){
		$mod = $this->mod;
		if(is_numeric($mod_list)){
			$m = [];
			if(($mod_list & $mod['SD']) != 0) $m[] = "SD";
			if(($mod_list & $mod['HR']) != 0) $m[] = "HR";
			if(($mod_list & $mod['HD']) != 0) $m[] = "HD";
			if(($mod_list & $mod['NF']) != 0) $m[] = "NF";
			if(($mod_list & $mod['NM']) != 0) $m[] = "NM";
			if(($mod_list & $mod['EZ']) != 0) $m[] = "EZ";
			if(($mod_list & $mod['RX']) != 0) $m[] = "RX";
			if(($mod_list & $mod['HT']) != 0) $m[] = "HT";
			if(($mod_list & $mod['DT']) != 0) $m[] = "DT";
			if(($mod_list & $mod['FL']) != 0) $m[] = "FL";
			if(($mod_list & $mod['NC']) != 0) $m[] = "NC";
			if(($mod_list & $mod['AT']) != 0) $m[] = "AT";
			if(($mod_list & $mod['SO']) != 0) $m[] = "SO";
			if(($mod_list & $mod['AP']) != 0) $m[] = "AP";
			if(($mod_list & $mod['PF']) != 0) $m[] = "PF";
			return $m;
		}else{
			return false;
		}
	}
	
	public function get_mods_name_string($mod_list){
		$mod = $this->mod;
		if(is_numeric($mod_list)){
			$m = '';
			if(($mod_list & $mod['SD']) != 0) $m .= "SD";
			if(($mod_list & $mod['HR']) != 0) $m .= "HR";
			if(($mod_list & $mod['HD']) != 0) $m .= "HD";
			if(($mod_list & $mod['NF']) != 0) $m .= "NF";
			if(($mod_list & $mod['NM']) != 0) $m .= "NM";
			if(($mod_list & $mod['EZ']) != 0) $m .= "EZ";
			if(($mod_list & $mod['RX']) != 0) $m .= "RX";
			if(($mod_list & $mod['HT']) != 0) $m .= "HT";
			if(($mod_list & $mod['DT']) != 0) $m .= "DT";
			if(($mod_list & $mod['FL']) != 0) $m .= "FL";
			if(($mod_list & $mod['NC']) != 0) $m .= "NC";
			if(($mod_list & $mod['AT']) != 0) $m .= "AT";
			if(($mod_list & $mod['SO']) != 0) $m .= "SO";
			if(($mod_list & $mod['AP']) != 0) $m .= "AP";
			if(($mod_list & $mod['PF']) != 0) $m .= "PF";
			return $m;
		}else{
			return false;
		}
	}
	
	public function is_error(){
		return $this->error;
	}
	
	public function get_error_message(){
		return $this->error_message;
	}
	
	private function Query_API($data = [], $q){
		$data["k"] = $this->api_key;
		$options = 
		[
			CURLOPT_CONNECTTIMEOUT => 600,
			CURLOPT_TIMEOUT        => 600,
			CURLOPT_HEADER         => false,
			CURLOPT_FOLLOWLOCATION => true,
			CURLOPT_RETURNTRANSFER => true,
			CURLOPT_USERAGENT      => "Curl (PHP) Osu!API.php v1",
			CURLOPT_POSTFIELDS     => $data,
			CURLOPT_SSL_VERIFYPEER => false
		];
		$url = $this->url_api . $q;
		$ch = curl_init($url);
		curl_setopt_array($ch, $options);
		$content = curl_exec($ch);
		curl_close($ch);
		$json = json_decode($content, true);
		return $json;
	}
	
	private function is_valid_image($url, $check){
		if($check){
			$params = array('http' => array('method' => 'HEAD'));
			$ctx = stream_context_create($params);
			$fp = @fopen($url, 'rb', false, $ctx);
			if (!$fp)
			{
				$this->error_message = "URL_FOPEN_FAILED";
				$this->error = true;
				return false;
			}
			$meta = stream_get_meta_data($fp);
			if ($meta === false)
			{
				$this->error_message = "FAILED TO GET META DATA";
				$this->error = true;
				fclose($fp);
				return false;
			}
			$wrapper_data = $meta["wrapper_data"];
			if (is_array($wrapper_data))
			{
				foreach (array_keys($wrapper_data) as $hh)
				{
					if (strtolower(substr($wrapper_data[$hh]), 0, 19) == "content-type: image")
					{
						fclose($fp);
						return $url;
					}
				}
			}
			fclose($fp);
			$this->error_message = "NULL";
			$this->error = true;
			return false;
		}
		else
		{
			return $url;
		}
	}
	
	public function get_beatmaps($data){
		$query = $this->Query_API($data, "get_beatmaps");
		if (isset($query->error))
		{
			$this->error_message = $query->error;
			$this->error = true;
			return false;
		}
		else
		{
			return $query;
		}
	}
	
	public function get_beatmap_cover_image($id, $check = false){
		return $this->is_valid_image("https://assets.ppy.sh/beatmaps/" . $id . "/covers/cover.jpg", $check);
	}
	
	public function get_beatmap_cover_thumbnail($id, $check = false){
		return $this->is_valid_image("https://b.ppy.sh/thumb/" . $id . "l.jpg", $check);
	}
	
	public function get_user_profile_image($id, $check = false){
		return $this->is_valid_image("http://s.ppy.sh/a/" . $id, $check);
	}
	
	public function get_user($u, $m = 0, $event_days = 1){
		if (empty($u))
		{
			$this->error = true;
			return false;
		}
		else
		{
			$data = ["u" => $u, "m" => $m, "event_days" => $event_days];
			$query = $this->Query_API($data, "get_user");
			if (isset($query->error))
			{
				$this->error_message = $query->error;
				$this->error = true;
				return false;
			}
			else
			{
				return $query;
			}
		}
	}
	
	public function get_user_best($u, $m = 0, $limit  = 10){
		if (empty($u))
		{
			$this->error = true;
			return false;
		}
		else
		{
			$data = ["u" => $u, "m" => $m, "limit " => $limit];
			$query = $this->Query_API($data, "get_user_best");
			if (isset($query->error))
			{
				$this->error_message = $query->error;
				$this->error = true;
				return false;
			}
			else
			{
				return $query;
			}
		}
	}
	
	public function get_scores($u, $b, $m = 0, $mods = null){
		if (empty($b) or empty($u))
		{
			$this->error = true;
			return false;
		}
		else
		{
			if($mod == null)
			{
				$data = ["b" => $b, "u" => $u, "m" => $m];
			}
			else
			{
				$data = ["b" => $b, "u" => $u, "m" => $m, "mods" => $mods];
			}
			$query = $this->Query_API($data, "get_scores");
			if (isset($query->error))
			{
				$this->error_message = $query->error;
				$this->error = true;
				return false;
			}
			else
			{
				return $query;
			}
		}
	}
	
	public function get_replay($data){
		$query = $this->Query_API($data, "get_replay");
		if (isset($query->error))
		{
			$this->error_message = $query->error;
			$this->error = true;
			return false;
		}
		else
		{
			return $query;
		}
	}
}
?>