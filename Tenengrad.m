function f= Tenengrad(Image)
Sx = fspecial('sobel');
        Gx = imfilter(double(Image), Sx, 'replicate', 'conv');
        Gy = imfilter(double(Image), Sx', 'replicate', 'conv');
        FM23 = Gx.^2 + Gy.^2;
        f = mean2(FM23);