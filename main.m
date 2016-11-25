% main.m is where the simulation begins.
% Setting parameters, initiate cells to size dimen, draw the grid in 
% gridMode (layer of cell) and run the steps until numSplit.
% splitTimeBounds is the bounds for the uniformly distributed variable
% which determines the time to which a cell will split when it is conceived
% at birth

clearall();

splitTimeBounds = [12, 16];
dimen           = [10, 10];
numSplit        = 300;
gridMode        = SPLIT_TIME;

cells = initiatecells(dimen, splitTimeBounds);

% TODO: keeping track of lineage

drawgrid(cells, gridMode);

for step = 1:numSplit
    cells = updategrid(cells, splitTimeBounds);
    updateimage(cells, step, gridMode);
end
