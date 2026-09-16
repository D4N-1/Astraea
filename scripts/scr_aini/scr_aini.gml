global.settings_ini = {
	
	/// @desc Escribe en una key de los ajustes de usuario
	/// @param {string} key Clave del atributo a editar
	/// @param {any} value Dato a guardar
	write: function(section, key, value) {
		ini_open("savedata.ini")
		
		ini_write_real(section, key, value)
		
		ini_close()
	},
	
	
	/// @desc Lee en una key de los ajustes de usuario
	/// @param {string} key Clave del atributo a editar
	/// @param {any} value Dato a guardar
	read: function(section, key) {
		ini_open("savedata.ini")
		
		var _value = ini_read_real(section, key, 0)
		
		ini_close()
		
		return _value
	}
	
}