function f=Modified_laplacian(Image) 
M = [-1 2 -1];        
        Lx = imfilter(Image, M, 'replicate', 'conv');
        Ly = imfilter(Image, M', 'replicate', 'conv');
        FM18 = abs(Lx) + abs(Ly);
        f = mean2(FM18);