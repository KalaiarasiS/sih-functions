function f=curvature(Image)
M1 = [-1 0 1;-1 0 1;-1 0 1];
        M2 = [1 0 1;1 0 1;1 0 1];
        P0 = imfilter(Image, M1, 'replicate', 'conv')/6;
        P1 = imfilter(Image, M1', 'replicate', 'conv')/6;
        P2 = 3*imfilter(Image, M2, 'replicate', 'conv')/10 ...
            -imfilter(Image, M2', 'replicate', 'conv')/5;
        P3 = -imfilter(Image, M2, 'replicate', 'conv')/5 ...
            +3*imfilter(Image, M2, 'replicate', 'conv')/10;
        FM4 = abs(P0) + abs(P1) + abs(P2) + abs(P3);
        f = mean2(FM4);