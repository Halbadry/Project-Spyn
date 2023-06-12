clc; clear;
brickOne = ConnectBrick('EV3LL');
%%
brickOne.playTone(100,800,500);
global key 
InitKeyboard();
while 1 
    pause (0.1);
    switch key
        case 's'
            disp('Up Arrow Pressed!');
            brickOne.MoveMotor('A', 50);
            brickOne.MoveMotor('D', 50);

        case 'w'
            disp('Down Arrow Pressed!');
            brickOne.MoveMotor('A', -50);
            brickOne.MoveMotor('D', -50);

        case 'd'
            disp('Left Arrow Pressed!');
            brickOne.MoveMotor('A', -50);

        case 'a'
            disp('Right Arrow Pressed!');
            brickOne.MoveMotor('D', -50);
        case 'b'
            disp('Right Arrow Pressed!');
            brickOne.MoveMotor('C', -10);
            brickOne.MoveMotor('B', 10);
        case 'g'
            brickOne.MoveMotor('C', 0);
            brickOne.MoveMotor('B', 0);
        case 'f'
            brickOne.MoveMotor('C', 10);
            brickOne.MoveMotor('B', -10);

        case 'e'
            brickOne.MoveMotor('A', 0);
            brickOne.MoveMotor('D', 0);
        case 0 
            disp('No Key Pressed!');
        case 'q'
            break;
    end

end

CloseKeyboard();