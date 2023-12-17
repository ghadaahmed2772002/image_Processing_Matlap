function [max_image] = max_filter(img, window_size)
    [w, h] = size(img);
    %calc half of the window size and takes the floor to ensure it's an integer.
    w_h = floor(window_size / 2);

    max_image = zeros(w, h);
    imgd = double(img);

    for i = 1 + w_h : w - w_h
        for j = 1 + w_h : h - w_h  
            %extracts  neighborhood around the current pixel.
            arr_neighbour = imgd(i - w_h : i + w_h, j - w_h : j + w_h);
            max_image(i, j) = max(arr_neighbour(:));
        end
    end
    max_image = uint8(max_image);
   
end
