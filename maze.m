function maze_game()
mazee=[1 1 1 1 1 1 1 1 1 1;
      1 0 0 0 0 0 0 1 0 1;
      1 0 0 0 1 0 0 0 0 1;
      1 0 0 0 0 1 0 0 1 1;
      1 0 0 1 0 0 0 0 0 1;
      1 0 0 0 0 0 1 0 0 1;
      1 0 0 0 0 0 1 0 0 1;
      1 0 0 1 0 0 0 0 0 1;
      1 0 0 0 0 1 0 0 1 1;
      1 0 0 0 1 0 0 0 0 1;
      1 0 0 0 0 1 0 0 1 1;
      1 0 0 1 0 0 0 0 0 1;
      1 0 0 0 0 0 1 0 0 1;
      1 0 0 0 0 0 1 0 0 1;
      1 0 0 0 0 0 1 0 0 1;
      1 0 0 1 0 0 0 0 0 1;
      1 0 0 0 0 1 0 0 1 1;
      1 0 0 0 1 0 0 0 0 1;
      1 0 0 0 0 1 0 0 1 1;
      1 0 0 1 0 0 0 0 0 1;
      1 0 0 0 0 0 1 0 0 1;
      1 0 0 0 0 0 1 0 0 1;
      1 1 1 1 1 1 1 1 1 1;]

startpos=[2,2]
exitpos= [7,17]


% Create figure for game display
figure('KeyPressFcn', @key_press_callback);
%This is a callback property that tells MATLAB to 
% run a function when a key is pressed while the figure is active.

axis off; 
%hides the axes in the figure window
hold on;
%Tells MATLAB to keep all plots in the 
% figure instead of erasing them when a 
% new plot command is issued.

playerpos=startpos
playermarker = rectangle('Position', [playerpos(2), playerpos(1), 1, 1], 'FaceColor', 'g');

rectangle('Position', [2, 2, 1, 1], 'FaceColor', 'r');
%rectangle('Position', [mazee(3), mazee(3), 1, 1], 'FaceColor', 'r');
rectangle('Position', [7, 17, 1, 1], 'FaceColor', 'r');
%playermarker=rectangle('Position', [playerpos(2),playerpos(1), 1, 1], 'FaceColor', 'g');



for i=(1:size(mazee,1))
    for j=(1:size(mazee,2))
        if mazee(i,j)==1  
            rectangle('Position', [j, i, 1, 1], 'FaceColor', 'k');

        end
    end
end


function key_press_callback(~,event)
newpos=playerpos
%is the start of a keyboard event handler in MATLAB.
% This function is automatically triggered when a key is pressed 
% inside a figure that has this function set as its 'KeyPressFcn'.
switch event.Key
    case 'downarrow'
        newpos = (playerpos + [-1,0])

    case 'uparrow'
        newpos=(playerpos + [1,0])

    case 'rightarrow'
        newpos=(playerpos + [0,1])

    case 'leftarrow'
        newpos=(playerpos + [0,-1])

    otherwise
        return;
end


 % Check for collision with walls
 if newpos(1) > 0 && newpos(1) <= size(mazee, 1) && ...
       newpos(2) > 0 && newpos(2) <= size(mazee, 2)
    if (mazee(newpos(1), newpos(2)) == 0)
        playerpos = newpos;
        set(playermarker, 'Position', [playerpos(2), playerpos(1), 1, 1]);
    end
 end

    % Check for winning condition

    disp(['Current position: ', num2str(playerpos)]);
        disp(['Exit position: ', num2str(exitpos)]);
    if (playerpos==exitpos)
        disp('You win!');
        close(gcf);
    end
    disp(event.Key)
end
 disp ('end')
end 