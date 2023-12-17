function [ NI ] = butterworth(I,D0,index)
     [H W L]=size(I);
     filter=zeros(H,W,L);
     for j=1:H
        for k=1:W
             dist=sqrt(((j-(H/2)).^2+(k-(W/2)).^2));
             
              
             
             if(index==1)
                 filter(j,k)=1-(1/(1+(dist/D0)^(2)));
					
             else
		  	 filter(j,k)=(1/(1+(dist/D0)^(2)));
                 
             end
        end    
     end
        

    fi=fft2(I);
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

end