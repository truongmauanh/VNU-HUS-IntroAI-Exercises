% Create a solution for Exercise 5.1, page 88. More precisely, you will attempt to prove the equality of left- and right-neutral elements of semigroups with PROLOG and fail. Try to explain why?
1. Biểu diễn trong Prolog
Ta mô tả phép nhân và các tính chất trung tính:
  eq(m(el, X), X).      % e_l · x = x
  eq(m(X, er), X).      % x · e_r = x
Mục tiêu là chứng minh:
  ?- eq(el, er).
2. Vấn đề gặp phải
Khi thêm các tiên đề về tính bằng nhau như phản xạ, đối xứng, bắc cầu, và thế vị:
  eq(X,X).
  eq(X,Y) :- eq(Y,X).
  eq(X,Z) :- eq(X,Y), eq(Y,Z).
  eq(m(X,Z), m(Y,Z)) :- eq(X,Y).
  eq(m(Z,X), m(Z,Y)) :- eq(X,Y).
Prolog sẽ:
- Bị lặp vô hạn do backtracking trên các luật đối xứng và bắc cầu.
- Không thể suy ra el = er, vì unification trong Prolog chỉ kiểm tra bằng nhau về cú pháp, không áp dụng quy tắc thay thế trong hàm (thiếu cơ chế paramodulation hoặc superposition).
- Không tối ưu khi chứng minh đẳng thức, vì Prolog chỉ làm việc hiệu quả với Horn-clause, trong khi các tiên đề đẳng thức không phải Horn.
3. Nguyên nhân
- Nguyên nhân chính là Prolog không có cơ chế suy luận về đẳng thức (equality reasoning).
- Prolog dùng unification cú pháp, nên không thể tự động thay thế các biểu thức tương đương bên trong hàm.
4. Cách khắc phục
- Dùng prover chuyên dụng như E prover (có cơ chế superposition) để chứng minh tự động.
- Hoặc trong Prolog, mô phỏng bằng phép rewrite:
  normalize(m(el,X), N) :- normalize(X,N).
  normalize(m(X,er), N) :- normalize(X,N).
  normalize(X,X).
  ?- normalize(m(el,er), N).
  % N = er hoặc el → suy ra el = er
