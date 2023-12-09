/// @description init

/*
    add your room chunks to this list
    to copy them at the start of the
    game. You can then paste them at
    will in-game.
*/
roomChunks = ds_queue_create();
ds_queue_enqueue(roomChunks,rChunk1);
ds_queue_enqueue(roomChunks,rChunk2);
ds_queue_enqueue(roomChunks,rChunk3);

/*
    these are the corresponding file 
    names of the exported rooms
*/

fileChunks = ds_list_create();

/*
    attributes we might need to access quickly
*/
roomWidths = ds_map_create();
roomHeights = ds_map_create();

saveThisRoom = false;

/* */
/*  */
