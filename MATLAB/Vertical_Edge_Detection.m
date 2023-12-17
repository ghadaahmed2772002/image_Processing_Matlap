function edgeImage = Vertical_Edge_Detection(img)

    sobelVertical = [-1, 0, 1; -2, 0, 2; -1, 0, 1];
    edgeImage = myFilter(img, sobelVertical);
    % Threshold the result (you can adjust the threshold)
    threshold = 50;
    edgeImage = edgeImage > threshold;
end