function [ result ] = weight( old_image )
    filter = [1 2 1;2 4 2;1 2 1];
   %use myfilter function in this folder
    result=myFilter(old_image, filter);   

end


