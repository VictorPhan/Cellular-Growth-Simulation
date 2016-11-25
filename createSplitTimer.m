function t = createSplitTimer(dimen, splitTimeBounds)
    % generates uniformly distrubted random variable between
    % splitTimeBounds
    t = mean(splitTimeBounds)+diff(splitTimeBounds)*(rand(dimen)-0.5);
end