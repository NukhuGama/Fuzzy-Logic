
clc;
clear all;

% Mengimpor data ke variabel A;
A = importdata('DataTugas2.csv'); 

j = 1; 
% Fuzzyfication
for i=1:1:100 
   
    xPend = A.data(i,2);
    xHutang = A.data(i,3);
     
    %  Inference 
    ya1 = min(functionMinPen(xPend), functionHtgSdk(xHutang));
    ya2 = min(functionMinPen(xPend), functionHtgSedang(xHutang)); 
    ya3 = min(functionMinPen(xPend), functionHtgBesar(xHutang));
    ya4 = min(functionMedPen(xPend), functionHtgSedang(xHutang));
    ya5 = min(functionMedPen(xPend), functionHtgBesar(xHutang));
          
    tidak1 = min(functionMedPen(xPend), functionHtgSdk(xHutang));
    tidak2 = min(functionMaxPen(xPend), functionHtgSdk(xHutang));
    tidak3 = min(functionMaxPen(xPend), functionHtgSedang(xHutang));
    tidak4 = min(functionMaxPen(xPend), functionHtgBesar(xHutang));
          
         
    % Defuzzification - Sugeno   
    yaSug = max(max(ya1,ya2), max(max(ya3,ya4),ya5));
          
    tidakSug = max(max(tidak1,tidak2),max(tidak3,tidak4));
    
    % Andaikan  70 untuk ya dan 50 untuk Tidak 
     sugeno = ((yaSug * 70) + (tidakSug * 50)) / (yaSug + tidakSug);
          
          
    % Yang menerima BLT adalah yang mendapat nilai sugeno(nilai Optimal) lebih atau sama dengan 60 dimana akan memilih 20 keluarga yang layak menerima BLT.
        
    if (sugeno >= 60)
        terimaBLT(j,1) = i; 
        terimaBLT(j,2) = A.data(i,2);
        terimaBLT(j,3) = A.data(i,3);
        terimaBLT(j,4) = sugeno; 
        j = j + 1;
    end; 
    
   
                       
end

% Hasil keluarga yang mendapat BLT yg disimpan dalam file TebakanTugas2.csv serta nilai optimalnya 

 hasilTerimaBLT = array2table(terimaBLT,'VariableNames',{'No','Pendapatan','Hutang','Hasil_Sugeno'}); 
 
 writetable(hasilTerimaBLT,'TebakanTugas2.csv','Delimiter',',','QuoteStrings',true);



