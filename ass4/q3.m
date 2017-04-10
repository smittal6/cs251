
clear all;
lambda=2;
#i=10;

#### Now let us set the variables for the required sizes
for i=1:6
  pow=[exprnd(lambda,1,power(10,i))];
  printf('The mean of sample of size 10^%d is: %f\n',i,mean(pow));
  printf('The standard deviation of the sample is: %f\n',std(pow));
  printf('The difference of lambda and actual mean: %f\n',lambda-mean(pow));
  printf('\n');
end

#{
## This is for the case that vectors are required
pow1=[exprnd(lambda,1,power(10,1))];
pow2=[exprnd(lambda,1,power(10,2))];
pow3=[exprnd(lambda,1,power(10,3))];
pow4=[exprnd(lambda,1,power(10,4))];
pow5=[exprnd(lambda,1,power(10,5))];
pow6=[exprnd(lambda,1,power(10,6))];

mean1=mean(pow1);
mean2=mean(pow2);
mean3=mean(pow3);
mean4=mean(pow4);
mean5=mean(pow5);
mean6=mean(pow6);

std1=std(pow1);
std2=std(pow2);
std3=std(pow3);
std4=std(pow4);
std5=std(pow5);
std6=std(pow6);

diff1=lambda-mean1;
diff2=lambda-mean2;
diff3=lambda-mean3;
diff4=lambda-mean4;
diff5=lambda-mean5;
diff6=lambda-mean6;
#}
