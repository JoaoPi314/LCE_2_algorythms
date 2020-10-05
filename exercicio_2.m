V1 = 37.871998 + 37.068507*i;
V2 = 15.587993 - 6.7013813*i;
V3 = 8.429678 - 30.367126*i;

Veq = V1 + V2 + V3;



I1 = 10*exp(i*(deg2rad(-45)));
I2 = 10*exp(i*(deg2rad(0)));
I3 = 10*exp(i*(deg2rad(45)));

I_array = [I1, I2, I3];
V_array = [V1, V2, V3, Veq];

S_complex = [0, 0, 0, 0; 0, 0, 0, 0; 0, 0, 0, 0];
S = [0, 0, 0, 0; 0, 0, 0, 0; 0, 0, 0, 0];
P = [0, 0, 0, 0; 0, 0, 0, 0; 0, 0, 0, 0];
Q = [0, 0, 0, 0; 0, 0, 0, 0; 0, 0, 0, 0];
fp = [0, 0, 0, 0; 0, 0, 0, 0; 0, 0, 0, 0];
teta = [0, 0, 0, 0; 0, 0, 0, 0; 0, 0, 0, 0];
Z = [0, 0, 0, 0; 0, 0, 0, 0; 0, 0, 0, 0]; 


%Cálculo de S e de abs(s)
for i = 1:4
  for j = 1:3
      S_complex(j, i) = V_array(i)*conj(I_array(j));
      S (j, i) = abs(S_complex(j, i));
  endfor
endfor

%Cálculo de P
for i = 1:4
  for j = 1:3
      P(j, i) = real(S_complex(j, i));
  endfor
endfor

%Cálculo de Q
for i = 1:4
  for j = 1:3
      Q(j, i) = imag(S_complex(j, i));
  endfor
endfor

%Cálculo de fp
for i = 1:4
  for j = 1:3
      fp(j, i) = P(j,i)/(abs(V_array(i)*I_array(j)));
  endfor
endfor

%Cálculo de Teta
for i = 1:4
  for j = 1:3
    teta(j, i) = rad2deg(acos(fp(j,i)));
  endfor
endfor


%cálculo de Z
for i = 1:4
  for j = 1:3
      Z(j, i) = V_array(i)/I_array(j);
  endfor
endfor







