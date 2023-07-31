%Rendel Abrasia, Reza Aablue
%500942743, 500966944
%Section 4

% Problem D.1

% a) A(:) lists all elements vertically, moving from leftmost column to the
% last column. It moves down each column and prints out every value until
% it reaches the end of the column and moves to the top of the next column.

% b) A([2 4 7]) creates a 1x3 (rows x columns) cell array with the first
% elements in each column. Elements from (2,1), (4,1) and (2,2) are printed
% out as a result of this operation.

% c) [A >= 0.2] creates a 5x4 logical array that checks each elements to
% see if it's greater than or equal to 0.2. Digit 1 is printed for the
% element if condition is true, 0 otherwise. The result is shown below:
% 1   0   0   0
% 1   0   1   0
% 0   1   1   1
% 1   1   0   1
% 1   1   1   1

% d) A([A >= 0.2]) prints out all values that are greater that or equal to
% 0.2 in order of elements 1 to 20. There are 13 elements that are printed
% out.

% e) A([A >= 0.2]) = 0 changes all elements greater than or equal to 0.2 to a
% value of zero.

% Problem D.2a
load ('ELE532_Lab1_Data.mat'); % Load data from the provided file for this problem.

rows = size (B,1); % Row size of matrix B with respect to 1 dimension.
columns = size (B,2); % Column size of matrix B with respect to 2 dimensions.

for i=1:1:rows % 2 nested for-loops for setting all elements with magnitude
               % below 0.01 to zero.
    for j=1:1:columns
        if (abs(B(i,j)) < 0.01)
            B(i,j) = 0;
        end
    end
end
 
% Problem D.2b
load ('ELE532_Lab1_Data.mat'); % Load data from the provided file for this problem.
B([abs(B) < 0.01])=0 % Set all elements less than 0.01 to zero.


% Problem D.2c - part 1 (Elapsed time is 0.01479 seconds.)
tic 
load ('ELE532_Lab1_Data.mat');

rows = size (B,1); % Row size of matrix B with respect to 1 dimension.
columns = size (B,2); % Column size of matrix B with respect to 2 dimensions.

for i=1:1:rows % 2 nested for-loops for setting all elements with magnitude
               % below 0.01 to zero.
    for j=1:1:columns
        if (abs(B(i,j)) < 0.01)
            B(i,j) = 0;
        end
    end
end

fprintf ("\nExecution time for code in Problem D.2a: ");
toc

% Problem D.2c - part 2 (Elapsed time is 0.165708 seconds.)
tic

load ('ELE532_Lab1_Data.mat'); % Load data from the provided file for this problem.
B([abs(B) < 0.01])=0 % Set all elements less than 0.01 to zero.

fprintf ("\nExecution time for code in Problem D.2b: ");
toc

% Problem D.3
load ('ELE532_Lab1_Data.mat'); % Load data from the provided file for this problem.

audio_array = x_audio; % Copy x_audio array into a new array.

row = size (audio_array,1); % Row size of matrix B with respect to 1 dimension.
column = size (audio_array,2); % Column size of matrix B with respect to 2 dimensions.

num_of_zeros=0;

for i=1:row % 2 nested for-loops for finding the number of zeros in the data array.
    for j=1:column
        if (abs(audio_array(i,j))==0)
            num_of_zeros=num_of_zeros+1;
        end
    end
end

% An alternative is to use the nnz() function and then subtract the number
% of zeros from the total number of elements in the data array.

fprintf ("\nNumber of zeros in audio_x array: " + num_of_zeros); 
% Prints out number of zeros in the audio array.

sound (audio_array, 8000) % Plays the sound.