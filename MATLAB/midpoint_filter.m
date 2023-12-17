function [image] = midpoint_filter(img, window_size)
    [w, h] = size(img);
    w_h = floor(window_size / 2);
    image = zeros(w, h);
    imgd = double(img);

    for i = 1 + w_h : w - w_h
        for j = 1 + w_h : h - w_h  
            arr_neighbour = imgd(i - w_h : i + w_h, j - w_h : j + w_h);
            image(i, j) = (max(arr_neighbour(:)) + min(arr_neighbour(:))) / 2;
        end
    end
    image = uint8(image);
end