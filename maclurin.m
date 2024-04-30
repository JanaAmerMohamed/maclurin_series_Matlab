function maclaurinLn1PlusX(n, x)
    syms t;
    f = inline('log(1 + t)', 't');

    maclaurin = f(0);

    for k = 1:n
        derivative = diff(f(t), t, k-1);
        term = subs(derivative, 0) / factorial(k-1) * x^(k-1);
        maclaurin = maclaurin + term;
    end

    disp(['Maclaurin series expansion of ln(1+x) up to ', num2str(n), ' terms is:']);
    disp(maclaurin);
end
