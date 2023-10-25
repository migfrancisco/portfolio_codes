% make a function that approximates e
function x = factorial_approx(n)
    % n shall be length of the series and it should not be negative
    format short
    if n < 0
        disp('Wrong input');
        return
    end
    
    disp('iteration  partialSum  partialSum+1/(n!)')
    % uses partial sums
    series_sum = 1;
    for i = 1:n
        series_sum = series_sum + (1/(factorial(i)));
        disp([i series_sum series_sum+(1/factorial(i))])
        % it can be seen clearly that the two will squeeze
        % making e right in the middle of its upper and lower bound
    end
    % output the lower bound
    x = series_sum;
end