PImage resetImage, resetButtonImageRatio, backgroundImage;
float resetButtonImageRectWidth, resetButtonImageRectHeight, resetButtonImageRectX, resetButtonImageRectY;
//
void imagePopulation() {
  resetImage = loadImage ("pexels-pixabay-268533");
  backgroundImage = loadImage ("Billie_Eilish_2019_by_Glenn_Francis_(cropped)_2");
}//End population
//
void resetButtonImage() {
  float resetButtonImageWidth=820, resetButtonImageHeight=765;
  float resetButtonImageWidthAdjusted=0, resetButtonImageHeightAdjusted=0;
  float resetButtonImageWidthCalculated=0, resetButtonImageHeightCalculated=0;
  float largerDimension=0, smallerDimension=0;
  float imageWidthRatio=0, imageHeightRatio=0;
  resetButtonImageRatio = resetImage;
  if (resetButtonImageWidth >= resetButtonImageHeight) {
    largerDimension=resetButtonImageWidth;
    smallerDimension=resetButtonImageHeight;

    resetButtonImageWidthAdjusted = resetButtonImageRectWidth;
    imageHeightRatio = smallerDimension / largerDimension;
    resetButtonImageHeightCalculated = resetButtonImageWidthAdjusted * imageWidthRatio;
    fill (blue);
    rect (resetX, resetY, resetWidth, resetHeight);
    noFill();
    image(resetButtonImageRatio, resetButtonImageRectX, resetButtonImageRectY, resetButtonImageWidthAdjusted, resetButtonImageHeightCalculated);
  } else {
    largerDimension=resetButtonImageHeight;
    smallerDimension=resetButtonImageWidth;

    resetButtonImageHeightAdjusted = resetButtonImageRectHeight;
    imageHeightRatio = smallerDimension / largerDimension;
    resetButtonImageWidthCalculated = resetButtonImageHeightAdjusted * imageHeightRatio;
    fill (blue);
    rect (resetX, resetY, resetWidth, resetHeight);
    noFill();
    image(resetButtonImageRatio, resetButtonImageRectX+resetWidth/2-resetButtonImageWidthCalculated/2, resetButtonImageRectY, resetButtonImageWidthCalculated, resetButtonImageHeightAdjusted);
  }
}//End resetButtonImage

//
//End Images
