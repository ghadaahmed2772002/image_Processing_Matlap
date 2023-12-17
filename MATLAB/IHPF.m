function [Ideal_img] = IHPF(img, D0)
f=fft2(img);
f_shift=fftshift(f);
Real=real(f);  % real 
Imag=imag(f);   %imaginary
[w,h]=size(img);
f=zeros(w,h);
w_half=w/2;
h_half=h/2;
for i=1:w
    for j=1:h
        Distance=sqrt((i-(w_half))^2+(j-(h_half))^2);
        if(Distance<=D0)
            f(i,j)=0;
        else
            f(i,j)=1;
        end
    end
end
i=(Real.*f)+(Imag.*f);
Ideal_img=f_shift.*f;
image_orignal=ifftshift(Ideal_img);
Ideal_img=abs(ifft2(image_orignal));
Ideal_img=uint8(Ideal_img);
%imshow(uint8(image_filter_apply));
end

  

 