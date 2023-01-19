void populationSetup() {
  appWidth = width;
  appHeight=height;
  //
  playX= appWidth/8;
  playY= appHeight/4;
  playWidth= appWidth/3;
  playHeight= appHeight/10;
  //
  quitX= appWidth*3/5 ;
  quitY= appHeight/4;
  quitWidth= playWidth;
  quitHeight= appHeight/10;
  //
  pauseX= appWidth/8;
  pauseY= appHeight*2/3;
  pauseWidth= playWidth;
  pauseHeight= appHeight/10;
  //
  resetX= appWidth*3/5;
  resetY= appHeight*2/3;
  resetWidth=playWidth ;
  resetHeight= appHeight/10;
  //
  nextWidth= appWidth/3 ;
  nextHeight= appHeight/10 ;
  nextX= appWidth/3 ;
  nextY= appHeight*2/4.5;
  //
  resetButtonImageRectWidth = resetWidth;
  resetButtonImageRectHeight = resetHeight; 
  resetButtonImageRectX = resetX; //Will need to be fixed
  resetButtonImageRectY = resetY;
  //
  backgroundX = appWidth * 0;
  backgroundY = appHeight * 0;
  backgroundWidth = appWidth;
  backgroundHeight = appHeight;
}//End populationSetup
//
//End Population Subprogram
