///buildArr(up to 12)
if(argument[0] == -1) {
    global.arr[global.yArr, 0] = -1;
    global.yArr--;
}
else {
    for(i = 0; i < argument_count; i++) {
        global.arr[global.yArr, i] = argument[i];
    }
    global.yArr--;
}
