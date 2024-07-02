classdef app1_export < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        SudokuSolverUIFigure   matlab.ui.Figure
        R99                    matlab.ui.control.EditField
        R98                    matlab.ui.control.EditField
        R97                    matlab.ui.control.EditField
        R96                    matlab.ui.control.EditField
        R95                    matlab.ui.control.EditField
        R94                    matlab.ui.control.EditField
        R93                    matlab.ui.control.EditField
        R92                    matlab.ui.control.EditField
        R91                    matlab.ui.control.EditField
        R89                    matlab.ui.control.EditField
        R88                    matlab.ui.control.EditField
        R87                    matlab.ui.control.EditField
        R86                    matlab.ui.control.EditField
        R85                    matlab.ui.control.EditField
        R84                    matlab.ui.control.EditField
        R83                    matlab.ui.control.EditField
        R82                    matlab.ui.control.EditField
        R81                    matlab.ui.control.EditField
        R79                    matlab.ui.control.EditField
        R78                    matlab.ui.control.EditField
        R77                    matlab.ui.control.EditField
        R76                    matlab.ui.control.EditField
        R75                    matlab.ui.control.EditField
        R74                    matlab.ui.control.EditField
        R73                    matlab.ui.control.EditField
        R72                    matlab.ui.control.EditField
        R71                    matlab.ui.control.EditField
        R69                    matlab.ui.control.EditField
        R68                    matlab.ui.control.EditField
        R67                    matlab.ui.control.EditField
        R66                    matlab.ui.control.EditField
        R65                    matlab.ui.control.EditField
        R64                    matlab.ui.control.EditField
        R63                    matlab.ui.control.EditField
        R62                    matlab.ui.control.EditField
        R61                    matlab.ui.control.EditField
        R59                    matlab.ui.control.EditField
        R58                    matlab.ui.control.EditField
        R57                    matlab.ui.control.EditField
        R56                    matlab.ui.control.EditField
        R55                    matlab.ui.control.EditField
        R54                    matlab.ui.control.EditField
        R53                    matlab.ui.control.EditField
        R52                    matlab.ui.control.EditField
        R51                    matlab.ui.control.EditField
        R49                    matlab.ui.control.EditField
        R48                    matlab.ui.control.EditField
        R47                    matlab.ui.control.EditField
        R46                    matlab.ui.control.EditField
        R45                    matlab.ui.control.EditField
        R44                    matlab.ui.control.EditField
        R43                    matlab.ui.control.EditField
        R42                    matlab.ui.control.EditField
        R41                    matlab.ui.control.EditField
        R39                    matlab.ui.control.EditField
        R38                    matlab.ui.control.EditField
        R37                    matlab.ui.control.EditField
        R36                    matlab.ui.control.EditField
        R35                    matlab.ui.control.EditField
        R34                    matlab.ui.control.EditField
        R33                    matlab.ui.control.EditField
        R32                    matlab.ui.control.EditField
        R31                    matlab.ui.control.EditField
        R29                    matlab.ui.control.EditField
        R28                    matlab.ui.control.EditField
        R27                    matlab.ui.control.EditField
        R26                    matlab.ui.control.EditField
        R25                    matlab.ui.control.EditField
        R24                    matlab.ui.control.EditField
        R23                    matlab.ui.control.EditField
        R22                    matlab.ui.control.EditField
        R21                    matlab.ui.control.EditField
        R19                    matlab.ui.control.EditField
        R18                    matlab.ui.control.EditField
        R17                    matlab.ui.control.EditField
        R16                    matlab.ui.control.EditField
        R15                    matlab.ui.control.EditField
        R14                    matlab.ui.control.EditField
        R13                    matlab.ui.control.EditField
        R12                    matlab.ui.control.EditField
        R11                    matlab.ui.control.EditField
        Switch                 matlab.ui.control.Switch
        SolveButton            matlab.ui.control.Button
        Image                  matlab.ui.control.Image
        Button                 matlab.ui.control.Button
        InsertYourPuzzleLabel  matlab.ui.control.Label
    end

    
    properties (Access = public)
        count = 0; 
    end
    
    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app)
            
        end

        % Callback function: Button, Switch
        function ButtonPushed(app, event)
            if event.EventName == "ButtonPushed"
                message = "Insert the Sudoku puzzle you would like solved. " + newline + newline + ...
                    "You can either click each individual square you would like to fill in, " + ...
                    "or you can start at the top left square and tab through them all. " + ...
                    "When you type a number, it will auto-tab for you to speed up and simplify the process." + newline + newline + ...
                    "Any numbers you don't know just leave blank." + newline + newline + ...
                    "There are a few advanced puzzles this solver can't solve, so if you " + ...
                    "have an error pop up, you will need to solve the puzzle by hand or wait until the next release to try again." + newline + newline  + ...
                    "Also, the AutoTab button does exactly that. When on, typing numbers automatically pushes you to " + ...
                    "the next number, but if you want to hit the tab button yourself, you can by turning AutoTab off.";
                
                uialert(app.SudokuSolverUIFigure, message, "Help", "Icon", "info");

            % Gotta know whether they hit the button or the switch:
            elseif (event.EventName == "ValueChanged")

                % This is unnecessary except I wanted it to be obvious that Items may be weird.
                app.count = app.count + 1;
                if mod(app.count, 2) == 1
                    app.Switch.Value =  " Autotab   ";      % Look at that whitespace, it has to be like that.
                else
                    app.Switch.Value = " ";
                end
            end
        end

        % Value changing function: R11
        function R11ValueChanging(app, event)
            changingValue = event.Value;
            while (changingValue ~= "" && changingValue ~= "1" && changingValue ~= "2" && changingValue ~= "3" && changingValue ~= "4" ...
                    && changingValue ~= "5" && changingValue ~= "6" && changingValue ~= "7" && changingValue ~= "8" && changingValue ~= "9")
                app.R11.Value = "";
                changingValue = "";
            end
            if app.Switch.Value == " "
                    

            end
        end

        % Value changing function: R12
        function R12ValueChanging(app, event)
            changingValue = event.Value;
            while (changingValue ~= "" && changingValue ~= "1" && changingValue ~= "2" && changingValue ~= "3" && changingValue ~= "4" ...
                    && changingValue ~= "5" && changingValue ~= "6" && changingValue ~= "7" && changingValue ~= "8" && changingValue ~= "9")
                app.R12.Value = "";
                changingValue = "";
            end
            if app.Switch.Value == " "
                    

            end
        end

        % Value changing function: R13
        function R13ValueChanging(app, event)
            changingValue = event.Value;
            while (changingValue ~= "" && changingValue ~= "1" && changingValue ~= "2" && changingValue ~= "3" && changingValue ~= "4" ...
                    && changingValue ~= "5" && changingValue ~= "6" && changingValue ~= "7" && changingValue ~= "8" && changingValue ~= "9")
                app.R13.Value = "";
                changingValue = "";
            end
            if app.Switch.Value == " "
                    

            end
        end

        % Value changing function: R14
        function R14ValueChanging(app, event)
            changingValue = event.Value;
            while (changingValue ~= "" && changingValue ~= "1" && changingValue ~= "2" && changingValue ~= "3" && changingValue ~= "4" ...
                    && changingValue ~= "5" && changingValue ~= "6" && changingValue ~= "7" && changingValue ~= "8" && changingValue ~= "9")
                app.R14.Value = "";
                changingValue = "";
            end
            if app.Switch.Value == " "
                    

            end
        end

        % Value changing function: R15
        function R15ValueChanging(app, event)
            changingValue = event.Value;
            while (changingValue ~= "" && changingValue ~= "1" && changingValue ~= "2" && changingValue ~= "3" && changingValue ~= "4" ...
                    && changingValue ~= "5" && changingValue ~= "6" && changingValue ~= "7" && changingValue ~= "8" && changingValue ~= "9")
                app.R15.Value = "";
                changingValue = "";
            end
            if app.Switch.Value == " "
                    

            end
        end

        % Value changing function: R16
        function R16ValueChanging(app, event)
            changingValue = event.Value;
            while (changingValue ~= "" && changingValue ~= "1" && changingValue ~= "2" && changingValue ~= "3" && changingValue ~= "4" ...
                    && changingValue ~= "5" && changingValue ~= "6" && changingValue ~= "7" && changingValue ~= "8" && changingValue ~= "9")
                app.R16.Value = "";
                changingValue = "";
            end
            if app.Switch.Value == " "
                    

            end
        end

        % Value changing function: R17
        function R17ValueChanging(app, event)
            changingValue = event.Value;
            while (changingValue ~= "" && changingValue ~= "1" && changingValue ~= "2" && changingValue ~= "3" && changingValue ~= "4" ...
                    && changingValue ~= "5" && changingValue ~= "6" && changingValue ~= "7" && changingValue ~= "8" && changingValue ~= "9")
                app.R17.Value = "";
                changingValue = "";
            end
            if app.Switch.Value == " "
                    

            end
        end

        % Value changing function: R18
        function R18ValueChanging(app, event)
            changingValue = event.Value;
            while (changingValue ~= "" && changingValue ~= "1" && changingValue ~= "2" && changingValue ~= "3" && changingValue ~= "4" ...
                    && changingValue ~= "5" && changingValue ~= "6" && changingValue ~= "7" && changingValue ~= "8" && changingValue ~= "9")
                app.R18.Value = "";
                changingValue = "";
            end
            if app.Switch.Value == " "
                    

            end
        end

        % Value changing function: R19
        function R19ValueChanging(app, event)
            changingValue = event.Value;
            while (changingValue ~= "" && changingValue ~= "1" && changingValue ~= "2" && changingValue ~= "3" && changingValue ~= "4" ...
                    && changingValue ~= "5" && changingValue ~= "6" && changingValue ~= "7" && changingValue ~= "8" && changingValue ~= "9")
                app.R19.Value = "";
                changingValue = "";
            end
            if app.Switch.Value == " "
                    

            end
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Get the file path for locating images
            pathToMLAPP = fileparts(mfilename('fullpath'));

            % 

            % Create SudokuSolverUIFigure and hide until all components are created
            app.SudokuSolverUIFigure = uifigure('Visible', 'off');
            app.SudokuSolverUIFigure.Position = [0 0 600 700];
            app.SudokuSolverUIFigure.Name = 'Sudoku Solver';
            app.SudokuSolverUIFigure.Icon = fullfile(pathToMLAPP, 'Resources', 'Cuneiform_sumer_dingir.svg.png');
            app.SudokuSolverUIFigure.Resize = 'off';

            % Create InsertYourPuzzleLabel
            app.InsertYourPuzzleLabel = uilabel(app.SudokuSolverUIFigure);
            app.InsertYourPuzzleLabel.FontSize = 24;
            app.InsertYourPuzzleLabel.FontWeight = 'bold';
            app.InsertYourPuzzleLabel.Position = [192 635 216 32];
            app.InsertYourPuzzleLabel.Text = 'Insert Your Puzzle:';

            % Create Button
            app.Button = uibutton(app.SudokuSolverUIFigure, 'push');
            app.Button.ButtonPushedFcn = createCallbackFcn(app, @ButtonPushed, true);
            app.Button.Tag = 'HelpButton';
            app.Button.Icon = fullfile(pathToMLAPP, 'Resources', 'Blue_question_mark_icon.svg.png');
            app.Button.Position = [500 660 22 22];
            app.Button.Text = '';

            % Create Image
            app.Image = uiimage(app.SudokuSolverUIFigure);
            app.Image.HandleVisibility = 'off';
            app.Image.Position = [80 140 440 440];
            app.Image.ImageSource = fullfile(pathToMLAPP, 'Resources', 'blank-sudoku-grid.png');

            % Create SolveButton
            app.SolveButton = uibutton(app.SudokuSolverUIFigure, 'push');
            app.SolveButton.FontSize = 18;
            app.SolveButton.Position = [206 55 190 48];
            app.SolveButton.Text = 'Solve!';

            % Create Switch
            app.Switch = uiswitch(app.SudokuSolverUIFigure, 'slider');
            app.Switch.Items = {' Autotab   ', ' '};
            app.Switch.ValueChangedFcn = createCallbackFcn(app, @ButtonPushed, true);
            app.Switch.Tag = 'AutoTab';
            app.Switch.FontSize = 14;
            app.Switch.Position = [306 605 31 14];
            app.Switch.Value = ' ';

            % Create R11
            app.R11 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R11.InputType = 'text';
            app.R11.ValueChangingFcn = createCallbackFcn(app, @R11ValueChanging, true);
            app.R11.HorizontalAlignment = 'center';
            app.R11.FontSize = 24;
            app.R11.Position = [86 532 42 42];

            % Create R12
            app.R12 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R12.InputType = 'text';
            app.R12.ValueChangingFcn = createCallbackFcn(app, @R12ValueChanging, true);
            app.R12.HorizontalAlignment = 'center';
            app.R12.FontSize = 24;
            app.R12.Position = [134 532 42 42];

            % Create R13
            app.R13 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R13.InputType = 'text';
            app.R13.ValueChangingFcn = createCallbackFcn(app, @R13ValueChanging, true);
            app.R13.HorizontalAlignment = 'center';
            app.R13.FontSize = 24;
            app.R13.Position = [181 532 42 42];

            % Create R14
            app.R14 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R14.InputType = 'text';
            app.R14.ValueChangingFcn = createCallbackFcn(app, @R14ValueChanging, true);
            app.R14.HorizontalAlignment = 'center';
            app.R14.FontSize = 24;
            app.R14.Position = [231 532 42 42];

            % Create R15
            app.R15 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R15.InputType = 'text';
            app.R15.ValueChangingFcn = createCallbackFcn(app, @R15ValueChanging, true);
            app.R15.HorizontalAlignment = 'center';
            app.R15.FontSize = 24;
            app.R15.Position = [279 532 42 42];

            % Create R16
            app.R16 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R16.InputType = 'text';
            app.R16.ValueChangingFcn = createCallbackFcn(app, @R16ValueChanging, true);
            app.R16.HorizontalAlignment = 'center';
            app.R16.FontSize = 24;
            app.R16.Position = [327 532 42 42];

            % Create R17
            app.R17 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R17.InputType = 'text';
            app.R17.ValueChangingFcn = createCallbackFcn(app, @R17ValueChanging, true);
            app.R17.HorizontalAlignment = 'center';
            app.R17.FontSize = 24;
            app.R17.Position = [377 532 42 42];

            % Create R18
            app.R18 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R18.InputType = 'text';
            app.R18.ValueChangingFcn = createCallbackFcn(app, @R18ValueChanging, true);
            app.R18.HorizontalAlignment = 'center';
            app.R18.FontSize = 24;
            app.R18.Position = [424 532 42 42];

            % Create R19
            app.R19 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R19.InputType = 'text';
            app.R19.ValueChangingFcn = createCallbackFcn(app, @R19ValueChanging, true);
            app.R19.HorizontalAlignment = 'center';
            app.R19.FontSize = 24;
            app.R19.Position = [472 532 42 42];

            % Create R21
            app.R21 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R21.InputType = 'text';
            app.R21.ValueChangingFcn = createCallbackFcn(app, @R21ValueChanging, true);
            app.R21.HorizontalAlignment = 'center';
            app.R21.FontSize = 24;
            app.R21.Position = [86 484 42 42];

            % Create R22
            app.R22 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R22.InputType = 'text';
            app.R22.ValueChangingFcn = createCallbackFcn(app, @R22ValueChanging, true);
            app.R22.HorizontalAlignment = 'center';
            app.R22.FontSize = 24;
            app.R22.Position = [134 484 42 42];

            % Create R23
            app.R23 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R23.InputType = 'text';
            app.R23.ValueChangingFcn = createCallbackFcn(app, @R23ValueChanging, true);
            app.R23.HorizontalAlignment = 'center';
            app.R23.FontSize = 24;
            app.R23.Position = [181 484 42 42];

            % Create R24
            app.R24 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R24.InputType = 'text';
            app.R24.ValueChangingFcn = createCallbackFcn(app, @R24ValueChanging, true);
            app.R24.HorizontalAlignment = 'center';
            app.R24.FontSize = 24;
            app.R24.Position = [231 484 42 42];

            % Create R25
            app.R25 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R25.InputType = 'text';
            app.R25.ValueChangingFcn = createCallbackFcn(app, @R25ValueChanging, true);
            app.R25.HorizontalAlignment = 'center';
            app.R25.FontSize = 24;
            app.R25.Position = [279 484 42 42];

            % Create R26
            app.R26 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R26.InputType = 'text';
            app.R26.ValueChangingFcn = createCallbackFcn(app, @R26ValueChanging, true);
            app.R26.HorizontalAlignment = 'center';
            app.R26.FontSize = 24;
            app.R26.Position = [327 484 42 42];

            % Create R27
            app.R27 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R27.InputType = 'text';
            app.R27.ValueChangingFcn = createCallbackFcn(app, @R27ValueChanging, true);
            app.R27.HorizontalAlignment = 'center';
            app.R27.FontSize = 24;
            app.R27.Position = [377 484 42 42];

            % Create R28
            app.R28 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R28.InputType = 'text';
            app.R28.ValueChangingFcn = createCallbackFcn(app, @R28ValueChanging, true);
            app.R28.HorizontalAlignment = 'center';
            app.R28.FontSize = 24;
            app.R28.Position = [424 484 42 42];

            % Create R29
            app.R29 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R29.InputType = 'text';
            app.R29.ValueChangingFcn = createCallbackFcn(app, @R29ValueChanging, true);
            app.R29.HorizontalAlignment = 'center';
            app.R29.FontSize = 24;
            app.R29.Position = [472 484 42 42];

            % Create R31
            app.R31 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R31.InputType = 'text';
            app.R31.ValueChangingFcn = createCallbackFcn(app, @R31ValueChanging, true);
            app.R31.HorizontalAlignment = 'center';
            app.R31.FontSize = 24;
            app.R31.Position = [86 437 42 42];

            % Create R32
            app.R32 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R32.InputType = 'text';
            app.R32.ValueChangingFcn = createCallbackFcn(app, @R32ValueChanging, true);
            app.R32.HorizontalAlignment = 'center';
            app.R32.FontSize = 24;
            app.R32.Position = [134 437 42 42];

            % Create R33
            app.R33 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R33.InputType = 'text';
            app.R33.ValueChangingFcn = createCallbackFcn(app, @R33ValueChanging, true);
            app.R33.HorizontalAlignment = 'center';
            app.R33.FontSize = 24;
            app.R33.Position = [181 437 42 42];

            % Create R34
            app.R34 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R34.InputType = 'text';
            app.R34.ValueChangingFcn = createCallbackFcn(app, @R34ValueChanging, true);
            app.R34.HorizontalAlignment = 'center';
            app.R34.FontSize = 24;
            app.R34.Position = [231 437 42 42];

            % Create R35
            app.R35 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R35.InputType = 'text';
            app.R35.ValueChangingFcn = createCallbackFcn(app, @R35ValueChanging, true);
            app.R35.HorizontalAlignment = 'center';
            app.R35.FontSize = 24;
            app.R35.Position = [279 437 42 42];

            % Create R36
            app.R36 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R36.InputType = 'text';
            app.R36.ValueChangingFcn = createCallbackFcn(app, @R36ValueChanging, true);
            app.R36.HorizontalAlignment = 'center';
            app.R36.FontSize = 24;
            app.R36.Position = [327 437 42 42];

            % Create R37
            app.R37 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R37.InputType = 'text';
            app.R37.ValueChangingFcn = createCallbackFcn(app, @R37ValueChanging, true);
            app.R37.HorizontalAlignment = 'center';
            app.R37.FontSize = 24;
            app.R37.Position = [377 437 42 42];

            % Create R38
            app.R38 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R38.InputType = 'text';
            app.R38.ValueChangingFcn = createCallbackFcn(app, @R38ValueChanging, true);
            app.R38.HorizontalAlignment = 'center';
            app.R38.FontSize = 24;
            app.R38.Position = [424 437 42 42];

            % Create R39
            app.R39 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R39.InputType = 'text';
            app.R39.ValueChangingFcn = createCallbackFcn(app, @R39ValueChanging, true);
            app.R39.HorizontalAlignment = 'center';
            app.R39.FontSize = 24;
            app.R39.Position = [472 437 42 42];

            % Create R41
            app.R41 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R41.InputType = 'text';
            app.R41.ValueChangingFcn = createCallbackFcn(app, @R41ValueChanging, true);
            app.R41.HorizontalAlignment = 'center';
            app.R41.FontSize = 24;
            app.R41.Position = [86 387 42 42];

            % Create R42
            app.R42 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R42.InputType = 'text';
            app.R42.ValueChangingFcn = createCallbackFcn(app, @R42ValueChanging, true);
            app.R42.HorizontalAlignment = 'center';
            app.R42.FontSize = 24;
            app.R42.Position = [134 387 42 42];

            % Create R43
            app.R43 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R43.InputType = 'text';
            app.R43.ValueChangingFcn = createCallbackFcn(app, @R43ValueChanging, true);
            app.R43.HorizontalAlignment = 'center';
            app.R43.FontSize = 24;
            app.R43.Position = [181 387 42 42];

            % Create R44
            app.R44 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R44.InputType = 'text';
            app.R44.ValueChangingFcn = createCallbackFcn(app, @R44ValueChanging, true);
            app.R44.HorizontalAlignment = 'center';
            app.R44.FontSize = 24;
            app.R44.Position = [231 387 42 42];

            % Create R45
            app.R45 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R45.InputType = 'text';
            app.R45.ValueChangingFcn = createCallbackFcn(app, @R45ValueChanging, true);
            app.R45.HorizontalAlignment = 'center';
            app.R45.FontSize = 24;
            app.R45.Position = [279 387 42 42];

            % Create R46
            app.R46 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R46.InputType = 'text';
            app.R46.ValueChangingFcn = createCallbackFcn(app, @R46ValueChanging, true);
            app.R46.HorizontalAlignment = 'center';
            app.R46.FontSize = 24;
            app.R46.Position = [327 387 42 42];

            % Create R47
            app.R47 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R47.InputType = 'text';
            app.R47.ValueChangingFcn = createCallbackFcn(app, @R47ValueChanging, true);
            app.R47.HorizontalAlignment = 'center';
            app.R47.FontSize = 24;
            app.R47.Position = [377 387 42 42];

            % Create R48
            app.R48 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R48.InputType = 'text';
            app.R48.ValueChangingFcn = createCallbackFcn(app, @R48ValueChanging, true);
            app.R48.HorizontalAlignment = 'center';
            app.R48.FontSize = 24;
            app.R48.Position = [424 387 42 42];

            % Create R49
            app.R49 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R49.InputType = 'text';
            app.R49.ValueChangingFcn = createCallbackFcn(app, @R49ValueChanging, true);
            app.R49.HorizontalAlignment = 'center';
            app.R49.FontSize = 24;
            app.R49.Position = [472 387 42 42];

            % Create R51
            app.R51 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R51.InputType = 'text';
            app.R51.ValueChangingFcn = createCallbackFcn(app, @R51ValueChanging, true);
            app.R51.HorizontalAlignment = 'center';
            app.R51.FontSize = 24;
            app.R51.Position = [86 339 42 42];

            % Create R52
            app.R52 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R52.InputType = 'text';
            app.R52.ValueChangingFcn = createCallbackFcn(app, @R52ValueChanging, true);
            app.R52.HorizontalAlignment = 'center';
            app.R52.FontSize = 24;
            app.R52.Position = [134 339 42 42];

            % Create R53
            app.R53 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R53.InputType = 'text';
            app.R53.ValueChangingFcn = createCallbackFcn(app, @R53ValueChanging, true);
            app.R53.HorizontalAlignment = 'center';
            app.R53.FontSize = 24;
            app.R53.Position = [181 339 42 42];

            % Create R54
            app.R54 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R54.InputType = 'text';
            app.R54.ValueChangingFcn = createCallbackFcn(app, @R54ValueChanging, true);
            app.R54.HorizontalAlignment = 'center';
            app.R54.FontSize = 24;
            app.R54.Position = [231 339 42 42];

            % Create R55
            app.R55 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R55.InputType = 'text';
            app.R55.ValueChangingFcn = createCallbackFcn(app, @R55ValueChanging, true);
            app.R55.HorizontalAlignment = 'center';
            app.R55.FontSize = 24;
            app.R55.Position = [279 339 42 42];

            % Create R56
            app.R56 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R56.InputType = 'text';
            app.R56.ValueChangingFcn = createCallbackFcn(app, @R56ValueChanging, true);
            app.R56.HorizontalAlignment = 'center';
            app.R56.FontSize = 24;
            app.R56.Position = [327 339 42 42];

            % Create R57
            app.R57 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R57.InputType = 'text';
            app.R57.ValueChangingFcn = createCallbackFcn(app, @R57ValueChanging, true);
            app.R57.HorizontalAlignment = 'center';
            app.R57.FontSize = 24;
            app.R57.Position = [377 339 42 42];

            % Create R58
            app.R58 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R58.InputType = 'text';
            app.R58.ValueChangingFcn = createCallbackFcn(app, @R58ValueChanging, true);
            app.R58.HorizontalAlignment = 'center';
            app.R58.FontSize = 24;
            app.R58.Position = [424 339 42 42];

            % Create R59
            app.R59 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R59.InputType = 'text';
            app.R59.ValueChangingFcn = createCallbackFcn(app, @R59ValueChanging, true);
            app.R59.HorizontalAlignment = 'center';
            app.R59.FontSize = 24;
            app.R59.Position = [472 339 42 42];

            % Create R61
            app.R61 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R61.InputType = 'text';
            app.R61.ValueChangingFcn = createCallbackFcn(app, @R61ValueChanging, true);
            app.R61.HorizontalAlignment = 'center';
            app.R61.FontSize = 24;
            app.R61.Position = [86 292 42 42];

            % Create R62
            app.R62 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R62.InputType = 'text';
            app.R62.ValueChangingFcn = createCallbackFcn(app, @R62ValueChanging, true);
            app.R62.HorizontalAlignment = 'center';
            app.R62.FontSize = 24;
            app.R62.Position = [134 292 42 42];

            % Create R63
            app.R63 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R63.InputType = 'text';
            app.R63.ValueChangingFcn = createCallbackFcn(app, @R63ValueChanging, true);
            app.R63.HorizontalAlignment = 'center';
            app.R63.FontSize = 24;
            app.R63.Position = [181 292 42 42];

            % Create R64
            app.R64 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R64.InputType = 'text';
            app.R64.ValueChangingFcn = createCallbackFcn(app, @R64ValueChanging, true);
            app.R64.HorizontalAlignment = 'center';
            app.R64.FontSize = 24;
            app.R64.Position = [231 292 42 42];

            % Create R65
            app.R65 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R65.InputType = 'text';
            app.R65.ValueChangingFcn = createCallbackFcn(app, @R65ValueChanging, true);
            app.R65.HorizontalAlignment = 'center';
            app.R65.FontSize = 24;
            app.R65.Position = [279 292 42 42];

            % Create R66
            app.R66 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R66.InputType = 'text';
            app.R66.ValueChangingFcn = createCallbackFcn(app, @R66ValueChanging, true);
            app.R66.HorizontalAlignment = 'center';
            app.R66.FontSize = 24;
            app.R66.Position = [327 292 42 42];

            % Create R67
            app.R67 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R67.InputType = 'text';
            app.R67.ValueChangingFcn = createCallbackFcn(app, @R67ValueChanging, true);
            app.R67.HorizontalAlignment = 'center';
            app.R67.FontSize = 24;
            app.R67.Position = [377 292 42 42];

            % Create R68
            app.R68 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R68.InputType = 'text';
            app.R68.ValueChangingFcn = createCallbackFcn(app, @R68ValueChanging, true);
            app.R68.HorizontalAlignment = 'center';
            app.R68.FontSize = 24;
            app.R68.Position = [424 292 42 42];

            % Create R69
            app.R69 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R69.InputType = 'text';
            app.R69.ValueChangingFcn = createCallbackFcn(app, @R69ValueChanging, true);
            app.R69.HorizontalAlignment = 'center';
            app.R69.FontSize = 24;
            app.R69.Position = [472 292 42 42];

            % Create R71
            app.R71 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R71.InputType = 'text';
            app.R71.ValueChangingFcn = createCallbackFcn(app, @R71ValueChanging, true);
            app.R71.HorizontalAlignment = 'center';
            app.R71.FontSize = 24;
            app.R71.Position = [86 242 42 42];

            % Create R72
            app.R72 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R72.InputType = 'text';
            app.R72.ValueChangingFcn = createCallbackFcn(app, @R72ValueChanging, true);
            app.R72.HorizontalAlignment = 'center';
            app.R72.FontSize = 24;
            app.R72.Position = [134 242 42 42];

            % Create R73
            app.R73 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R73.InputType = 'text';
            app.R73.ValueChangingFcn = createCallbackFcn(app, @R73ValueChanging, true);
            app.R73.HorizontalAlignment = 'center';
            app.R73.FontSize = 24;
            app.R73.Position = [181 242 42 42];

            % Create R74
            app.R74 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R74.InputType = 'text';
            app.R74.ValueChangingFcn = createCallbackFcn(app, @R74ValueChanging, true);
            app.R74.HorizontalAlignment = 'center';
            app.R74.FontSize = 24;
            app.R74.Position = [231 242 42 42];

            % Create R75
            app.R75 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R75.InputType = 'text';
            app.R75.ValueChangingFcn = createCallbackFcn(app, @R75ValueChanging, true);
            app.R75.HorizontalAlignment = 'center';
            app.R75.FontSize = 24;
            app.R75.Position = [279 242 42 42];

            % Create R76
            app.R76 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R76.InputType = 'text';
            app.R76.ValueChangingFcn = createCallbackFcn(app, @R76ValueChanging, true);
            app.R76.HorizontalAlignment = 'center';
            app.R76.FontSize = 24;
            app.R76.Position = [327 242 42 42];

            % Create R77
            app.R77 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R77.InputType = 'text';
            app.R77.ValueChangingFcn = createCallbackFcn(app, @R77ValueChanging, true);
            app.R77.HorizontalAlignment = 'center';
            app.R77.FontSize = 24;
            app.R77.Position = [377 242 42 42];

            % Create R78
            app.R78 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R78.InputType = 'text';
            app.R78.ValueChangingFcn = createCallbackFcn(app, @R78ValueChanging, true);
            app.R78.HorizontalAlignment = 'center';
            app.R78.FontSize = 24;
            app.R78.Position = [424 242 42 42];

            % Create R79
            app.R79 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R79.InputType = 'text';
            app.R79.ValueChangingFcn = createCallbackFcn(app, @R79ValueChanging, true);
            app.R79.HorizontalAlignment = 'center';
            app.R79.FontSize = 24;
            app.R79.Position = [472 242 42 42];

            % Create R81
            app.R81 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R81.InputType = 'text';
            app.R81.ValueChangingFcn = createCallbackFcn(app, @R81ValueChanging, true);
            app.R81.HorizontalAlignment = 'center';
            app.R81.FontSize = 24;
            app.R81.Position = [86 194 42 42];

            % Create R82
            app.R82 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R82.InputType = 'text';
            app.R82.ValueChangingFcn = createCallbackFcn(app, @R82ValueChanging, true);
            app.R82.HorizontalAlignment = 'center';
            app.R82.FontSize = 24;
            app.R82.Position = [134 194 42 42];

            % Create R83
            app.R83 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R83.InputType = 'text';
            app.R83.ValueChangingFcn = createCallbackFcn(app, @R83ValueChanging, true);
            app.R83.HorizontalAlignment = 'center';
            app.R83.FontSize = 24;
            app.R83.Position = [181 194 42 42];

            % Create R84
            app.R84 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R84.InputType = 'text';
            app.R84.ValueChangingFcn = createCallbackFcn(app, @R84ValueChanging, true);
            app.R84.HorizontalAlignment = 'center';
            app.R84.FontSize = 24;
            app.R84.Position = [231 194 42 42];

            % Create R85
            app.R85 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R85.InputType = 'text';
            app.R85.ValueChangingFcn = createCallbackFcn(app, @R85ValueChanging, true);
            app.R85.HorizontalAlignment = 'center';
            app.R85.FontSize = 24;
            app.R85.Position = [279 194 42 42];

            % Create R86
            app.R86 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R86.InputType = 'text';
            app.R86.ValueChangingFcn = createCallbackFcn(app, @R86ValueChanging, true);
            app.R86.HorizontalAlignment = 'center';
            app.R86.FontSize = 24;
            app.R86.Position = [327 194 42 42];

            % Create R87
            app.R87 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R87.InputType = 'text';
            app.R87.ValueChangingFcn = createCallbackFcn(app, @R87ValueChanging, true);
            app.R87.HorizontalAlignment = 'center';
            app.R87.FontSize = 24;
            app.R87.Position = [377 194 42 42];

            % Create R88
            app.R88 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R88.InputType = 'text';
            app.R88.ValueChangingFcn = createCallbackFcn(app, @R88ValueChanging, true);
            app.R88.HorizontalAlignment = 'center';
            app.R88.FontSize = 24;
            app.R88.Position = [424 194 42 42];

            % Create R89
            app.R89 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R89.InputType = 'text';
            app.R89.ValueChangingFcn = createCallbackFcn(app, @R89ValueChanging, true);
            app.R89.HorizontalAlignment = 'center';
            app.R89.FontSize = 24;
            app.R89.Position = [472 194 42 42];

            % Create R91
            app.R91 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R91.InputType = 'text';
            app.R91.ValueChangingFcn = createCallbackFcn(app, @R91ValueChanging, true);
            app.R91.HorizontalAlignment = 'center';
            app.R91.FontSize = 24;
            app.R91.Position = [86 147 42 42];

            % Create R92
            app.R92 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R92.InputType = 'text';
            app.R92.ValueChangingFcn = createCallbackFcn(app, @R92ValueChanging, true);
            app.R92.HorizontalAlignment = 'center';
            app.R92.FontSize = 24;
            app.R92.Position = [134 147 42 42];

            % Create R93
            app.R93 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R93.InputType = 'text';
            app.R93.ValueChangingFcn = createCallbackFcn(app, @R93ValueChanging, true);
            app.R93.HorizontalAlignment = 'center';
            app.R93.FontSize = 24;
            app.R93.Position = [181 147 42 42];

            % Create R94
            app.R94 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R94.InputType = 'text';
            app.R94.ValueChangingFcn = createCallbackFcn(app, @R94ValueChanging, true);
            app.R94.HorizontalAlignment = 'center';
            app.R94.FontSize = 24;
            app.R94.Position = [231 147 42 42];

            % Create R95
            app.R95 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R95.InputType = 'text';
            app.R95.ValueChangingFcn = createCallbackFcn(app, @R95ValueChanging, true);
            app.R95.HorizontalAlignment = 'center';
            app.R95.FontSize = 24;
            app.R95.Position = [279 147 42 42];

            % Create R96
            app.R96 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R96.InputType = 'text';
            app.R96.ValueChangingFcn = createCallbackFcn(app, @R96ValueChanging, true);
            app.R96.HorizontalAlignment = 'center';
            app.R96.FontSize = 24;
            app.R96.Position = [327 147 42 42];

            % Create R97
            app.R97 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R97.InputType = 'text';
            app.R97.ValueChangingFcn = createCallbackFcn(app, @R97ValueChanging, true);
            app.R97.HorizontalAlignment = 'center';
            app.R97.FontSize = 24;
            app.R97.Position = [377 147 42 42];

            % Create R98
            app.R98 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R98.InputType = 'text';
            app.R98.ValueChangingFcn = createCallbackFcn(app, @R98ValueChanging, true);
            app.R98.HorizontalAlignment = 'center';
            app.R98.FontSize = 24;
            app.R98.Position = [424 147 42 42];

            % Create R99
            app.R99 = uieditfield(app.SudokuSolverUIFigure, 'text');
            app.R99.InputType = 'text';
            app.R99.ValueChangingFcn = createCallbackFcn(app, @R99ValueChanging, true);
            app.R99.HorizontalAlignment = 'center';
            app.R99.FontSize = 24;
            app.R99.Position = [472 147 42 42];

            % Show the figure after all components are created
            app.SudokuSolverUIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = app1_export

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.SudokuSolverUIFigure)

            % Execute the startup function
            runStartupFcn(app, @startupFcn)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.SudokuSolverUIFigure)
        end
    end
end