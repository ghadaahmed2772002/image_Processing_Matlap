function gray = Gamma(image, gamma)
    [h, w] = size(image);
    gray = zeros(h, w);

    for i = 1:h
        for j = 1:w       
            gray(i, j) = image(i, j) ^ gamma;           
        end
    end

   
    gray = gray * (255 / max(gray(:)));


    gray = uint8(gray);


  
end
