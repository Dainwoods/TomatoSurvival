///gameOver()
if(score > global.highscore) {
    global.highscore = score;
}
room_goto(room_gameOver);
