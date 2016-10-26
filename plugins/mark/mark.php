<?php

waterMark($_SERVER['DOCUMENT_ROOT'].$_SERVER['REQUEST_URI']);

function waterMark($original)
{

  $original = urldecode($original);
  $info_o = @getImageSize($original);
  if (!$info_o)
    return false;
  $info_w = @getImageSize('watermark.png');
  if (!$info_w)
    return false;

  header("Content-Type: ".$info_o['mime']);

  $original = @imageCreateFromString(file_get_contents($original));
  $watermark = @imagecreatefrompng("watermark.png");
  $out = imageCreateTrueColor($info_o[0],$info_o[1]);

  imageCopyMerge($out, $original, 0, 0, 0, 0, $info_o[0], $info_o[1], 100);
  // The watermark is imposed only on the image to 250 pixels vertically and horizontally.
  if( ($info_o[0] > 250) && ($info_o[1] > 250) )
  {
    // For images without alpha channel
    // The last parameter of a function - the opacity of the watermark.
    imageCopyMerge($out, $watermark, ($info_o[0]-$info_w[0])/2, ($info_o[1]-$info_w[1])/2, 0, 0, $info_w[0], $info_w[1], 25);

    // For images with alpha channel
    // In this case the transparency are adjustable by the alpha channel of image
    // imageCopy($out, $watermark, ($info_o[0]-$info_w[0])/2, ($info_o[1]-$info_w[1])/2, 0, 0, $info_w[0], $info_w[1]);
  }

  switch ($info_o[2])
  {
  case 1:
    imageGIF($out);
    break;
  case 2:
    imageJPEG($out);
    break;
  case 3:
    imagePNG($out);
    break;
  default:
    return false;
  }

  imageDestroy($out); 
  imageDestroy($original); 
  imageDestroy($watermark); 

  return true; 
} 

?>
