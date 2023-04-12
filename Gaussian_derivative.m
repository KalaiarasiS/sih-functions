function f= Gaussian_derivative(Image)
FM = AcMomentum(Image);
WSize = 15;
N = floor(WSize/2);
sig = N/2.5;
[x,y] = meshgrid(-N:N, -N:N);
G = exp(-(x.^2+y.^2)/(2*sig^2))/(2*pi*sig);
Gx = -x.*G/(sig^2);Gx = Gx/sum(Gx(:));
Gy = -y.*G/(sig^2);Gy = Gy/sum(Gy(:));
        Rx = imfilter(double(Image), Gx, 'conv', 'replicate');
        Ry = imfilter(double(Image), Gy, 'conv', 'replicate');
        FM7 = Rx.^2+Ry.^2;
        f = mean2(FM);