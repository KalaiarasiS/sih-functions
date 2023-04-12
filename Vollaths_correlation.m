function f=Vollaths_correlation(Image);
Image1 = double(Image);
        I1 = Image1; I1(1:end-1,:) = Image1(2:end,:);
        I2 = Image1; I2(1:end-2,:) = Image1(3:end,:);
        Image1 = Image1.*(I1-I2);
        f = mean2(Image1);