function f=Tenengrad_variance(image) 
Sx = fspecial('sobel');
      Gx = imfilter(double(Image), Sx, 'replicate', 'conv');
         Gy = imfilter(double(Image), Sx', 'replicate', 'conv');
         G = Gx.^2 + Gy.^2;
         f = std2(G)^2;