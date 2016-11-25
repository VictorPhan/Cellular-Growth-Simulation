function cells = updateGrid(cells, splitTimeBounds)
    % updates the grid
    % find the minimum of all split_times and its index
    A = cells(:,:,SPLIT_TIME);
    [M, I] = min(A(:));
    [I_row, I_col] = ind2sub(size(cells(:,:,SPLIT_TIME)), I);
    
    % t is the simulated time
    persistent t;
    if isempty(t)
        t = 0;
    end
    
    % in case minimum was 0 already (from last gen)
    % else, subtract the time to the next proliferation, then proliferate
    if M ~= 0
        cells(:,:,SPLIT_TIME) = cells(:,:,SPLIT_TIME) - M;
        t = t + M;
    end
    % split the cell
    cells = splitCell(cells, I_row, I_col, t, splitTimeBounds);
    
end