function [fi] = fourier_transform(img)
f  = fft2(img) ;   %first step shift -->abs-->log(1+img) -->mattogaray so we can saw image after transform
fshift = fftshift(f);
fabs =abs(fshift) ;
flog = log(fabs+1) ;
fm = mat2gray(flog) ;
imshow (fm);
end
