///lightningStrike(pointArr)
var pointArr = argument[0];
for(i = 1; i < array_length_1d(pointArr); i++) {
    var oldVector = pointArr[i - 1];
    var vector = pointArr[i];
    var startX = oldVector[0];
    var startY = oldVector[1];
    var endX = vector[0];
    var endY = vector[1];
    var strike = instance_create(startX, startY, obj_thunderStrike);
    strike.startX = startX;
    strike.startY = startY;
    strike.endX = endX;
    strike.endY = endY;
}
