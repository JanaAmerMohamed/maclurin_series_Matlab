function maclaurinLnRatio(n)
    syms t;
    f = log((1 + t) / (1 - t));

    maclaurin = f;
    series = '(x/1!)';

    for k = 2:n
        derivative = diff(f, t, k-1);
        term = subs(derivative, 0) / factorial(k-1) * t^(k-1);
        maclaurin = maclaurin + term;

        series = [series, sprintf(' + (%d*x^%d/%d!)', subs(derivative, 0), k-1, k-1)];
    end

    disp(['Maclaurin series expansion of ln((1+x)/(1-x)) up to ', num2str(n), ' terms is:']);
    disp(['f(x) = ', series]);
    disp(['where f(x) = ', char(maclaurin)]);
end
