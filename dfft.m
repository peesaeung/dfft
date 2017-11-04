input=fopen('/Users/peeranut/Desktop/Math for Comp/input.txt')
x=fscanf(input,'%f')
fclose(input)
[fr,fc]=size(x)
for k=0:fr-1
    for n=1:fr
        y(n)=x(n)*exp(-i*2*pi*(n-1)*k/fr)
    end
    y1(k+1)=sum(y)
end
yr=real(y1)
yi=imag(y1)
yc=vertcat(yr,yi)
output=fopen('/Users/peeranut/Desktop/Math for Comp/output.txt','w')
fprintf(output,'%f %f i\n',yc)
fclose(output)