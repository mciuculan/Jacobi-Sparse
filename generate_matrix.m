function [L, j] = generate_matrix(rows)
  %functia creeaza matricea labirintului
  L = zeros (rows + 2);
  j = 1;
  for r = 2 : rows+1
    for i = 2 : r
      k = 0;
      L(r, i) = j;
      j = j + 1;
     endfor
   endfor
   for i = 2 : rows+1
     L(rows + 2, i) = -1;
   endfor
   j = j - 1;
 endfunction