function z=deRham(alpha,beta,delta,epsilon,zeta,eta,N)
z = 0;
% a=0.5+0.5*1i;
% d0 = @(z) a.*z;
% d1 = @(z) a+(1-a).*z;
x = zeros(1,N);
y = zeros(1,N);
figure;
hold on;
for k = 1:N
    r = randi(2);
    if r == 1
        uv=[1 0 0 ; 0 alpha delta ; 0 beta epsilon]*[1 ; real(z) ; imag(z)];
        z = uv(2,1)+uv(3,1)*1i;
    else
        uv=[1 0 0 ; alpha 1-alpha zeta ; beta -beta eta]*[1 ; real(z) ; imag(z)];
        z = uv(2,1)+uv(3,1)*1i;
    end

    x(k) = real(z);
    y(k) = imag(z);
%   plot(x(k), y(k), 'k.');
%   pause(0.001);
end
plot(x,y,'r*','MarkerSize', 0.01);
xlabel('Real Part');
ylabel('Imaginary Part');
grid on;
hold off;
end