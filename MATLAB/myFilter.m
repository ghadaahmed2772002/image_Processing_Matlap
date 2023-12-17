function [result] = myFilter(img, myFilter)
   %this func for im2filter 
    myFilter = double(myFilter);
    k = 1;
    img = double(padarray(img, [k, k]));
    [h, w, l] = size(img);
    result = zeros(h, w, l);

    if l == 1
        for i = 2:h-1
            for j = 2:w-1
                s = img(i-1:i+1, j-1:j+1);
                sum1 = sum(sum(s .* myFilter));
                result(i, j) = sum1;
                if result(i, j) > 255
                    result(i, j) = 255;
                elseif result(i, j) < 0
                    result(i, j) = 0;
                end
            end
        end
    else
        for k = 1:3
            for i = 2:h-1
                for j = 2:w-1
                    s = img(i-1:i+1, j-1:j+1, k);
                    sum1 = sum(sum(s .* myFilter));
                    result(i, j, k) = sum1;
                    if result(i, j, k) > 255
                        result(i, j, k) = 255;
                    elseif result(i, j, k) < 0
                        result(i, j, k) = 0;
                    end
                end
            end
        end
        result = uint8(result);
    end
    % Normalize the result to be in the valid range [0, 255]
    result = result / max(result(:)) * 255;

    % Convert the result to uint8
    result = uint8(result);
end