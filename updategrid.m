% updates the grid by finding the cell with minimum splitTime, moving
% time forward by that amount of splitTime, then split the cell t is the
% universal time. If minimum was 0 already from the last splitting, then
% split before finding next splitTime.
function cells = updategrid(cells, splitTimeBounds)
    A = cells(:,:,SPLIT_TIME);
    [M, I] = min(A(:));
    [I_row, I_col] = ind2sub(size(cells(:,:,SPLIT_TIME)), I);
    
    persistent t;
    if isempty(t)
        t = 0;
    end
    
    if M ~= 0
        cells(:,:,SPLIT_TIME) = cells(:,:,SPLIT_TIME) - M;
        t = t + M;
    end
    
    cells = splitcell(cells, I_row, I_col, t, splitTimeBounds);
    
end