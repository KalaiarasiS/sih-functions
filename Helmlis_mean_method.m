function f=Helmlis_mean_method(Image)
        WSize=15;
        MEANF = fspecial('average',[WSize WSize]);
        U = imfilter(Image, MEANF, 'replicate');
        R1 = U./Image;
        R1(Image==0)=1;
        index = (U>Image);
        FM14 = 1./R1;
        FM14(index) = R1(index);
        f = mean2(FM14);