function sharpenedImage = Sharpen_Image_horizontal(img)
    % horizontal sharpening mask
    horizontalSharpenKernel = [0, -1, 0; 2, 2, 2; 0, -1, 0];    
    % Convert the image to double for processing
    imgd = double(img);
    % apply horizontal sharpening using the Img_filter function
    sharpenedImage = Img_filter(imgd, horizontalSharpenKernel);
    sharpenedImage = max(0, min(255, sharpenedImage));
    sharpenedImage = uint8(sharpenedImage);
end
