//Library: use Sketch / Import Library / Add Library / Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//
//Global Variables
float appWidth, appHeight;
float backgroundX, backgroundY, backgroundWidth, backgroundHeight;
Minim minim; //creates object to access all functions
AudioPlayer song1; //creates "Play List" variable holding extensions WAV, AIFF, AU, SND, and MP3
//
void setup () {
  //size(displayWidth, displayHeight); 
  fullScreen();
  minim = new Minim(this); 
  song1 = minim.loadFile("Start_Your_Engines");
  populationSetup();
  textSetup();
  imagePopulation();
  image(backgroundImage, backgroundX, backgroundY, backgroundWidth, backgroundHeight );
}//End setup
//
void draw() {
  playButton();
  quitButton();
  pauseButton();
  resetButton();
  nextButton();
  cursorDrawn();
}//End draw
//
void keyPressed() {
  int loopNum = 2; //Local Variable plays once and loops twice
  if ( key=='L' || key=='l' ) song1.loop(loopNum-1); //Parameter is Parameter is number of repeats
  if ( key=='I' || key=='i' ) song1.loop(-1); //Parameter is for infinite loops
  if ( key=='F' || key=='f' ) song1.skip(1000); //skip forward 1 second (1000 milliseconds)
  if ( key=='M' || key=='m' ) {//MUTE Button
    if ( song1.isMuted() ) {
      song1.unmute();
    } else {
      song1.mute();
    }
  }//End MUTE Button
  if ( key=='S' || key=='s' ) {//STOP Button
    if ( song1.isPlaying() ) {
      song1.pause();
      song1.rewind(); //Cue SONG to play from beginning
    } else {
      song1.rewind(); //Not playing means song is paused or song position is at the end of the file
    }
  }//End STOP Button
}//End keyPressed
//
void mouseClicked() {
  playButtonPressed();
  quitButtonPressed();
  pauseButtonPressed();
  resetButtonPressed();
  nextButtonPressed();
}//End mousePressed
//
//End Main Program
