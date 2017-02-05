##Clearing the workspace
clear all;
function mthroot (n,m=2,d=4,low,high)
  #optimal tolerance, considering the number of digits as well, and the computation time
  #Worst case with respect to tolerance: n<1,m>1
  #baaki sab mein we can reduce the absolute value of tolerance
  tolerance=0.001;
  if (n<0)
    sign=1;
    n=n*-1;
    high=n;
  else
    sign=0;
  endif
  mid=rand()*(high-low);
  while ( abs(power(mid,m)-n) > tolerance) 
    if (power(mid,m)>n+tolerance)
      high=mid;
    else
      low=mid;
    endif
    mid=low+rand()*(high-low);
  endwhile
  mid=round(mid*power(10,d))/power(10,d);
  if (sign)
    printf("-%.*f\n",d,mid);
  else
    printf("%.*f\n",d,mid);
  endif
endfunction


##Asking user if he wants to ent100er the values or not
n=input("Enter the value of n: ");
#if (n<0)
#  error ("Why do you even want the mth root of negative number? Sorry.");
#endif
answer=input("You want to enter m and d? (y/n): ","s");
if (answer=="y")
  m=input("Please enter the value of m: ");
  d=input("Please enter the value of d: ");
  if (n<0 && (mod(m,2)==0) )
    error ("Can't do this. Sorry");
  endif
  if (m<0 | d<0)
    error ("Non negative values only");
  endif
  if( (0<n && n<1) && m>1 )
    mthroot(n,m,d,n,1);
  elseif (n>1 && m<1)
    mthroot(n,m,d,n,power(10,8));
  else
    mthroot(n,m,d,0,n)
  endif
elseif (answer=="n")
  if( n<0)
    error ("Can't do it. Sorry.");
  endif
  if( 0<n && n<1 )
    mthroot(n,2,4,n,1);
  else
    mthroot(n,2,4,0,n);
  endif
endif

###We want the mth root of n upto d decimal places. We halve it each time, multiply m times, and see if it is less than n
#to control decimal digits we use round(number*power(10,i))/power(10,i)
