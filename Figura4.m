clear all

toll=eps;

%caso a), rosso
d=1/sqrt(2);
for k=1:10901
    c1(k) = FourierMisura(d,toll,pi*(k+99));
end

%caso b), verde
d=1/(nthroot((1/2+1/6*sqrt(23/3)),3)+nthroot((1/2-1/6*sqrt(23/3)),3));
%p1=(nthroot((1/2+1/6*sqrt(23/3)),3)+nthroot((1/2-1/6*sqrt(23/3)),3))
for k=1:10901
    c2(k) = FourierMisura(d,toll,pi*(k+99));
end

%caso c), magenta
d=3/4;
for k=1:10901
    c3(k) = FourierMisura(d,toll,pi*(k+99));
end
figure(1)
loglog([100:11000],c1,'r.',[100:11000],c2,'g.',[100:11000],c3,'m.')

figure(2)
subplot(1,3,1)
loglog([100:11000],c1,'r.')
subplot(1,3,2)
loglog([100:11000],c2,'g.')
subplot(1,3,3)
loglog([100:11000],c3,'m.')
