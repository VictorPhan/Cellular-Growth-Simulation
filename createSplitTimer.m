function t = createSplitTimer(dimen)
    % generates uniformly distrubted random variable accross
    % splitTimeBounds
    splitTimeBounds = [0, 16];
    t = mean(splitTimeBounds)+diff(splitTimeBounds)*(rand(dimen)-0.5);