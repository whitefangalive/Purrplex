// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function saveLevel(){
                // save data
                var _saveData = array_create(0);
                var _saveEntity = 
                {
                    inRoom : room
                }
                array_push(_saveData, _saveEntity);
                //JSON saving
                var _string = json_stringify(_saveData);
                var _buffer = buffer_create(string_byte_length(_string) +1, buffer_fixed, 1);
                buffer_write(_buffer, buffer_string, _string);
                buffer_save(_buffer, "progress.save");
                buffer_delete(_buffer);
                
                show_debug_message("Progress Saved: " + _string);
}