%Fungsi untuk pendapatan yang maksimum dan Fuzzy Rulenya
function maxPen = functionMaxPen(x)
  
    if (x > 0.8) && (x < 1)
        maxPen = functionUp(0.8, 1, x);
    elseif(x >= 1)
        maxPen = 1;
        
    else
        maxPen = 0;
            
    end 
        
end