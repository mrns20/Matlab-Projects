clear all; close all; clc;
sigma=4;
iter = [100 1000 10000];%% ari8mos deigmatwn
k=1; %% voi8itiki metavliti
for k=1:length(iter)
for i=1:100
%% create rayleigh samples
samples = raylrnd(sigma,iter(k),1);
%%%o sxediamos tis pdf k tou kanonikopoimenou istogramatos einai se sxolia
%%epeidh to peirama epanalamvanete 100 fores...
 
 %create actual rayleigh pdf
 x =0:0.01:20;
 y = raylpdf(x,sigma);
 
 %create and normalize histogram
 [n,xout] = hist(samples,30);
 bw = xout(2)-xout(1); % column width
 n1 = n/sum(n.*bw); % sum(n*bw) = area under the histogram
 
 %plot histogram and pdf
 bar(xout,n1)
 hold on
 plot(x,y,'-r','Linewidth',3);
 hold off
%% evresi mesis timis k diasporas me mean kai var
Ey(i,k)=mean(samples);
s(i,k)=var(samples);
%% evresi mesis timis k diasporas vasei ml
sigmaa(i,k)=sqrt((1/(2*iter(k)))*sum(samples.^2));
Eyy(i,k)=sigmaa(i,k)*sqrt((pi/2));
ss(i,k)=((4-pi)/2)*(sigmaa(i).^2);
end;
%sfalma mesis timis
ermt(:,k)=(1/100)*((Ey(:,k)-Eyy(:,k)).^2);
errmt(k)=mean(ermt(:,k));
%sfalma diasporas
erd(:,k)=(1/100)*((s(:,k)-ss(:,k)).^2);
errd(k)=mean(erd(:,k));
k=k+1;
end;