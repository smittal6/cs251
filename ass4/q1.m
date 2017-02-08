##Clear the workspace
clear all;


##Accepting the input
n=input("Square root of which number: ");
k=input("How many random numbers: ");

###Checking n,k are positive or not
if (n<0 | k<0)
  error ("Please enter non negative values")
endif



##Generate k random numbers
random=rand(1,k)*n;

###This is to calculate the proportion of numbers less than root n
count=0;
for i=1:k
  if ( power(random(1,i),2)<=n)
    count=count+1;
  else
    continue;
  endif
end

# sqrt(n)/n is approximately count/sample size.

rootn=(n*count)/k;
disp(rootn)
