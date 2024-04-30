function[y] = add_function(n,x1,x2,y1,y2)
 
m1=zeros(1,length(n));
m2=zeros(1,length(n));
temp=1;
for i=1:length(n)
    if(n(i)>=min(x1) & n(i)<=max(x1))
        m1(i)=y1(temp);
        temp=temp+1;
    else
        m1(i)=0;
    end
end
temp=1;
for i=1:length(n)
    if(n(i)>=min(x2) & n(i)<=max(x2))
        m2(i)=y2(temp);
        temp=temp+1;
    else
        m2(i)=0;
    end
end
 
y=m1+m2;
