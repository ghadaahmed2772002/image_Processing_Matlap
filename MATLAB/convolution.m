function result = convolution(old_image, filter)
    % Flip the filter 180
    filter = flipud(fliplr(filter));
    %use myfilter function in this folder
    result=myFilter(old_image, filter);  
end
