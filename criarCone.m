function con = criarCone( raio, altura)
%criarCilindro cria um cone de raio maximo e altura de acordo com os
%parametros e retorna as matrizes correspondentes
 
con = [];

altura=altura*2;
fat = raio/altura;

raio_ori=raio*-1;



for z = 0:altura
     cir=criarCirculo(raio);
     cir(:,3) = z/2;
     cir(:,4) = 1;
     con=[con;cir];  
     raio=raio-fat;
     if z==(altura-0.5)
         z=z+0.5;
     end
end

for z = 0:altura
     cir=criarCirculo(raio_ori);
     cir(:,3) = z/2;
     cir(:,4) = 1;
     con=[con;cir];  
     raio_ori=raio_ori+fat;
     if z==(altura-0.5)
         z=z+0.5;
     end
end

end
