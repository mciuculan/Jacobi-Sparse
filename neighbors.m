function [x, k] = neighbors(A, i, j)
  k = 3;
  if A(i - 1, j - 1) > 0
    k = k + 1;
  endif
  if A(i, j + 1) ~= 0
    k = k + 1;
  endif
  if A(i + 1, j + 1) > 0
    k = k + 1;
  endif
  x = zeros(1, k);
  x(1) = A(i - 1, j);
  x(2) = A(i, j - 1);
  x(3) = A(i + 1, j);
  l = 3;
   if A(i - 1, j - 1) > 0
    l = l + 1;
    x(l) = A(i - 1, j - 1);
  endif
  if A(i,j + 1) ~= 0
    l = l + 1;
    x(l) = A(i, j + 1);
  endif
  if A(i + 1, j + 1) > 0
    l = l + 1;
    x(l) = A(i + 1, j + 1);
  endif
endfunction
