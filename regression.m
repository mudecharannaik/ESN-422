
close all
clear all
 
x=[ 1 2 5 7 9 5 6 4 12 3];
y =[3 6 9 14 19 33 5 5 24 6];
figure(1)
plot(x,y,'o','MarkerFaceColor','b')
hold on
figure(1)
plot([1,12],[1.5,20] )
hold on


xvec=[1:25];
m=((20-1.5)/11)
c=0;
yvec=m*xvec+c;
plot(xvec,yvec)




d1 = [];
for i= 1:10
    d1(i)=abs(y(i)-m*x(i)+c);
end
figure(2)
plot(d1,'o')

m=m+2;

sum=0;
for mm= m-2:0.1:m+1
    for cc=c-2:0.1:c+1
        dd=[];
        for i= 1:10
            dd(i)=abs(y(i)-mm*x(i)+cc);
            sum=sum+dd(i);
        end
        
        figure(3)
       %plot(mm,cc,sum);
       plot(sum,mm,'or')
       hold on
       
        plot(sum,cc,'.b')
       %mesh(mm,cc,sum)
        %contour(sum)
         %figure(3)
        %surf(mm,cc,sum)
       % hold on
        sum=0;
    end
end

for mm= m-2:0.1:m+2
    for cc=c-2:0.1:c+2
        dd=[];
        for i= 1:10
            dd(i)=abs(y(i)-mm*x(i)+cc);
            sum=sum+dd(i)*dd(i);
        end
        
        figure(4)
       %plot(mm,cc,sum);
       plot(sum,mm,'or')
       hold on
        plot(sum,cc,'.b')
       %mesh(mm,cc,sum)
        %contour(sum)
         %figure(3)
        %surf(mm,cc,sum)
       % hold on
        sum=0;
    end
end

finalm=1.98;
finalc=-0.1;
finaly=finalm*x+finalc;
figure(5)
plot(x,finaly);
hold on
plot(x,y,'o','MarkerFaceColor','b')
hold off

