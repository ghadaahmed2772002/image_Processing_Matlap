function []= histogram_rgb_gray(img)
[H ,W,L]=size(img);
if L==3

 for ii=1:3
    h=img(:,:,ii);
    [H ,W]=size(h);    
    histo=zeros(256,1);
    for i=1:H
       for j=1:W
          for r=1:256
              if h(i,j)==r-1
                  histo(r)=histo(r)+1;
              end            
          end
       end
    end

    %n=0:255;
    switch ii
      case 1
         bar(histo,'r');
      case 2
          bar(histo,'g');
       case 3
          bar(histo,'b');
        
     end
%histo=bar(histo);
     grid on;
     hold on
 end

else
    [H ,W]=size(img);    
    histo=zeros(256,1);
    for i=1:H
       for j=1:W
          for r=1:256
              if img(i,j)==r-1
                  histo(r)=histo(r)+1;
              end            
          end
       end
    end
   histo=bar(histo);
end
