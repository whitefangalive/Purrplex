// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function findNearestNotInList(pointx, pointy, object, notInList){
var list,nearest;
    list = ds_priority_create();
    nearest = noone;
    with (object)  {
		if (!array_contains(notInList, id)) {
			ds_priority_add(list,id,distance_to_point(pointx,pointy)); 
		}
	}
    repeat (ds_priority_size(list)) nearest = ds_priority_delete_max(list);
    ds_priority_destroy(list);
    return nearest;
}