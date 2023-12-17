function sharpenedImage = point_sharping(img)
    % laplacian kernel 
    laplacianFilter = [0 -1 0; -1 5 -1; 0 -1 0];

    % here we applied laplacian filter
    sharpenedImage =myFilter(img, laplacianFilter);
    %we used function img_filter that move pixel pixel in image to
    %maultiply with filter index 
    % clipping  values 0 --> 255
    sharpenedImage = max(0, min(255, sharpenedImage));
    sharpenedImage = uint8(sharpenedImage);
end
