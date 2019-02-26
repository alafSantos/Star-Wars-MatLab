clear all, close all, clc;
img = figure('Name','Alaf Santos e Gabriel Ribeiro', 'Color', 'k');

%%%% NAVE 1 %%%%
OBJ=[
0, 0, 0, 1;
106.5,749.9,0,1;
125.4,747.1,0,1;
139.4,846.1,0,1;
120.05,848.9,0,1;
225,1600,0,1;
329.95,848.9,0,1;
310.6,846.9,0,1;
324.6,747.1,0,1;
343.95,749.9,0,1;
450,0,0,1;
0,0,0,1;
0,0,-50,1;
106.5,749.9,-50,1;
106.5,749.9,0,1;
106.5,749.9,-50,1;
125.4,747.1,-50,1;
125.4,747.1,0,1;
125.4,747.1,-50,1;
139.4,846.1,-50,1;
139.4,846.1,0,1;
139.4,846.1,-50,1;
120.05,848.9,-50,1;
120.05,848.9,0,1;
120.05,848.9,-50,1;
225,1600,-50,1;
225,1600,0,1;
225,1600,-50,1;
329.95,848.9,-50,1;
329.95,848.9,0,1;
329.95,848.9,-50,1;
310.6,846.9,-50,1;
310.6,846.9,0,1;
310.6,846.9,-50,1;
324.6,747.1,-50,1;
324.6,747.1,0,1;
324.6,747.1,-50,1;
343.95,749.9,-50,1;
343.95,749.9,0,1;
343.95,749.9,-50,1;
450,0,-50,1;
450,0,0,1;
450,0,-50,1;
0,0,-50,1;
0,0,0,1;
0,0,-50,1;
0,0,0,1;
125,0,0,1;
325,0,0,1;
325,100,0,1;
125,100,0,1;
125,0,0,1;
125,0,50,1;
325,0,50,1;
325,0,0,1;
325,0,50,1;
325,100,50,1;
325,100,0,1;
325,100,50,1;
125,100,50,1;
125,100,0,1;
125,100,50,1;
125,0,50,1;
];

OBJ2=[
    205,40,50,1;
    205,60,50,1;
    245,60,50,1;
    245,40,50,1;
    205,40,50,1;
    205,40,125,1;
    205,60,125,1;
    205,60,50,1;
    205,60,125,1;
    245,60,125,1;
    245,60,50,1;
    245,60,125,1;
    245,40,125,1;
    245,40,50,1;
    245,40,125,1;
    205,40,125,1;
    ];
   
OBJ3=[
    345,90,125,1;
    345,10,125,1;
    105,10,125,1;
    105,90,125,1;
    345,90,125,1;
    345,90,150,1;
    345,10,150,1;
    345,10,125,1;
    345,10,150,1;
    105,10,150,1;
    105,10,125,1;
    105,90,150,1;
    105,90,150,1;
    105,90,125,1;
    105,90,150,1;
    345,90,150,1;
    ];
OBJ4=[
    275,500,-50,1;
    275,600,-50,1;
    175,600,-50,1;
    175,500,-50,1;
    275,500,-50,1;
    275,500,-25,1;
    275,600,-25,1;
    275,600,-50,1;
    275,600,-25,1;
    175,600,-25,1;
    175,600,-50,1;
    175,600,-25,1;
    175,500,-25,1;
    175,500,-50,1;
    175,500,-25,1;
    275,500,-25,1;
     ];
 
%%%%% NAVE 2 %%%%
OBJ5= criarCilindro(15,50);
OBJ8=criarCilindro(5,10);
OBJ8=trans3d(OBJ8,[0,0,-10])
OBJ5= rot3d(OBJ5,90,'y');
OBJ8= rot3d(OBJ8,90,'y');
OBJ9=OBJ8;
OBJ8=trans3d(OBJ8,[0,-10,0]);
OBJ9=trans3d(OBJ9,[0,10,0]);


OBJ6=[
    50,20,15,1;
    50,20,-15,1;
    50,-20,-15,1;
    50,-20,15,1;
    50,20,15,1;
    80,0,0,1;
    50,20,-15,1;
    50,-20,-15,1;
    80,0,0,1;
    50,-20,15,1;
      ];
  
OBJ7=[
    0,20,15,1;
    0,20,-15,1;
    0,-20,-15,1;
    0,-20,15,1;
    0,20,15,1;
    ];

posicao2 = [6300 4000 0];
posicao = [5800 2000 0];

% criaresfera(raio,centroDoRaio);
esfera = criaresfera(100,posicao2);
esfera2 = criaresfera(500,posicao);

%aumenta a escala da nave2
ESCALA = [6 6 6];
CENTRO = [0.5 2 1];
OBJ5 = trans3d(OBJ5,-CENTRO);
OBJ5 = esc3d(OBJ5,ESCALA);
OBJ5 = trans3d(OBJ5,CENTRO);
OBJ6 = trans3d(OBJ6,-CENTRO);
OBJ6 = esc3d(OBJ6,ESCALA);
OBJ6 = trans3d(OBJ6,CENTRO);
OBJ7 = trans3d(OBJ7,-CENTRO);
OBJ7 = esc3d(OBJ7,ESCALA);
OBJ7 = trans3d(OBJ7,CENTRO);
OBJ8 = trans3d(OBJ8,-CENTRO);
OBJ8 = esc3d(OBJ8,ESCALA);
OBJ8 = trans3d(OBJ8,CENTRO);
OBJ9 = trans3d(OBJ9,-CENTRO);
OBJ9 = esc3d(OBJ9,ESCALA);
OBJ9 = trans3d(OBJ9,CENTRO);

%rotaciona a nave2
OBJ5 = rot3d(OBJ5,90,'z');
OBJ6 = rot3d(OBJ6,90,'z');
OBJ7 = rot3d(OBJ7,90,'z');
OBJ8 = rot3d(OBJ8,90,'z');
OBJ9 = rot3d(OBJ9,90,'z');
 
%move a nave2
OBJ5 = trans3d(OBJ5,[400 3000 -200]);
OBJ6 = trans3d(OBJ6,[400 3000 -200]);
OBJ7 = trans3d(OBJ7,[400 3000 -200]);
OBJ8 = trans3d(OBJ8,[400 3000 -200]);
OBJ9 = trans3d(OBJ9,[400 3000 -200]);

%move a nave1
OBJ = trans3d(OBJ,[0 -3000 0]);
OBJ2 = trans3d(OBJ2,[0 -3000 0]);
OBJ3 = trans3d(OBJ3,[0 -3000 -0]);
OBJ4 = trans3d(OBJ4,[0 -3000 -0]);

%tamanho dos eixos
x1 = 280;
x2 = 600;
y1 = 2900;
y2 = 3500;
z1 = -300;
z2 = -100;

%nave2
mostrar3d(OBJ5);
hold on;
mostrar3d(OBJ6);
mostrar3d(OBJ7);
mostrar3d(OBJ8);
mostrar3d(OBJ9);
view(3);
axis([x1 x2 y1 y2 z1 z2]);
axis off;
pause(0.5);

som = audioread('starWars.wav');
sound(som, 44100);

%animacao dos eixos
while y1 > -3000
    i = 100;
    if x1 > -50
        x1 = x1 - i;
    end
 
    if x2 < 10000
        x2 = x2 + i;
    end
    
    if y2 < 5500
        y2 = y2 + i;
    end
    
    if z1 > -800
        z1 = z1 - i;
    end
    
    if z2 < 4000
        z2 = z2 + i;
    end
    
    y1 = y1 - i;
    
    mostrar3d(OBJ);
    hold on;
    if y1 > -2600
        if y1 == 2600 
            title('E','Color','R');
        end
        
        if y1 == 2400 
            title('Ex','Color','R');
        end
        
        if y1 == 2200 
            title('Exp','Color','R');
        end
        
        if y1 == 2000 
            title('Expr','Color','R');
        end

        if y1 == 1800 
            title('Expre','Color','R');
        end
        
        if y1 == 1600 
            title('Expres','Color','R');
        end
        
        if y1 == 1400 
            title('Express','Color','R');
        end
        
        if y1 == 1200
            title('Expressa','Color','R');
        end
        
        if y1 == 1000
            title('Expressao','Color','R');
        end
        
        if y1 == 800
            title('Expressao G','Color','R');
        end
        
        if y1 == 600
            title('Expressao Gr','Color','R');
        end
        
        if y1 == 400
            title('Expressao Gra','Color','R');
        end
        
        if y1 == 200
            title('Expressao Graf','Color','R');
        end
        
        if y1 == 0
            title('Expressao Grafi','Color','R');
        end
        
        if y1 == -200 
            title('Expressao Grafic','Color','R');
        end
        
        if y1 == -400 
            title('Expressao Grafica','Color','R');
        end
        
        if y1 == -600 
            title('Expressao Grafica - ','Color','R');
        end
        
        if y1 == -800 
            title('Expressao Grafica - A','Color','R');
        end
        
        if y1 == -1000 
            title('Expressao Grafica - An','Color','R');
        end
        
        if y1 == -1200 
            title('Expressao Grafica - Ani','Color','R');
        end
        
        if y1 == -1400 
            title('Expressao Grafica - Anim','Color','R');
        end
        
        if y1 == -1600 
            title('Expressao Grafica - Anima','Color','R');
        end
        
        if y1 == -1800 
            title('Expressao Grafica - Animac','Color','R');
        end
        
        if y1 == -2000 
            title('Expressao Grafica - Animaca','Color','R');
        end
        
        if y1 == -2200 
            title('Expressao Grafica - Animacao ','Color','R');
        end
        
        if y1 == -2400 
            title('Expressao Grafica - Animacao 3','Color','R');
        end
        
        if y1 == -2600 
            title('Expressao Grafica - Animacao 3D','Color','R');
        end
        
    end
    mostrar3d(OBJ2);
    mostrar3d(OBJ3);
    mostrar3d(OBJ4);
    mostrar3d(esfera2);
    mostrar3d(esfera)
    view(3);
    axis([x1 x2 y1 y2 z1 z2]);
    axis off;
    pause(0.00001);
end
    
hold off;

mostrar3d(OBJ);
hold on;
mostrar3d(OBJ2);
mostrar3d(OBJ3);
mostrar3d(OBJ4);
mostrar3d(OBJ5);
mostrar3d(OBJ6);
mostrar3d(OBJ7);
mostrar3d(OBJ8);
mostrar3d(OBJ9);
mostrar3d(esfera);
mostrar3d(esfera2);
title('Expressao Grafica - Animacao 3D','Color','R');
axis([x1 x2 y1 y2 z1 z2]);
axis off;
pause(0.25);
hold off;


r = 5;
%tiros
while r < 40
     tiro1A = criaresfera(r,[1000 -1500 -500]);
     tiro2A = criaresfera(r,[500 -1500 -500]);
         
     %nave1
     mostrar3d(OBJ);
     hold on;
     mostrar3d(OBJ2);
     mostrar3d(OBJ3);
     mostrar3d(OBJ4);

     %nave2
     mostrar3d(OBJ5);
     mostrar3d(OBJ6);
     mostrar3d(OBJ7);
     mostrar3d(OBJ8);
     mostrar3d(OBJ9);
     mostrar3d(esfera);
     mostrar3d(esfera2);
     mostrar3d(tiro1A);
     mostrar3d(tiro2A);
         
     %configuracao da tela
     title('Expressao Grafica - Animacao 3D', 'Color', 'R');
     axis([x1 x2 y1 y2 z1 z2]);
     axis off;
     pause(0.00001);
     hold off;
     r = r + 5;
end


tiro1 = criaresfera(40,[1000 -1500 -500]);
tiro2 = criaresfera(40,[500 -1500 -500]);

%nave1 atira contra a nave2
for i = 10:15
     deslocamento = [0 30*i 0]; 
     
     %move os tiros
     tiro2 = trans3d(tiro2,deslocamento);
     mostrar3d(tiro1);
     hold on;
     mostrar3d(tiro2);
     
      %nave1
     mostrar3d(OBJ);
     mostrar3d(OBJ2);
     mostrar3d(OBJ3);
     mostrar3d(OBJ4);

     %nave2
     mostrar3d(OBJ5);
     mostrar3d(OBJ6);
     mostrar3d(OBJ7);
     mostrar3d(OBJ8);
     mostrar3d(OBJ9);
     mostrar3d(esfera);
     mostrar3d(esfera2);
     
     %configuracao da tela
     title('Expressao Grafica - Animacao 3D', 'Color', 'R');
     axis([x1 x2 y1 y2 z1 z2]);
     axis off;
     pause(0.00001);
     hold off;
end

for i = 10:20
     deslocamento = [0 50*i 0]; 
     
     %move os tiros
     tiro1 = trans3d(tiro1,deslocamento);
     tiro2 = trans3d(tiro2,deslocamento);
     mostrar3d(tiro1);
     hold on;
     mostrar3d(tiro2);
     
      %nave1
     mostrar3d(OBJ);
     mostrar3d(OBJ2);
     mostrar3d(OBJ3);
     mostrar3d(OBJ4);

     %nave2
     mostrar3d(OBJ5);
     mostrar3d(OBJ6);
     mostrar3d(OBJ7);
     mostrar3d(OBJ8);
     mostrar3d(OBJ9);
     mostrar3d(esfera);
     mostrar3d(esfera2);
     
     %configuracao da tela
     title('Expressao Grafica - Animacao 3D', 'Color', 'R');
     axis([x1 x2 y1 y2 z1 z2]);
     axis off;
     pause(0.00001);
     hold off;
end



%SUPER DISPARO
r = 5;
while r < 150
     super = criaresfera(r,[650 -800 -400]);
         
     %nave1
     mostrar3d(OBJ);
     hold on;
     mostrar3d(OBJ2);
     mostrar3d(OBJ3);
     mostrar3d(OBJ4);

     %nave2
     mostrar3d(OBJ5);
     mostrar3d(OBJ6);
     mostrar3d(OBJ7);
     mostrar3d(OBJ8);
     mostrar3d(OBJ9);
     mostrar3d(esfera);
     mostrar3d(esfera2);
     mostrar3d(super);
         
     %configuracao da tela
     title('Expressao Grafica - Animacao 3D', 'Color', 'R');
     axis([x1 x2 y1 y2 z1 z2]);
     axis off;
     pause(0.00001);
     hold off;
     r = r + 5;
end


super = criaresfera(150,[650 -800 -400]);

%nave1 atira um super disparo contra a nave2
for i = 10:16
     deslocamento = [0 50*i 0]; 
     
     %move os tiros
     super = trans3d(super,deslocamento);
     mostrar3d(super);
     hold on;
     
     %nave1
     mostrar3d(OBJ);
     mostrar3d(OBJ2);
     mostrar3d(OBJ3);
     mostrar3d(OBJ4);

     %nave2
     mostrar3d(OBJ5);
     mostrar3d(OBJ6);
     mostrar3d(OBJ7);
     mostrar3d(OBJ8);
     mostrar3d(OBJ9);
     mostrar3d(esfera);
     mostrar3d(esfera2);
     
     %configuracao da tela
     title('Expressao Grafica - Animacao 3D', 'Color', 'R');
     axis([x1 x2 y1 y2 z1 z2]);
     axis off;
     pause(0.00001);
     hold off;
     
     
     if i == 16
         r = 150;
         while r < 10000
            super = criaresfera(r,[650 5000 -400]);
            mostrar3d(OBJ);
            hold on;
            mostrar3d(OBJ2);
            mostrar3d(OBJ3);
            mostrar3d(OBJ4);
            mostrar3d(esfera);
            mostrar3d(esfera2);
            mostrar3d(super);
         
            %configuracao da tela
            title('Expressao Grafica - Animacao 3D', 'Color', 'R');
            axis([x1 x2 y1 y2 z1 z2]);
            axis off;
            pause(0.00001);
            hold off;
            r = r + 1000;
        end
     end
end

%nave1 muda a direção (rotaciona)
i = 0.5;
while i < 4
  
     OBJ = rot3d(OBJ, i, 'z');
     OBJ2 = rot3d(OBJ2, i, 'z');
     OBJ3 = rot3d(OBJ3, i, 'z');
     OBJ4 = rot3d(OBJ4, i, 'z');
     mostrar3d(OBJ);
     hold on;
     mostrar3d(OBJ2);
     mostrar3d(OBJ3);
     mostrar3d(OBJ4);
     mostrar3d(esfera);
     mostrar3d(esfera2);
     title('Expressao Grafica - Animacao 3D', 'Color', 'R');
     axis([x1 x2 y1 y2 z1 z2]);
     axis off;
     pause(0.0001);
     hold off;
     i = i + 0.5;
end

%FIM
for i = 10:30     
     deslocamento = [-7*i 40*i 0];
     
     %move a nave1
     OBJ = trans3d(OBJ,deslocamento);
     OBJ2 = trans3d(OBJ2,deslocamento);
     OBJ3 = trans3d(OBJ3,deslocamento);
     OBJ4 = trans3d(OBJ4,deslocamento);

     %nave1
     mostrar3d(OBJ);
     hold on;
     mostrar3d(OBJ2);
     mostrar3d(OBJ3);
     mostrar3d(OBJ4);
     mostrar3d(esfera);
     mostrar3d(esfera2);
     
     %configuracao da tela
     title('Expressao Grafica - Animacao 3D', 'Color', 'R');
     axis([x1 x2 y1 y2 z1 z2]);
     axis off;
     pause(0.00001);
     hold off;
     
     if i == 30
        for j = 1:135
         if j == 135
            esfera = esc3d(esfera,[0.8 0.8 0.8]);
            esfera2 = esc3d(esfera2,[0.8 0.8 0.8]);
            mostrar3d(esfera);
            hold on;
            mostrar3d(esfera2);
            title(' ', 'Color', 'R');
            axis([x1 x2 y1 y2 z1 z2]);
            axis off;
            pause(0.5);
            hold off;
         end
         
         if j == 130
            esfera = esc3d(esfera,[0.8 0.8 0.8]);
            esfera2 = esc3d(esfera2,[0.8 0.8 0.8]);
            mostrar3d(esfera);
            hold on;
            mostrar3d(esfera2);
            title('E', 'Color', 'R');
            axis([x1 x2 y1 y2 z1 z2]);
            axis off;
            pause(0.00001);
            hold off;
         end
         
         if j == 125
            esfera = esc3d(esfera,[0.8 0.8 0.8]);
            esfera2 = esc3d(esfera2,[0.8 0.8 0.8]);
            mostrar3d(esfera);
            hold on;
            mostrar3d(esfera2);
            title('Ex', 'Color', 'R');
            axis([x1 x2 y1 y2 z1 z2]);
            axis off;
            pause(0.00001);
            hold off;
         end
         
         if j == 120
            esfera = esc3d(esfera,[0.8 0.8 0.8]);
            esfera2 = esc3d(esfera2,[0.8 0.8 0.8]);
            mostrar3d(esfera);
            hold on;
            mostrar3d(esfera2);
            title('Exp', 'Color', 'R');
            axis([x1 x2 y1 y2 z1 z2]);
            axis off;
            pause(0.00001);
            hold off;
         end
         
         if j == 115
            esfera = esc3d(esfera,[0.8 0.8 0.8]);
            esfera2 = esc3d(esfera2,[0.8 0.8 0.8]);
            mostrar3d(esfera);
            hold on;
            mostrar3d(esfera2);
            title('Expr', 'Color', 'R');
            axis([x1 x2 y1 y2 z1 z2]);
            axis off;
            pause(0.00001);
            hold off;
         end
         
         if j == 110
            esfera = esc3d(esfera,[0.8 0.8 0.8]);
            esfera2 = esc3d(esfera2,[0.8 0.8 0.8]);
            mostrar3d(esfera);
            hold on;
            mostrar3d(esfera2);
            title('Expre', 'Color', 'R');
            axis([x1 x2 y1 y2 z1 z2]);
            axis off;
            pause(0.00001);
            hold off;
         end
         
         if j == 105
            esfera = esc3d(esfera,[0.8 0.8 0.8]);
            esfera2 = esc3d(esfera2,[0.8 0.8 0.8]);
            mostrar3d(esfera);
            hold on;
            mostrar3d(esfera2);
            title('Expres', 'Color', 'R');
            axis([x1 x2 y1 y2 z1 z2]);
            axis off;
            pause(0.00001);
            hold off;
         end
         
         if j == 100
            esfera = esc3d(esfera,[0.8 0.8 0.8]);
            esfera2 = esc3d(esfera2,[0.8 0.8 0.8]);
            mostrar3d(esfera);
            hold on;
            mostrar3d(esfera2);
            title('Express', 'Color', 'R');
            axis([x1 x2 y1 y2 z1 z2]);
            axis off;
            pause(0.00001);
            hold off;
         end
         
         if j == 95
            esfera = esc3d(esfera,[0.8 0.8 0.8]);
            esfera2 = esc3d(esfera2,[0.8 0.8 0.8]);
            mostrar3d(esfera);
            hold on;
            mostrar3d(esfera2);
            title('Expressa', 'Color', 'R');
            axis([x1 x2 y1 y2 z1 z2]);
            axis off;
            pause(0.00001);
            hold off;
         end
         
         if j == 90
            esfera = esc3d(esfera,[0.8 0.8 0.8]);
            esfera2 = esc3d(esfera2,[0.8 0.8 0.8]);
            mostrar3d(esfera);
            hold on;
            mostrar3d(esfera2);
            title('Expressao', 'Color', 'R');
            axis([x1 x2 y1 y2 z1 z2]);
            axis off;
            pause(0.00001);
            hold off;
         end
         
         if j == 85
            esfera = esc3d(esfera,[0.8 0.8 0.8]);
            esfera2 = esc3d(esfera2,[0.8 0.8 0.8]);
            mostrar3d(esfera);
            hold on;
            mostrar3d(esfera2);
            title('Expressao G', 'Color', 'R');
            axis([x1 x2 y1 y2 z1 z2]);
            axis off;
            pause(0.00001);
            hold off;
         end
         
         if j == 80
            esfera = esc3d(esfera,[0.8 0.8 0.8]);
            esfera2 = esc3d(esfera2,[0.8 0.8 0.8]);
            mostrar3d(esfera);
            hold on;
            mostrar3d(esfera2);
            title('Expressao Gr', 'Color', 'R');
            axis([x1 x2 y1 y2 z1 z2]);
            axis off;
            pause(0.00001);
            hold off;
         end
         
         if j == 75
            esfera = esc3d(esfera,[0.8 0.8 0.8]);
            esfera2 = esc3d(esfera2,[0.8 0.8 0.8]);
            mostrar3d(esfera);
            hold on;
            mostrar3d(esfera2);
            title('Expressao Gra', 'Color', 'R');
            axis([x1 x2 y1 y2 z1 z2]);
            axis off;
            pause(0.00001);
            hold off;
         end
         
         if j == 70
            esfera = esc3d(esfera,[0.8 0.8 0.8]);
            esfera2 = esc3d(esfera2,[0.8 0.8 0.8]);
            mostrar3d(esfera);
            hold on;
            mostrar3d(esfera2);
            title('Expressao Graf', 'Color', 'R');
            axis([x1 x2 y1 y2 z1 z2]);
            axis off;
            pause(0.00001);
            hold off;
         end
         
         if j == 65
            esfera = esc3d(esfera,[0.8 0.8 0.8]);
            esfera2 = esc3d(esfera2,[0.8 0.8 0.8]);
            mostrar3d(esfera);
            hold on;
            mostrar3d(esfera2);
            title('Expressao Grafi', 'Color', 'R');
            axis([x1 x2 y1 y2 z1 z2]);
            axis off;
            pause(0.00001);
            hold off;
         end
         
         if j == 60
            esfera = esc3d(esfera,[0.8 0.8 0.8]);
            esfera2 = esc3d(esfera2,[0.8 0.8 0.8]);
            mostrar3d(esfera);
            hold on;
            mostrar3d(esfera2);
            title('Expressao Grafic', 'Color', 'R');
            axis([x1 x2 y1 y2 z1 z2]);
            axis off;
            pause(0.00001);
            hold off;
         end
         
         if j == 55
            esfera = esc3d(esfera,[0.8 0.8 0.8]);
            esfera2 = esc3d(esfera2,[0.8 0.8 0.8]);
            mostrar3d(esfera);
            hold on;
            mostrar3d(esfera2);
            title('Expressao Grafica', 'Color', 'R');
            axis([x1 x2 y1 y2 z1 z2]);
            axis off;
            pause(0.00001);
            hold off;
         end
         
         if j == 50
            esfera = esc3d(esfera,[0.8 0.8 0.8]);
            esfera2 = esc3d(esfera2,[0.8 0.8 0.8]);
            mostrar3d(esfera);
            hold on;
            mostrar3d(esfera2);
            title('Expressao Grafica - ', 'Color', 'R');
            axis([x1 x2 y1 y2 z1 z2]);
            axis off;
            pause(0.00001);
            hold off;
         end
         
         if j == 45
            esfera = esc3d(esfera,[0.8 0.8 0.8]);
            esfera2 = esc3d(esfera2,[0.8 0.8 0.8]);
            mostrar3d(esfera);
            hold on;
            mostrar3d(esfera2);
            title('Expressao Grafica - A', 'Color', 'R');
            axis([x1 x2 y1 y2 z1 z2]);
            axis off;
            pause(0.00001);
            hold off;
         end
         
         if j == 40
            esfera = esc3d(esfera,[0.8 0.8 0.8]);
            esfera2 = esc3d(esfera2,[0.8 0.8 0.8]);
            mostrar3d(esfera);
            hold on;
            mostrar3d(esfera2);
            title('Expressao Grafica - An', 'Color', 'R');
            axis([x1 x2 y1 y2 z1 z2]);
            axis off;
            pause(0.00001);
            hold off;
         end
         
         if j == 35
            esfera = esc3d(esfera,[0.8 0.8 0.8]);
            esfera2 = esc3d(esfera2,[0.8 0.8 0.8]);
            mostrar3d(esfera);
            hold on;
            mostrar3d(esfera2);
            title('Expressao Grafica - Ani', 'Color', 'R');
            axis([x1 x2 y1 y2 z1 z2]);
            axis off;
            pause(0.00001);
            hold off;
         end
         
         if j == 30
            tesfera = esc3d(esfera,[0.8 0.8 0.8]);
            esfera2 = esc3d(esfera2,[0.8 0.8 0.8]);
            mostrar3d(esfera);
            hold on;
            mostrar3d(esfera2);
            title('Expressao Grafica - Anim', 'Color', 'R');
            axis([x1 x2 y1 y2 z1 z2]);
            axis off;
            pause(0.00001);
            hold off;
         end
         
         if j == 25
            esfera = esc3d(esfera,[0.8 0.8 0.8]);
            esfera2 = esc3d(esfera2,[0.8 0.8 0.8]);
            mostrar3d(esfera);
            hold on;
            mostrar3d(esfera2);
            title('Expressao Grafica - Anima', 'Color', 'R');
            axis([x1 x2 y1 y2 z1 z2]);
            axis off;
            pause(0.00001);
            hold off;
         end
         
         if j == 20
            esfera = esc3d(esfera,[0.8 0.8 0.8]);
            esfera2 = esc3d(esfera2,[0.8 0.8 0.8]);
            mostrar3d(esfera);
            hold on;
            mostrar3d(esfera2);
            title('Expressao Grafica - Animac', 'Color', 'R');
            axis([x1 x2 y1 y2 z1 z2]);
            axis off;
            pause(0.00001);
            hold off;
         end
         
         if j == 15
            esfera = esc3d(esfera,[0.8 0.8 0.8]);
            esfera2 = esc3d(esfera2,[0.8 0.8 0.8]);
            mostrar3d(esfera);
            hold on;
            mostrar3d(esfera2);
            title('Expressao Grafica - Animaca', 'Color', 'R');
            axis([x1 x2 y1 y2 z1 z2]);
            axis off;
            pause(0.00001);
            hold off;
         end
         
         if j == 10
            esfera = esc3d(esfera,[0.8 0.8 0.8]);
            esfera2 = esc3d(esfera2,[0.8 0.8 0.8]);
            mostrar3d(esfera);
            hold on;
            mostrar3d(esfera2);
            title('Expressao Grafica - Animacao ', 'Color', 'R');
            axis([x1 x2 y1 y2 z1 z2]);
            axis off;
            pause(0.00001);
            hold off;
         end
         
         if j == 5
            esfera = esc3d(esfera,[0.8 0.8 0.8]);
            esfera2 = esc3d(esfera2,[0.8 0.8 0.8]);
            mostrar3d(esfera);
            hold on;
            mostrar3d(esfera2);
            title('Expressao Grafica - Animacao 3', 'Color', 'R');
            axis([x1 x2 y1 y2 z1 z2]);
            axis off;
            pause(0.00001);
            hold off;
         end
         
         if j == 1
            esfera = esc3d(esfera,[0.8 0.8 0.8]);
            esfera2 = esc3d(esfera2,[0.8 0.8 0.8]);
            mostrar3d(esfera);
            hold on;
            mostrar3d(esfera2);
            title('Expressao Grafica - Animacao 3D', 'Color', 'R');
            axis([x1 x2 y1 y2 z1 z2]);
            axis off;
            pause(0.00001);
            hold off;
         end
        end
     end
end

pause(0.75);

for i = 1:3
    
    if i == 1
        title('F', 'Color', 'R');
    end
    
    if i == 2
        title('FI', 'Color', 'R');
    end
    
    if i == 3
        title('FIM', 'Color', 'R');
    end
    
    pause(0.5);
end

 pause(4.65);
 close all, clear all, clc;