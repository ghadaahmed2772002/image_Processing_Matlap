function image_noise = GammaNoise(img, a, b)
    [w,h,l]=size(img);
    new_image=img;
   
    for k=1:l
         for i=0:255
            ns=(power(a,b)*power(i,(b-1)))/factorial(b+1);
            ns=ns*exp(-a*i);
            for j=1:ns
                x=randi(w,1,1);
                y=randi(h,1,1);
                new_image(x,y,k)=new_image(x,y,k)+i;
            end
    end
end
image_noise=uint8(new_image);
end

