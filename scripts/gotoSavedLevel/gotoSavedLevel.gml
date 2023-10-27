// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function gotoSavedLevel(){
	if (file_exists("progress.save")) {
	    var _buffer = buffer_load("progress.save");
	    var _string = buffer_read(_buffer, buffer_string);
	    buffer_delete(_buffer);
	    var _loadData = json_parse(_string);

	    var _loadEntity = array_pop(_loadData);    
	        room_goto(_loadEntity.inRoom);
	}
}