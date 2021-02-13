%% Problem 1
[x,y,z,t] = lorenz(100);

xmax = max(x)
xmin = min(x)

%% Problem 2
plot(x,z)
title("Lorenz Attractor")

%% Problem 3

subplot(2,2,1)
blot(x(1:400),z(1:400))
subplot(2,2,2)
blot(x(1:800),z(1:800))
subplot(2,2,3)
blot(x(1:1200),z(1:1200))
subplot(2,2,4)
blot(x(1:1600),z(1:1600))

%% Problem 4
plot(x,y,z)

