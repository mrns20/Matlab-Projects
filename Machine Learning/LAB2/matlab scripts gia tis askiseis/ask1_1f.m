function PS=ask1_1f(val1, val2, val3, val4) 
PS=0; 
for x=0:40 
for y=0:40 
for z=0:40 
for w=0:40 
syn_plithos_nom=x+y+z+w; 
syn_aksia_nom= x*val1+y*val2+z*val3+w*val4; 
if syn_plithos_nom==40 && syn_aksia_nom==40 
PS=PS+1; 
disp(['Combination #' num2str(PS) ': ' num2str(x) 'x0.5E ' num2str(y) 'x1E ' num2str(z) 'x2E ' num2str(w) 'x5E ']) 
end 
end 
end 
end 
end 