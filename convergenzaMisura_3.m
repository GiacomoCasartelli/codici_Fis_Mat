clear all

toll=eps;

d=4/5;
for k=1:10901
    c1(k) = FourierMisura(d,toll,pi*(k+99));
end

d=7/8;
for k=1:10901
    c2(k) = FourierMisura(d,toll,pi*(k+99));
end

d=12/13;
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