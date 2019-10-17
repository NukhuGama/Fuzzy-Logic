% Fungsi untuk hutang yang besar dan Fuzzy Rulenya
function htgBesar = functionHtgBesar(x) 
    if (x > 60) && (x < 80)
        htgBesar = functionUp(60, 80, x);
    elseif(x >= 80)
        htgBesar = 1;
        
    else
        htgBesar = 0;
            
    end 
        
end