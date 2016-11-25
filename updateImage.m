% Redraw the new cells array in the selected gridMode. The step variable is
% the number of splittings.
function updateimage(cells, step, gridMode)
    imagesc(cells(:,:,gridMode));
    title(num2str(step));
    drawnow;
end