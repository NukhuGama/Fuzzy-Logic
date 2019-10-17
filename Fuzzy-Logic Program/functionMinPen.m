% Fungsi untuk pendapatan yang minimum dan Fuzzy Rulenya
function minPen = functionMinPen(x)
    if (x>=0) && (x<=0.2)
        minPen = 1;
        
    elseif (x> 0.2) && (x<0.4) 
        minPen = functionDown(0.2, 0.4, x);
    
    elseif (x >= 0.4)
        minPen = 0;
    end 
end
    