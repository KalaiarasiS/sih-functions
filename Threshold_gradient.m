function f=Threshold_gradient(Image)
Th = 0; 
        Ix = Image;
        Iy = Image;
        Iy(1:end-1,:) = diff(Image, 1, 1);
        Ix(:,1:end-1) = diff(Image, 1, 2);
        FM12 = max(abs(Ix), abs(Iy));
        FM12(FM12<Th)=0;
        f= sum(FM12(:))/sum(sum(FM12~=0));