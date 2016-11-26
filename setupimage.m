% Initiates image and draws the gridMode layer of cells
function setupimage(cells, gridMode)
    clf;
    cla;
    hold off;
    axis equal;
    imagesc(cells(:, :, gridMode));
end