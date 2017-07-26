///thunder()
var cloud = instance_create(512, 32, obj_thunderClouds);
/*var startX = irandom_range(0, room_width);
startX = startX - (startX mod(32)) + 16;
var startY = 0;
var vector;
vector[0] = startX;
vector[1] = startY;
var pointArr;
pointArr[0] = vector;
for(i = 1; i < 24; i++) {
    var oldVector = pointArr[i - 1];
    vector[0] = oldVector[0] + choose(-32, 0, 32);
    vector[0] = clamp(vector[0], 0, room_width);
    vector[1] = oldVector[1] + 8;
    pointArr[i] = vector;
}
cloud.pointArr = pointArr;*/
