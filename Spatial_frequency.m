function f=Spatial_frequency(Image)
Ix = Image;
        Iy = Image;
        Ix(:,1:end-1) = diff(Image, 1, 2);
        Iy(1:end-1,:) = diff(Image, 1, 1);
        f = mean2(sqrt(double(Iy.^2+Ix.^2)));