function edgeImage = point_Edge_Detection(img)
    filter = [0 1 0; 1 -4 1; 0 1 0];
    % Apply Sobel filter for point  edge detection
    edgeImage = myFilter(img, filter); 
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
