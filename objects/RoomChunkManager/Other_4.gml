/// @description save rooms

/*
    this loops from the rLoadRoomChunks room
    to the next queued room, copies it, and
    returns to the rLoadRoomChunks room. Once
    all rooms are copied it goes to the next 
    room.
*/
if(room == rLoadRoomChunks)
{
    if(ds_queue_size(roomChunks)>0)
    {
        saveThisRoom = true;
        room_goto(ds_queue_dequeue(roomChunks));
    }
    else
        room_goto_next();
}        
else if(saveThisRoom)
{
    saveThisRoom = false;
    roomdog_copy_room();
    room_goto(rLoadRoomChunks);   
}

/* */
/*  */
