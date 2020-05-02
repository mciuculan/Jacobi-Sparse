function [values, colind, rowptr] = matrix_to_csr(A)
  n = size(A);
  nz = 1;
  k = 1;
  for i = 1 : n
    first = 1;
    for j = 1 : n
      if A(i, j) ~= 0
        values(nz) = A(i, j);
        colind(nz) = j;
        if first == 1 
          rowptr(k) = nz;
          k = k + 1;
        endif
        nz++;
        first = 0;
      endif
    endfor
  endfor
  rowptr(n + 1) = nz;
endfunction