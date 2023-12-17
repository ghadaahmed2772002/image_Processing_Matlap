function sharpenedImage = Sharpen_Image_left_diagonal(img)
    % left diagonal sharpening mask
    leftSharpenKernel = [0, -1, 0; 0, 5, 0; 0, -1, 0];
    % apply left diagonal  sharpening using the Img_filter function
    sharpenedImage = myFilter(img, leftSharpenKernel);
    %normalize data range [0,255]
    sharpenedImage = max(0, min(255, sharpenedImage));
    sharpenedImage = uint8(sharpenedImage);
end