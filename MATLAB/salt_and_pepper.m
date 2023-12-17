function [image_noise] = salt_and_pepper(img, prob_salt, prob_peper)
    [h w l] = size(img);
    
    Ns = round(prob_salt * w * h);   % Number of salt pixels
    Np = round(prob_peper * w * h);  % Number of pepper pixels
    
    % add salt noise
    for i = 1:Ns
        x = ceil(rand(1,1) *h) ;% Random row
        y = ceil(rand(1,1) *w);  % Random col
        img(x, y) = 255;
    end
    
    % add pepper noise
    for i = 1:Np
         x = ceil(rand(1,1) *h) ; % Random row
         y = ceil(rand(1,1) *w);  % Random col
        img(x, y) = 0;
    end
    
    image_noise = img;
    image_noise=uint8(image_noise);
end
