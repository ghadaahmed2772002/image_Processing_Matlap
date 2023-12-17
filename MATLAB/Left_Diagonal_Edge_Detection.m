function edgeImage = Left_Diagonal_Edge_Detection(img)
    % Prewitt operator for left diagonal edges
    prewittLeftDiagonal = [0, 1, 1; -1, 0, 1; -1, -1, 0];
    imgd =double(img);
    % Apply Prewitt operator
    edgeImage = Img_filter(imgd, prewittLeftDiagonal);

    % Threshold the result (you can adjust the threshold)
    threshold = 50;
    edgeImage = edgeImage > threshold;
end