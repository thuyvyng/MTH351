%running total for answer (for each k)
sum = 0;
%this for loop accomplishes the summation from 1->10
for k=1:10
    %these are the initial values
    numerator = 1;
    denominator = 2;
    multiple = pi^k;
    %this for loop runs until we get to the final term
    for s=1:k
        %multiples current running total with new frac
        multiple = multiple * (numerator/denominator);
       
        
        %finds the next term's num and denom
        numerator = numerator + 2;
        denominator = denominator + 2;
    end
    %gets n's sum by adding n-1 (and all previous)
    sum = sum + multiple;
    
end
%prints out the final total
sum