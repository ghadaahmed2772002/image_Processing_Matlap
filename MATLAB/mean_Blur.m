function output = mean_Blur(img, w)
    [row_img, col_img] = size(img); 
    output = zeros(row_img, col_img);
    imgd = double(img);

    for i = 1:row_img
        for j = 1:col_img
            % Calculate valid range for subrow and subcol
            minRow = max(1, i - w);
            maxRow = min(row_img, i + w);
            minCol = max(1, j - w);
            maxCol = min(col_img, j + w);
            
           
            roi = imgd(minRow:maxRow, minCol:maxCol);
            
            % Compute the mean and assign it to the output
            output(i, j) = mean(roi(:));
        end
    end

    output = uint8(output);
end
