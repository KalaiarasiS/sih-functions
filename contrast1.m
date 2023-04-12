function out=contrast1(Image) 
Y=rgb2ycbcr(Image);
G=(Y(:,:,1));
out=AME(im2double(G),3);
end