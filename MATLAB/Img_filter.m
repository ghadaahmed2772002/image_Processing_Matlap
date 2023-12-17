function result = Img_filter(image, mask)
    [img_height, img_width] = size(image);    %here i take img w,h
    [mask_height, mask_width] = size(mask);   %here i take mask w,h
    
    % ensure the filter is symmetric have filter 3*3 || 5*5 || 7*7
    if mod(mask_height, 2) == 0 || mod(mask_width, 2) == 0
        error('mask should be like  3*3 or 5*5  odd*odd ');
    end
    
    
    result = zeros(img_width, img_height);  %initial res matrix
    
    % Pad the image with 1 or 2 according to its size 
    pad_height = floor(mask_height / 2);
    pad_width = floor(mask_width / 2);
    paddedImage = padarray(image, [pad_height, pad_width], 'replicate', 'both');  %useful for preserving the edge values and avoiding artifacts.
    
    % Apply the filter
    for i = 1:img_height
        for j = 1:img_width
            result(i, j) = sum(sum(paddedImage(i:i+mask_height-1, j:j+mask_width-1) .* mask));
            result(i, j) = max(0, min(result(i, j), 255));
            % ensuring that the values in the matrix result at position (i, j) are within the range [0, 255].
        end
    end
end
