function get_default_settings() {
	return {
		volume_master: 100,
		volume_fx: 100,
		volume_bg: 80
	}
}



function load_user_settings() {
	
	var default_settings = get_default_settings()

	if ( !file_exists("savedata.ini") ) {
		
		ini_open("savedata.ini")
		
		ini_write_real("volume", "volume_master", default_settings.volume_master);
		ini_write_real("volume", "volume_bg", default_settings.volume_bg);
		ini_write_real("volume", "volume_fx", default_settings.volume_fx);
		
		ini_close()
		
		return default_settings;
	}
			
			
	ini_open("savedata.ini")
					
	var user_settings = { }
	
	var _volume_master = ini_read_real("volume", "volume_master", 0)
	var _volume_bg =  ini_read_real("volume", "volume_bg", 0)
	var _volume_fx =  ini_read_real("volume", "volume_fx", 0)
	
	
	user_settings.volume_master = is_numeric( _volume_master ) ? _volume_master : default_settings.volume_master;
	user_settings.volume_bg = is_numeric( _volume_bg ) ? _volume_bg : default_settings.volume_bg
	user_settings.volume_fx = is_numeric( _volume_fx ) ? _volume_fx : default_settings.volume_fx;

	ini_close()
	
	return user_settings
	
}

function save_user_settings() {
	
	ini_open("savedata.ini")
	
	ini_write_real("volume", "volume_master", global.user_settings.volume_master);
	ini_write_real("volume", "volume_bg", global.user_settings.volume_bg);
	ini_write_real("volume", "volume_fx", global.user_settings.volume_fx);
	
	ini_close()
	
}
