function [image]=LSBinBlue(img,message,auxX,auxY)

I = img(:,:,3);

mASCII= dec2bin(double(message));
%build one single string
[a,b]=size(mASCII);
str='';
for i=1:a
   for j=1:b
       str=strcat(str,mASCII(i,j));
   end
end
mASCII=str;
[a,b]=size(mASCII);
[l,m]= size(I);


%Turn Matrix into even values
for i=1:l
    for j=1:m
        if mod(I(i,j),2)==1
            I(i,j)=I(i,j)-1;
        end
    end
end

%Embedding the message
for i=1 : b
   if mASCII(i)=='1'
       I(auxX(i),auxY(i))=I(auxX(i),auxY(i))+1;
   end
end

img(:,:,3)=I;
image=img;
imshow(image)
end