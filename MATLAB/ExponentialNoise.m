function image_noise = ExponentialNoise(img, a)
    img = double(img);
    [h, w, l] = size(img);

    for i = 1:255
        Np = round((a * exp(-a * i))*w*h);  % Number of pixels to apply adaptive noise
        
        % Apply adaptive noise
        for j = 1:Np
            x = ceil(rand(1, 1) * h);  % random row
            y = ceil(rand(1, 1) * w);  % random col
            img(x, y) = img(x, y) + i;
        end
    end
    
    % Normalize range to [0, 255]
    for k = 1:l
        mn = min(min(img(:,:,k)));
        mx = max(max(img(:,:,k)));
        img(:,:,k) = ((img(:,:,k) - mn) / (mx - mn)) * 255;
    end

    img = uint8(img);
    image_noise = img;
end
