function [binary] = rgb2binary(rgb)
    gray = rgb;

    [h, w] = size(gray);
    binary = zeros(h, w);

    for i = 1:h
        for j = 1:w
            if gray(i, j) >= 100
                binary(i, j) = 1;
            else
                binary(i, j) = 0;
            end
        end
    end

    binary = logical(binary);
end
