function [A, b] = generate_probabilities_system(rows)
  [L, last] = generate_matrix(rows);
  n = size(L);
  A = zeros(last);
  b = zeros(last, 1);
  for i = 1 : n
    for j = 1 : n
      if L(i,j) > 0
        [x, k] = neighbors(L, i, j);
        a = L(i,j);
        A(a, a) = k;
        ok = 0;
        for l = 1 : k
          if x(l) > 0
            A(a, x(l)) = -1;
          endif
          if x(l) == -1
            ok = 1;
          endif
        endfor
        b(L(i, j)) = ok;
      endif
    endfor
  endfor
  
endfunction