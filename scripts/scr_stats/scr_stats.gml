function get_default_stats () {
	return {
		points: 0,
		max_points: 0,
		new_record: false
	}
}



function get_user_stats() {
	
	var default_stats = get_default_stats()
	
	if ( !file_exists("user_data.json") ) {
		
		var file = file_text_open_write("user_data.json")
		
		file_text_write_string(file, json_stringify(default_stats, true) );
		
		file_text_close(file)
		
		return default_stats
	}
	
	
	var buff = buffer_load("user_data.json")
	var stats = buffer_read(buff, buffer_string)
	buffer_delete(buff)
	
	
	return json_parse(stats)
	
}


function save_user_stats(stats) {
	
	var file = file_text_open_write("user_data.json")
	
	file_text_write_string(file, json_stringify( stats, true ) );
	
	file_text_close(file)
	
}
	
	