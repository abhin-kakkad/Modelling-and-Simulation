dt = .01;
t = 0:dt:100;
n = length(t);
N = zeros(1,n);
x = zeros(1,n-1);
N(1) = 0;
C = 100;

p = [.01,.05,0.1,.2,.5,1];
m = length(p);
for j=1:m
    for i=2:n;
        dN = p(j)*(C-N(i-1));
        x(i-1) = dN;
        N(i) = N(i-1) + dt*dN;
    end;
    figure(1);
    plot(t,N);
    hold on;
     figure(2);
     plot(t(1:end/10),x(1:end/10));
     hold on;
end;
title('number of people adopting the new technology');
ylabel('number of people');
xlabel('time');
A =legend('p=.01','p=.05','p=0.1','p=.2','p=.5','p=1');
A.FontSize = 15;
