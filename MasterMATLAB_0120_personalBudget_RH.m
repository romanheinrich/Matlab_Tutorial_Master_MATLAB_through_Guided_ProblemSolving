%% 
%     COURSE: Master MATLAB through guided problem-solving
%    SECTION: Getting started
%      VIDEO: Using MATLAB for a personal budget
% Instructor: mikexcohen.com
%
%%
clc;
% monthly income (post-tax)
income = 2500;

% list monthly expenses
rent  = 1200;
utils =  300; % water, electricity, internet, etc.
car   =  250; % gas and insurance
food  =  300; % assuming 75/week
phone =   50; % gotta have unlimited downloads!
retirement = income*0.1; % you should be saving 10% of your income!


% total monthly expenditures
outflow = rent + utils + car + food + phone + retirement;

% amount left over for nonessential expenses
nonessentials = income-outflow;


% how much can you spend per day?
perday = nonessentials/30;
disp([ 'I can spend ' num2str(perday) '€ extra each day.' ])


% what if you spend twice as much during the weekend as during the week?
perweek     =   nonessentials / (30/7);
in_thirds   =   perweek / 3;
disp('If I spend twice as much during the weekend as during the week?')
disp([ 'I can spend ' num2str(in_thirds) '€ extra during the week,' ]) % concatenate strings
disp([ 'and ' num2str(2*in_thirds) '€ extra during the weekend.' ])


% Here are som more examples how to use the disp() function

data = {1, 'two', [3, 4, 5]};                       % Here matlab creates a cell array. Inside of the cell array you can save different data types
disp(data);                                         % The disp function will display the whole content of the cell array in a formated way
disp(data{1,3});                                    % Like this you can display specific elements of the structure
disp(data{1,3}(3));                                 % Like that you can display the elements of an array saved inside the structure
%disp(1, 'two', [3, 4, 5]);                         % This experssion will not work as disp() function expects only one input argument
disp( {1, 'two', [3, 4, 5]} );                      % But it will work with curly baces as you %create an cell array
disp( [num2str(1) 'two' num2str([3, 4, 5]) ] );     % Another option is to concatenate the values to one string array by using square brackets


student.name = 'Alice';
student.age = 25;
student.grade = 'A';
disp(student);                                      % The disp() function can also display the fields and values of the structure


%% Matrix, Cell, Structure
% In MATLAB, cell arrays, matrices, and structures are different data structures with distinct characteristics and purposes.
% Matrices:
% A matrix is a 2-dimensional array that stores elements of the same type, typically numbers or characters.
% Elements in a matrix are arranged in rows and columns and can be accessed using parentheses (), e.g., ().
% Matrices are widely used in MATLAB for mathematical computations and operations, such as matrix multiplication and solving linear equations.
% Example:
matrix = [1, 2, 3; 4, 5, 6; 7, 8, 9];
display(matrix(2));
% Cell Arrays:
% A cell array is a data structure that can store elements of different types, such as numbers, strings, and even other arrays or cells.
% Elements in a cell array are enclosed in curly braces {} and can be accessed using curly brace indexing, e.g., {}.
% Cell arrays are useful when you need to store heterogeneous data or when the size of the elements varies.
% Example:
cellArray = {1, 'two', [3, 4, 5]};
display(cellArray{1,3}(2));
% Structures:
% A structure is a data type that allows you to group related data together by associating names (field names) with values.
% Elements in a structure are stored as fields, and each field can contain any data type.
% Fields in a structure can be accessed using dot notation, e.g., ..
% Structures are useful when you want to organize and access data in a more meaningful way, similar to a dictionary or a record in other programming languages.
% Example:
student.name = 'Alice';
student.age = 25;
student.grade = 'A';
display(student.age);