function ret = force_calc(x)

q=2.0e-5;
Q=q;
a=0.85;
e=8.9e-12;

ret=(q.*Q.*x)./((4.*pi.*e).*(power(x,2)+a.*a).^(1.5));

end

