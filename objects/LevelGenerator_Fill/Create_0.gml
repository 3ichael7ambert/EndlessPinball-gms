/*
    This is a basic example of how you could start
    making a randomly generated level. There could
    be more rules added to make sure players can 
    always find a way to the exit, etc, etc.
*/

var ROOM_CHUNK_WIDTH = roomdog_get_room_width(rChunk1);
var ROOM_CHUNK_HEIGHT = roomdog_get_room_height(rChunk1);

for(var X=0; X<room_width; X+=ROOM_CHUNK_WIDTH) 
    for(var Y=0; Y<room_height; Y+=ROOM_CHUNK_HEIGHT)
    {
        var RANDOM_FILE = ds_list_find_value(RoomChunkManager.fileChunks, 
                                             irandom(ds_list_size(RoomChunkManager.fileChunks)-1));
        roomdog_paste_room(RANDOM_FILE, X, Y,choose(1,-1),choose(1,-1));
    }

/* */
/*  */
