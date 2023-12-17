function [ NI ] = gaussian_all(img,D,index)
     [H ,W]=size(img);
     filter=zeros(H,W);
     for j=1:H
        for k=1:W
             dist=sqrt((j-(H/2)).^2+(k-(W/2)).^2);
             filter(j,k)=exp((dist.^2)/(2*D^2));
        end    
     end
     if(index==0)
         filter=filter;
     else
         filter=1-filter;
     end    

    fi=fft2(img);
    fi=fftshift(fi);
    reall=real(fi);
    imagin=imag(fi);
    nreall=filter.*reall;
    nimagin=filter.*imagin;
    NI=nreall(:,:)+i*nimagin(:,:);
    NI=fftshift(NI);
    NI=ifft2(NI);
    NI=abs(NI);
    NI=log(NI);
    NI=mat2gray(NI);
    imshow(NI);
end