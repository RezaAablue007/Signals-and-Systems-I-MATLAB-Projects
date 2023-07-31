%Rendel Abrasia, Reza Aablue
%500942743, 500966944
%Section 4

%Problem A.3
function [D]=Dn(d,n)

D1 = [0.5,0,-0.5*1i,0.5*1i,-0.5];
D2 = (1/(n.*pi)*sin((n.*pi)/2));
D3 = (1/(n.*pi)*sin((n.*pi)/4));

if (d==1)
    D=D1;
end

if (d==2)
    D=D2;
end

if (d==3)
    D=D3;
end

end