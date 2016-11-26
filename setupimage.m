% Initiates image and draws the gridMode layer of cells
function setupimage(cells, gridMode)
    clf;
    cla;
    hold off;
    axis equal;
    set(gca,'visible','off');
    set(gca,'XtickLabel',[],'YtickLabel',[]);
    imagesc(cells(:, :, gridMode));
end