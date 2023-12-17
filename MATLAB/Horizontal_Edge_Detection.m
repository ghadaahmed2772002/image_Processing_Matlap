function edgeImage = Horizontal_Edge_Detection(img)
    sobelHorizontal = [-1, -2, -1; 0, 0, 0; 1, 2, 1];
    imgd = double(img);
    % Apply Sobel filter for horizontal edge detection
    edgeImage = imfilter(imgd, sobelHorizontal);  
    % Take the absolute value to ensure positive values
    edgeImage = abs(edgeImage);
    % Normalize the gradient magnitudes
    maxMagnitude = max(edgeImage(:));
    edgeImage = edgeImage / maxMagnitude;
    % Threshold the result (you can adjust the threshold)
    threshold = 0.3; 
    edgeImage = edgeImage > threshold;
    edgeImage = uint8(edgeImage * 255);
end
