function  [gray] = Negative(image)
[h,w]= size(image);
gray = ones(h,w);
gray = double(gray);
for i = 1:h
    for j = 1:w       
                     gray(i,j) =255-image(i,j);            
              
        end
end
 gray = uint8(gray); 
imshow(gray);  
end
