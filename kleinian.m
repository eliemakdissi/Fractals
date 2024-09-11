function z=kleinian()
p = 0.5 + 0.03i;
q = 0.5 + 0.05i;
r = 0.5 - 0.03i;
s = 0.5 - 0.05i;
z=0;
f1 = @(z) (p*z+q)./(r*z+s);
f2 = @(z) z+2;
f3 = @(z) (s*z-q)./(-r*z+p);
f4 = @(z) z-2;
N = 10000;
x = zeros(1,N);
y = zeros(1,N);
figure;
hold on;
for k = 1:N
    r = randi(4);
    if r == 1
        z = f1(z);
    elseif r==2
        z = f2(z);
    elseif r==3
        z = f3(z);
    else
        z = f4(z);
    end

    x(k) = real(z);
    y(k) = imag(z);
end
plot(x,y,'k.');
axis equal;
xlabel('Real Part');
ylabel('Imaginary Part');
grid on;
hold off;
end