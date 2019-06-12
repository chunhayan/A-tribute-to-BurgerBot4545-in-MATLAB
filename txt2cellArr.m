function CA = txt2cellArr(fname)
% fname is the name of the .txt file you are reading
% CA is the output cell array, each entry is one line of the .txt file

CA = {};

% Open the file for reading
fid = fopen([fname, '.txt'], 'r');

% Gets every line of fid and stores in cell array CA
k = 0;
while ~feof(fid)
    k = k+1;
    CA{k} = fgetl(fid);
end

% Close the file
fclose(fid);

end