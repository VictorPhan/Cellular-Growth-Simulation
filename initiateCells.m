% Initiate all layers of the cell array, where dimen is dimensions
% of the cell array and splitTimeBounds is the bounds for the uniformly
% generated SPLIT_TIME layer
function cells = initiatecells(dimen, splitTimeBounds)
    cells(:, :, SPLIT_TIME) = createsplittimer(dimen, splitTimeBounds);
    cells(:, :, BIRTH_TIME) = zeros(dimen);
    cells(:, :, ID)         = reshape(1:prod(dimen), dimen);
    cells(:, :, PARENT)     = zeros(dimen);
    cells(:, :, ANCESTOR)   = reshape(1:prod(dimen), dimen);
    cells(:, :, GENERATION) = ones(dimen);
end