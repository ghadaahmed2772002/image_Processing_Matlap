function [gray] = Brightness(image, index)
    [h, w] = size(image);
    gray = ones(h, w);
    gray = double(gray);

    for i = 1:h
        for j = 1:w
            if index == 1
                gray(i, j) = image(i, j) + 128;
            elseif index == 2
                gray(i, j) = image(i, j) - 128;
            elseif index == 3
                % Divide by 128 and then normalize to the range [0, 255]
                gray(i, j) = image(i, j) / 240 * 255;
            else
                gray(i, j) = image(i, j) * 2;
            end
        end
    end

    % Clip values between 0 and 255
    gray = max(min(gray, 255), 0);
    gray = uint8(gray);
end
