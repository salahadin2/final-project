float playX, playY, playWidth, playHeight;
float quitX, quitY, quitWidth, quitHeight;
float pauseX, pauseY, pauseWidth, pauseHeight;
float resetX, resetY, resetWidth, resetHeight;
float nextX, nextY, nextWidth, nextHeight;
//
color green=#00FF00, red=#FF0000, teal=#00ECFF, blue=#00009B, black=#000000;
//
void playButton() {
  playHoverOver();
}//End play
//
void quitButton() {
  quitHoverOver();
}//End play
//
void pauseButton() {
  pauseHoverOver();
}//End pause
//
void resetButton() {
  resetHoverOver();
}//End reset
//
void nextButton() {
  nextHoverOver();
}//End next
//
//
//
//  - -Buttons pressed- -
void playButtonPressed() {
  if (mouseX>=playX && mouseX<=playX+playWidth && mouseY>=playY && mouseY<=playY+playHeight) {
    song1.play();
  }
}//End playPressed
//
void quitButtonPressed() {
  if (mouseX>=quitX && mouseX<=quitX+quitWidth && mouseY>=quitY && mouseY<=quitY+quitHeight) {
    exit();
  }
}//End quitPressed
// 
void nextButtonPressed() {
  if (mouseX>=nextX && mouseX<=nextX+nextWidth && mouseY>=nextY && mouseY<=nextY+nextHeight);
}//End nextPressed
//
void pauseButtonPressed() {
  if (mouseX>=pauseX && mouseX<=pauseX+pauseWidth && mouseY>=pauseY && mouseY<=pauseY+pauseHeight) {
    if ( song1.isPlaying() ) {
      song1.pause();
    }
  }
}//End pausePressed
//
void resetButtonPressed() {
  if (mouseX>=resetX && mouseX<=resetX+resetWidth && mouseY>=resetY && mouseY<=resetY+resetHeight) {
    song1.skip(-1000000000); //A morbillion seconds
  }
}//End resetButtonPressed
//
//End Buttons Subprogram
