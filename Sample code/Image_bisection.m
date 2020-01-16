%% Segment Image Using Graph Cut
%%%%%%%%

%% Graph cut is a semiautomatic segmentation technique that you can use to segment an image into 
%% foreground and background elements.

b = imread('baby.jpg');

%% open the Apps tab and under Image Processing and Computer Vision, click Image Segmenter

%% click Load Image, and then select Load Image from Workspace

%% Select Graph Cut in the Segmentation Tools section of the Tool strip. 

%% Mark the elements of the image you want to be in the foreground. 

%% mark the elements of the image you want to be in the background.

%% Apply. The Image Segmenter changes the color of the segmented part of the image to yellow. 
%% To view the mask image, click Show Binary.
