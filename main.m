clearAll();

% set the parameters
splitTimeBounds = [12, 16];
dimen           = [10, 10];
numSplit        = 300;
gridMode        = SPLIT_TIME;

% initiate the cell array
cells = initiateCells(dimen, splitTimeBounds);

% TODO: keeping track of lineage

% draw the grid
drawGrid(cells, gridMode);

% run the simulation
for step = 1:numSplit
    cells = updateGrid(cells, splitTimeBounds);
    updateImage(cells, step, gridMode);
end
