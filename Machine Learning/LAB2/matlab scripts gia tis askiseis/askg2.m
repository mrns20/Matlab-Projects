 x=[-1,1,2,3,4,5] ;
 y=[4,2.5,4,3.2,5.1,7.4];
 xi=-1:0.1:5; %δημιουργία διαστήματος ομοιόμορφα κατανεμημένων τιμών
 y0=interp1(x,y,0,'spline') %υπολογισμός τιμής της παρεμβολής splines στο σημείο 0
ans = y0== 0.9453
 y0=interp1(x,y,0) %υπολογισμός τιμής της γραμμικής παρεμβολής στο σημείο 0
y0 = 3.2500;
%Εφαρμογή τριών μεθόδων παρεμβολής
 Yspl=interp1(x,y,xi,'spline');
 Yl=interp1(x,y,xi,'linear');
 Yc=interp1(x,y,xi,'cubic');
 plot(x,y,'o',xi,Yl,xi,Yc,':',xi,Yspl) %σχεδίαση κοινού γραφήματος
 xlabel('x'),ylabel('Y=f(x)'),
 title('Spline interpolation versus Linear and Cubic interpolation')