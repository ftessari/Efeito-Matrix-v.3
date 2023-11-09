program Matrix;

{$APPTYPE CONSOLE}

uses
  windows;

const
  SCREEN_W = 25;       //largura da tela
  SCREEN_H = 25;       //altura da tela
var
  stdOut   : THANDLE;  //handler da janela do console
  position : COORD;    //posição em que vamos imprimir o caracter (x, y)
  attribute: Word;     //atributos de saída de texto no console
begin
  randomize;
  stdOut := GetStdHandle(STD_OUTPUT_HANDLE);
  while hi(GetKeyState(VK_ESCAPE)) = 0 do
  begin
    position.X:= short(random(SCREEN_W-1));
    position.Y:= short(random(SCREEN_H-1));
    if (Random(10) mod 2 = 0) then
       attribute:= FOREGROUND_GREEN
    else
       attribute:= 10;
    SetConsoleTextAttribute(stdOut, attribute);
    SetConsoleCursorPosition(stdOut, position);
    if (Random(10) mod 2 = 0) then
       write('0')
    else
       write('1');
  end;
end.
