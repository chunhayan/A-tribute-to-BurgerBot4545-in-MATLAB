function v = chooseRandom(cellArr)
% Returns a random entry v in a cell array.

n = floor(rand*length(cellArr))+1;
v = cellArr{n};

end