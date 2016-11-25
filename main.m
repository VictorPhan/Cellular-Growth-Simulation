clearAll();

% set the parameters
splitTimeBounds = [0, 16];
dimen           = [40, 10];
numSplit        = 500;
gridMode        = GENERATION;

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