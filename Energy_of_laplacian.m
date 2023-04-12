function f=Energy_of_laplacian(Image)
 LAP = fspecial('laplacian');
        FM17 = imfilter(Image, LAP, 'replicate', 'conv');
        f = mean2(FM17.^2);