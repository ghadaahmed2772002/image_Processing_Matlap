function edgeImage = Right_Diagonal_Edge_Detection(img)
    prewittRightDiagonal = [-1, -1, 0; -1, 0, 1; 0, 1, 1];
    % Convert the image to double
    imgd = double(img);


    % Apply Prewitt operator
    edgeImage =Img_filter(imgd , prewittRightDiagonal);

    % Threshold the result (you can adjust the threshold)
    threshold = 50;
    edgeImage = edgeImage > threshold;
end