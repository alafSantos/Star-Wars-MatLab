function cil = criarCilindro( raio, altura)
%criarCilindro cria um cilindro de raio e altura de acordo com os
%parametros e retorna as matrizes correspondentes
  
  circulo_ori=criarCirculo(raio);
  
  cil = [];
  
  cir = circulo_ori;
  
  altura=altura*2;
  
 for z = 0:altura
     cir(:,3) = z/2;
     cir(:,4) = 1;
     cil = [cil; cir];
 end
  
end
