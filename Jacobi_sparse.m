function [x] = Jacobi_sparse(G_values, G_colind, G_rowptr, c, tol)
  x = zeros(size(c));
  prev_x = x;
  max_steps = 800;
  steps = 0;
  while 1
    x = csr_multiplication(G_values, G_colind, G_rowptr, prev_x) + c;
    err = norm( x - prev_x);
    if (err < tol) || (++steps == max_steps)
      return;
    endif
    prev_x = x;
  endwhile
endfunction