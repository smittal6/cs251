##Clearing the workspace
clear all;

##Asking user if he wants to enter the values or not
n=input("Enter the value of n: ");
answer=input("You want to enter m and d? (y/n): ","s");
if (answer=="y")
  m=input("Please enter the value of m: ");
  d=input("Please enter the value of d: ");
  if (m<0 | d<0)
    error ("Non negative values only");
  endif
endif

###We want the mth root of n upto d decimal places. We halve it each time, multiply m times, and see if it is less than n