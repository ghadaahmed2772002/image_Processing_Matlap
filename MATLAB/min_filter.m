function [min_image] = min_filter(img, window_size)
    [w, h] = size(img);
    w_h = floor(window_size / 2);
    min_image = zeros(w, h);
    imgd = double(img);

    for i = 1 + w_h : w - w_h
        for j = 1 + w_h : h - w_h  
            arr_neighbour = imgd(i - w_h : i + w_h, j - w_h : j + w_h);
            min_image(i, j) = min(arr_neighbour(:));
        end
    end
    min_image = uint8(min_image);
end