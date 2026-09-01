V=[2,1,4,5];
loc_V=0;
min_V = min(V);
max_V = max(V);
disp(min_V);
disp(max_V);



for i = 1 : length(V) - 1
    if V(i) > V(i+1)
        loc_V = V(i);
        V(i) = V(i+1);
        V(i+1) = loc_V;
    end
end

% Display the result once the loop is complete
disp('Array after one pass:');
disp(V);