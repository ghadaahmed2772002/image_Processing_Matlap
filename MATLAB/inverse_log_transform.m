function  [gray] = inverse_log_transform(image,c)
image = double(image) / 255;
[h, w] = size(image);
gray = zeros(h, w);
for i = 1:h
    for j = 1:w       
                gray(i, j) = (exp(image(i, j) / c) - 1);              
    end
end
% clipping image to the range [0, 1]
gray = max(min(gray, 1), 0);
gray = uint8(gray * 255);
imshow(gray);
end