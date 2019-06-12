classdef borgar < handle
    
    properties
        bun            % A char vector
        ingredients    % A cell array
        layers         % An integer
        recipe         % A cell array
    end
    
    methods
        
        function borgar = borgar() % Assumes Buns.txt and Fillings.txt are in directory
            
            % First acquires cell arrays Buns and Fillings to choose from
            Buns = txt2cellArr('Buns');
            Fillings = txt2cellArr('Fillings');
            
            % Choose a bun
            borgar.bun = chooseRandom(Buns);
            
            % Create an ingredients cell array
            numFills = floor(rand*5)+1;
            borgar.layers = numFills+2;
            borgar.ingredients = {};           
            for k = 1:numFills
                borgar.ingredients{k} = chooseRandom(Fillings);
            end
            
            % Assemble the borgar
            borgar.recipe = {};
            j = 1;
            for p = 1:borgar.layers
                if p == 1 || p == borgar.layers
                    borgar.recipe{p} = borgar.bun;
                else
                    borgar.recipe{p} = borgar.ingredients{j};
                    j = j+1;
                end
            end
            
        end % constructor
        
        function disp(self)
            for q = 1:length(self.recipe)
                disp(self.recipe{q});
            end
        end
        
    end % methods
    
end % classdef
