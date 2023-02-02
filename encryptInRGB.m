function [img] = encryptInRGB(message,key,n,image,auxX,auxY)
encM = encrypt(message,key,n);
encM = convertStringsToChars(encM);
img = LSBinRGB(image,encM,auxX,auxY);
end