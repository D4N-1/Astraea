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
		
		
		global.settings_ini.write("volume", "volume_master", default_settings.volume_master);
		global.settings_ini.write("volume", "volume_bg", default_settings.volume_bg);
		global.settings_ini.write("volume", "volume_fx", default_settings.volume_fx);
		
		return default_settings;
	}
			
	var user_settings = { }
	
	var _volume_master = global.settings_ini.read("volume", "volume_master")
	var _volume_bg = global.settings_ini.read("volume", "volume_bg")
	var _volume_fx = global.settings_ini.read("volume", "volume_fx")
	
	
	user_settings.volume_master = is_numeric( _volume_master ) ? _volume_master : default_settings.volume_master;
	user_settings.volume_bg = is_numeric( _volume_bg ) ? _volume_bg : default_settings.volume_bg
	user_settings.volume_fx = is_numeric( _volume_fx ) ? _volume_fx : default_settings.volume_fx;

	
	return user_settings
	
}

function save_user_settings() {
	
	ini_open("savedata.ini")
	
	ini_write_real("volume", "volume_master", global.user_settings.volume_master);
	ini_write_real("volume", "volume_bg", global.user_settings.volume_bg);
	ini_write_real("volume", "volume_fx", global.user_settings.volume_fx);
	
	ini_close()
	
}
