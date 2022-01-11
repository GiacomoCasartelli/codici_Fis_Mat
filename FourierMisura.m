function f = FourierMisura (delta,toll,y)
%INPUT:
%-delta: parametro di contrazione dell' IFS
%-toll: tolleranza
%-y: punto sulla retta reale di valutazione della trasformata di fourier 
%OUTPUT: valore del modulo della trasformata di fourier della misura 
%invariante calcolata in y.

f=1; %phi_0=1
arg=y*(1-delta); %calcolo dell'argomento della misura sigma al passo 0

for n=0:10000
    g=cos(arg); %calcolo di psi_n
    %notare che usando una misura Bernoulli con atomi in -1 e 1 
    %si ottiene che il fattore moltiplicativo n-simo è esattamente 
    %il coseno dell'argomento.
    f=f*g; %aggiornamento del valore phi_{n+1}
    if abs(g-1)<toll
        break
    end 
    arg=arg*delta; %calcolo dell'argomento della misura sigma al passo n+1
end

if n==10000 
    %test di convergenza non avvenuta, in caso positivo aumentare nmax
    fprintf('non è stata raggiunta convergenza per y=%d\n',y);
end

f=abs(f);
end
   