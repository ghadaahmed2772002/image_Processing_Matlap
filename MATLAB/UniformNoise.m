function [image_noise] = UniformNoise(img, a,b)
    [h w l] = size(img);   
    Np = (1/(b-a))* w * h;  % Number of pixels to apply addaptive 
   
    for i = a:b
        for j=1:Np
            x = ceil(rand(1,1) *h) ;% Random row
            y = ceil(rand(1,1) *w);  % Random col
            img(x, y) =img(x,y) +i;
    end
    end
     %normalization
    
    image_noise = img;
end
