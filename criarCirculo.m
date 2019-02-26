function cir = criarCirculo(raio)
%Retorna as matrizes correspondentes ao circulo criado com raio como
%parametro

x = zeros(1, 360);
ya = zeros(1, 360);

for i = 0:360
      x(i+1) = raio*cosd(i);
      ya(i+1) = raio*sind(i);
      circ(:,3)=1;
end

cir=[x',ya'];

end