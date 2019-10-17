% Fungi untuk pendapatan yang medium dan Fuzzy Rulenya
function medPen = functionMedPen(x) 
    if (x> 0.2) && (x<0.4) 
        medPen = functionUp(0.2, 0.4, x);
    
    elseif (x >= 0.4) && (x <= 0.8)
        medPen = 1;
    
    
    elseif (x > 0.8) && (x < 1)
        medPen = functionDown(0.8, 1, x);
    else
        medPen = 0;
            
    end 
        
end
    