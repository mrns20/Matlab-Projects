N = 1000;
data = binornd(9, 0.8, N,1); % generate the random numbers
[height,centers] = hist(data,unique(data)) % data for the histogram
bar(centers,height/sum(height))
xlabel('value');
ylabel('experimental probability')
title('Binomial distribution with n=9, p=0.8')
