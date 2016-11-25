function cells = initiateCells(dimen)
    cells(:, :, SPLIT_TIME) = createSplitTimer(dimen);
    cells(:, :, BIRTH_TIME) = zeros(dimen);
    cells(:, :, ID)         = reshape(1:prod(dimen), dimen);
    cells(:, :, PARENT)     = zeros(dimen);
    cells(:, :, ANCESTOR)   = reshape(1:prod(dimen), dimen);
    cells(:, :, GENERATION) = ones(dimen);
end