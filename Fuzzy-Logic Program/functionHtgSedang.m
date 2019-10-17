% Fungsi untuk hutang yang sedang dan Fuzzy Rulenya
function htgSedang = functionHtgSedang(x) 
    if (x> 20) && (x< 40) 
        htgSedang = functionUp(20, 40, x);
    
    elseif (x >= 40) && (x <= 60)
        htgSedang = 1;
   
    elseif (x > 60) && (x < 80)
        htgSedang = functionDown(60, 80, x);
    else
        htgSedang = 0;
            
    end 
        
end