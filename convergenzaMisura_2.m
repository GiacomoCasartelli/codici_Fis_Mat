clear all

toll=eps;

d=2/3;
for k=1:10901
    c1(k) = FourierMisura(d,toll,pi*(k+99));
end

d=199/297;
for k=1:10901
    c2(k) = FourierMisura(d,toll,pi*(k+99));
end

d=399/597;
for k=1:10901
    c3(k) = FourierMisura(d,toll,pi*(k+99));
end

%loglog([100:11000],c1,'r.',[100:11000],c2,'g.',[100:11000],c3,'m.')

subplot(1,3,1)
loglog([100:11000],c1,'r.')
subplot(1,3,2)
loglog([100:11000],c2,'g.')
subplot(1,3,3)
loglog([100:11000],c3,'m.')

