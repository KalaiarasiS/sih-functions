function f=Energy_of_gradient(Image)
Ix = Image;
Iy = Image;
        Iy(1:end-1,:) = diff(Image, 1, 1);
        Ix(:,1:end-1) = diff(Image, 1, 2);
        FM11 = Ix.^2 + Iy.^2;
        f = mean2(FM11);