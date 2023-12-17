function [gray] = RGBTOGRAY(rgb,index)
[h,w,L]= size(rgb);
gray = ones(h,w);
gray = double(gray);
for i = 1:h
    for j = 1:w
           if index== 1
               gray(i,j) = (rgb(i,j,1)+rgb(i,j,2)+rgb(i,j,3))/3; 
           elseif index== 2
                gray(i,j) = rgb(i,j,1); 
                
            elseif index== 3
                 gray(i,j) = rgb(i,j,1)*0.2+rgb(i,j,2)*0.3+rgb(i,j,3)*0.5; 
                
            end
       end
  end
        gray = uint8(gray);   
end 
