function out=colorfulness1(Image)
if ~isa(Image,'double')
   Image= double(Image);
end
R=Image(:,:,1);
G=Image(:,:,2);
B=Image(:,:,3);

alpha=R-G;
beta=0.5*(R+G)-B;

Mean_alpha=mean2(alpha);
Mean_beta=mean2(beta);

Var_alpha=mean2((alpha.^2-Mean_alpha^2));
Var_beta=mean2((beta.^2-Mean_beta^2));

out=0.02*log(Var_alpha/(abs(Mean_alpha))^0.2)*log(Var_beta/(abs(Mean_beta))^0.2);
end