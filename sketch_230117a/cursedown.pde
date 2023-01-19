void cursorDrawn() {
  if (mouseX>=playX && mouseX<=playX+playWidth && mouseY>=playY && mouseY<=playY+playHeight || mouseX>=quitX && mouseX<=quitX+quitWidth && mouseY>=quitY && mouseY<=quitY+quitHeight || mouseX>=nextX && mouseX<=nextX+nextWidth && mouseY>=nextY && mouseY<=nextY+nextHeight || mouseX>=pauseX && mouseX<=pauseX+pauseWidth && mouseY>=pauseY && mouseY<=pauseY+pauseHeight || mouseX>=resetX && mouseX<=resetX+resetWidth && mouseY>=resetY && mouseY<=resetY+resetHeight) 
  { 
    cursor(HAND);
  } else {
    cursor(ARROW);
  }
}//End Cursor
