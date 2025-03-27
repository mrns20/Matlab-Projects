clear all , clc, close all, 
% x το πλήθος των νομισμάτων με αξία 0.5 ευρώ. 
% y το πλήθος των νομισμάτων με αξία 1.0 ευρώ. 
% z το πλήθος των νομισμάτων με αξία 2.0 ευρώ. 
% w το πλήθος των χαρτονομισμάτων με αξία 5 ευρώ. 
% Αρχικοποίηση του πλήθους των συνδυασμών που ικανοποιούν τις συνθήκες 
PS=0; 
for x=0:40 
for y=0:40 
for z=0:40 
for w=0:40 
syn_plithos_nom=x+y+z+w; 
syn_aksia_nom=x*0.5+y*1+z*2+w*5; 
if syn_plithos_nom==40 && syn_aksia_nom==40 
PS=PS+1; 
disp(['Combination #' num2str(PS) ': ' num2str(x) 'x0.5E ' num2str(y) 'x1E ' num2str(z) 'x2E ' num2str(w) 'x5E ']) 
end 
end 
end 
end 
end 
PS