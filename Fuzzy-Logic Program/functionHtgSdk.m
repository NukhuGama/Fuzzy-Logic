% Fungsi untuk hutang yang sedikit  dan Fuzzy Rulenya 
function sdk = functionHtgSdk(x)
    if (x>= 0) && (x<=20)
        sdk = 1;
        
    elseif (x> 20) && (x < 40) 
        sdk = functionDown(20,40,x);
    
    elseif (x >= 40)
        sdk = 0;
    end 
end 

    