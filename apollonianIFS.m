function z=apollonianIFS()
s = sqrt(3);
z = 0;

f = @(z) 3./(1+s-z)-(1+s)./(2 +s);
f1 = @(z) f(z);
f2 = @(z) 0.5*(-1+s*1i)./f(z);
f3 = @(z) 0.5*(-1-s*1i)./f(z);

N = 1000000;
x = zeros(1,N);
y = zeros(1,N);
figure;
hold on;
for k = 1:N
    r = randi(3);
    if r == 1
        z = f1(z);
    elseif r == 2
        z = f2(z);
    else
        z = f3(z);
    end

    x(k) = real(z);
    y(k) = imag(z);
%     plot(x(k), y(k), 'k.');
%     pause(0.001);
end
plot(x,y,'k.');
axis equal;
title('Apollonian Gasket');
xlabel('Real Part');
ylabel('Imaginary Part');
grid on;
hold off;
end