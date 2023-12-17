function [f3] = inverse_fourier_transform(img)
f1  = fft2(img) ;
f2 = fftshift(f1);
i =abs(f2) ;  % f2 --> abs  -->log(1+)  -->mat2gray  --> 
i= log(i+1) ;
i = mat2gray(i) ;

f3 = fftshift(f2);  
f3 = ifft2(f3);
f3=abs(f3);
f3 = log(f3);
f3 = mat2gray(f3);

end
