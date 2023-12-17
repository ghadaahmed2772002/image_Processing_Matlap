function image_noise = RayleighNoise(img,a, b) 
       [w,h,l]=size(img);
        new_image=img;
        for k=1:l
            for i=0:255
                ns=(2*(i-a)*exp(power(i-a,2)/b))/b;      
                ns=uint8(ns);
                for j=1:ns
                    x=randi(w,1,1);
                    y=randi(h,1,1);
                    new_image(x,y,k)=new_image(x,y,k)+i;
            end
        end
end
image_noise=uint8(new_image);
imshow(image_noise);

end


