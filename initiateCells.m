function cells = initiateCells(dimen, splitTimeBounds)
    cells(:, :, SPLIT_TIME) = createSplitTimer(dimen, splitTimeBounds);
    cells(:, :, BIRTH_TIME) = zeros(dimen);
    cells(:, :, ID)         = reshape(1:prod(dimen), dimen);
    cells(:, :, PARENT)     = zeros(dimen);
    cells(:, :, ANCESTOR)   = reshape(1:prod(dimen), dimen);
    cells(:, :, GENERATION) = ones(dimen);
end