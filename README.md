# Jacobi-Sparse
Pentru aceasta problema am salvat labirintul intr-o matrice pe care am bordat-o cu 0, dar sub ultimul rand am adaugat 1 pentru a semnifica faptul ca acolo este iesirea din labirint. 
Pentru a afla vecinii fiecarui element folosesc o functie separata si verific vecinii din nord-vest, est, sud-est. Elementul va avea cel putin 3 vecini. Functia returneaza numarul de vecini si vectorul de vecini.
Primii 3 vecini pe care sigur ii are sunt: nord,vest,sud.
Matricea probabilitatilor are pe diagonala principala numarul de vecini ai elementului si pe pozitia numarului elementului -1 (daca iesirea nu este spre 0). Daca are un vecin spre 1, acesta va aparea ca 1 in vectorul b pe pozitia elementului respectiv.
Jacobi factorization si Jacobi sparse sunt functiile din laborator.
Matrix to csr creeaza vectorii dupa regulile din cerinta.
