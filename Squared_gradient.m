function f=Squared_gradient (Image)
Ix = diff(Image, 1, 2);
        FM13 = Ix.^2;
        f= mean2(FM13);