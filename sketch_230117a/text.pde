int size = 60;
PFont arial;
color white=#FFFFFF;
//
void textSetup() {
  arial = createFont ("Arial", 55);
}//End textSetup
//
void playButtonText() {
  fill(black);
  textAlign(CENTER, CENTER);
  textFont(arial, size);
  String playText="Play";
  text(playText, playX, playY, playWidth, playHeight);
  noFill();
}//End playtext

void quitButtonText() {
  fill(black);
  textAlign(CENTER, CENTER);
  textFont(arial, size);
  String quitText="Quit";
  text(quitText, quitX, quitY, quitWidth, quitHeight);
  noFill();
}//End quitText

void pauseButtonText() {
  fill(black);
  textAlign(CENTER, CENTER);
  textFont(arial, size);
  String pauseText="Pause";
  text(pauseText, pauseX, pauseY, pauseWidth, pauseHeight);
  noFill();
}//End pauseText

void nextButtonText() {
  fill(white);
  textAlign(CENTER, CENTER);
  textFont(arial, size);
  String nextText="Next";
  text(nextText, nextX, nextY, nextWidth, nextHeight);
  noFill();
}//End nextText

void resetButtonText() {
  fill(black);
  textAlign(CENTER, CENTER);
  textFont(arial, size);
  String resetText="Rewind";
  text(resetText, resetX, resetY, resetWidth, resetHeight);
  noFill();
}//End resetText
//
void quitHoverOverText() {
  fill(black);
  textAlign(CENTER,CENTER);
  textFont(arial, size);
  String quitText="Bye!";
  text(quitText, quitX, quitY, quitWidth, quitHeight);
}
//End Text Subprogram
