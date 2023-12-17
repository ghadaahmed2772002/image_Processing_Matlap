function [image_noise] = GaussianNoise(img, sigma, u)
    img=double(img);
    [h w l] = size(img);   
  
    for i = 1:255
        Np =((1/sigma) * (1/sqrt(2*pi)) * exp(-((i - u)^2) / (2 * sigma^2)) * w * h);  % Number of pixels to apply adaptive noise
        for j = 1:Np
            x = ceil(rand(1, 1) * h);  % random row ceil funct to ensure it's an integer not a fraction 
            y = ceil(rand(1, 1) * w);  % random col
            img(x, y) = img(x, y) + i;
        end
    end
    %normalize rang to [0,255]
     for k=1:l
         mn=min(min(img(:,:,k)));
         mx=max(max(img(:,:,k)));
         img(:,:,k)=((img(:,:,k)-mn)/(mx - mn))*255;
     end


    img=uint8(img);
    image_noise = img;
end
