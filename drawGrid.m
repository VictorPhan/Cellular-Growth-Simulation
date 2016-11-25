% Initiates image and draws the gridMode layer of cells
function drawgrid(cells, gridMode)
    clf;
    cla;
    hold on;
    imagesc(cells(:, :, gridMode));
    colormap default;
    colorbar;
    axis equal;
    pause(0.5);
end