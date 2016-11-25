% generates uniformly distrubted random variable
% between splitTimeBounds of size dimen

function t = createsplittimer(dimen, splitTimeBounds)
    t = mean(splitTimeBounds) + ...
        diff(splitTimeBounds) * (rand(dimen)-0.5);
end