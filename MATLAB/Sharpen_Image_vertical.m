function sharpenedImage = Sharpen_Image_vertical(img)
    % Vertical sharpening mask
    verticalSharpenKernel = [0, -1, 0; 0, 5, 0; 0, -1, 0];
    % apply Vertical sharpening using the Img_filter function
    sharpenedImage = myFilter(img, verticalSharpenKernel);
    %normalize data range [0,255]
    sharpenedImage = max(0, min(255, sharpenedImage));
    sharpenedImage = uint8(sharpenedImage);
end

%mask---> 0 -1  0
%         0  5  0 
%         0 -1  0 