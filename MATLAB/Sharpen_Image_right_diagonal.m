function sharpenedImage = Sharpen_Image_right_diagonal(img)
    % left diagonal sharpening mask
    rightSharpenKernel = [-1 0 0; 0 2 0; 0 0 -1];
    % apply right diagonal  sharpening using the Img_filter function
    sharpenedImage = myFilter(img, rightSharpenKernel);
    %normalize data range [0,255]
    sharpenedImage = max(0, min(255, sharpenedImage));
    sharpenedImage = uint8(sharpenedImage);
end