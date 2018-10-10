
% The following is an interactive MATLAB tool to check if a number of a specified input format ak1+b1 
% when squared results into a number of the specified output format ak2+b2. 

% The user has to enter both the input and the output formats when prompted by the program.
% Appropriate error messages and warnings are provided by the program which guides the user 
% to enter valid inputs at each point . 

% Problem Statement and the solution approach are explained in the README.md file

clear all;
clc;

fprintf('Input format of the form ak+b :\n'); % Statement to obtain inputs from user for input format of integer
a1 = input('a = ');                             % Variable a1 used as coefficient of k in input format
b1 = input('b = ');                             % Variable b1 used as constant in input format

fprintf('\n\nOutput format of the form ak+b : \n');   % Statement to obtain inputs from user for output format of integer
a2 = input('a = ');                                     % Variable a2 used as coefficient of k in output format
b2 = input('b = ');                                     % Variable b2 used as constant in output format

% The following code from line 11 to line 35 is an usual prompt code to check for erroneous inputs

    while (a1 < 0)                                        % Checking for valid input of a1
        a1 = input('Enter a positive coefficient of k ');   % Prompt for new value for a1
    end

    while (a1 ~= a2)                                        % Checking for identity in both a1 and a2
        fprintf('Enter equal values of coefficients for both input and outputs \n');    % Prompt for new values of 
        a1 = input('input coefficient a = ');                                           % a1  and
        a2 = input('output coefficient a = ');                                          % a2   
    end

    while (b1 < 0 || b2 < 0)                                                        % Checking for positive value constants
        if (b1 < 0)
            b1 = input('Enter constant for input expression greater than 0 ');      % Prompt for positive b1
        else
            b2 = input('Enter constant for output expression greater than 0');     % Prompt for positive b2
        end
    end

    while (b1 >= a1 || b2 >= a1)                               % Checking for valid constants in the expression
        if (b1 > a1)
            b1 = input(sprintf('Enter constant for input expression lesser than %d \n',a1));      % Prompt for valid value of b1
        else
            b2 = input(sprintf('Enter constant for output expression lesser than %d \n',a1));     % Prompt for valid of b2
        end
    end

if mod (b1^2,a1)==b2                                                       % Verifing whether the input and output formats satisfy the conditions
    fprintf('The entered output format is correct\n');                    
    fprintf('(%dk+%d)^2 = (%dk+%d)\n',a1,b1,a2,b2);                       % Output if the formats are valid
    
else
    fprintf('The entered output format is incorrect\n');                  % Output if the formats are invalid
    fprintf('The correct output format is %dk+%d\n',a1,mod(b1^2,a1));     % Calculated correct output format for the given input format
    fprintf('(%dk+%d)^2 = (%dk+%d)\n',a1,b1,a1,mod(b1^2,a1));             % Final   
end