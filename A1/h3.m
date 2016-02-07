results = [1    4       5; 2    1       0; 3    0       4; 4    1       1;5    0       2]
relevant = [1 1; 0 0; 0 1; 0 0; 0 1]
nbr_rel_items = sum(relevant)
nbr_rel_items_mtx = [1 1; 1 1; 1 2; 1 2; 1 3]
total_relevant_docs = [12,8]

% precision = nbr_rel_items_mtx./results(:,1)
% recall = nbr_rel_items_mtx./total_relevant_docs

% f1Score = 2 * (precision .* recall )./(precision + recall)

% AvePre = precision./sum(nbr_rel_items_mtx)

% %% MAP
% psum = n = 0;
% for i = 1:length(precision)
% 	if relevant(i,1)
% 		psum += precision(i,1);
% 		n += 1
% 	endif
% endfor
% MAP_Q1 = psum/n

% psum = n = 0
% for i = 1:length(precision)
% 	if relevant(i,2)
% 		psum += precision(i,2)
% 		n += 1
% 	endif
% endfor
% n
% MAP_Q2 = psum/n
% MAP_m = [MAP_Q1, MAP_Q2]
% MAP = mean(MAP_m)

% %% MMR
% irsum = n = 0; % inverse rank 
% for i = 1:length(results)
% 	if relevant(i,1)
% 		irsum += 1/results(i,1);
% 		n += 1
% 	endif
% endfor

% %%
% MMR.q1 = irsum/n

% irsum = n = 0
% for i = 1:length(results)
% 	if relevant(i,2)
% 		irsum += 1/results(i,1);
% 		n += 1
% 	endif
% endfor

% %%

% MMR.q2 = irsum/n

%% Cummulative gain 
cgq1 = cgq2 = 0
for i = 1:length(results)
	cgq1 += results(i, 2);
	cgq2 += results(i, 3);
	cg(i,1:2)=[cgq1, cgq2];
endfor
cg

%% DCG
dcgq1 = dcgq2 = 0
for i = 1:length(results)
	dcgq1 += (2^(results(i, 2)) -1 )/log2(i+1);
	dcgq2 += (2^(results(i, 3)) -1 )/log2(i+1);
	dcg(i,1:2)=[dcgq1, dcgq2];
endfor
dcg


%% # 5

god =[
3
2
1
2
3];
country=[
2
0
0
1
1];
notre = [
0
4
0
1
0];
dame = [
0
4
2
3
2];

term_doc_mtx = [
   3   2   1   2   3
   2   0   0   1   1
   0   4   0   1   0
   0   4   2   3   2
];

% Singular Values:
% 7.98870   0         0        0       0
% 0 		  3.94970   0        0       0
% 0         0         1.80519  0       0
% 0         0         0        0.56727 0  

% Matrix U:
% 0.57434    0.60876    0.15474   -0.52497   
% 0.17585    0.48114    0.24601    0.82284   
% 0.40594   -0.55214    0.72802    0.01844   
% 0.68878   -0.30504   -0.62091    0.21681   

% Matrix V^T:
% 0.25971    0.70602    0.52972    0.12472   -0.37139   
% 0.69192   -0.55985    0.40877   -0.19207   -0.06190   
% 0.24433   -0.00034   -0.60219   -0.16106   -0.74278   
% 0.47527    0.05858   -0.32086    0.77873    0.24759   
% 0.41013    0.42974   -0.29448   -0.56142    0.49519   

[U,S,V] = svd(term_doc_mtx);

U_2=U(:,1:2)
S_2= S(1:2,1:2)
V_2 = V(1:2,:)

god =      U_2(1,1:2)* S_2
country  = U_2(2,1:2)* S_2
  % 133 (god' + country')/2
q = (god' + country')/2

% the docs:
D1 = S_2 * V_2(:,1)
D2 = S_2 * V_2(:,2)
D3 = S_2 * V_2(:,3)
D4 = S_2 * V_2(:,4)
D5 = S_2 * V_2(:,5)

cos_q_d1 = dot(q,D1)/(sqrt(q(1)^2 + q(2)^2) * sqrt(D1(1)^2 + D1(2)^2));
cos_q_d2 = dot(q,D2)/(sqrt(q(1)^2 + q(2)^2) * sqrt(D2(1)^2 + D2(2)^2));
cos_q_d3 = dot(q,D3)/(sqrt(q(1)^2 + q(2)^2) * sqrt(D3(1)^2 + D3(2)^2));
cos_q_d4 = dot(q,D4)/(sqrt(q(1)^2 + q(2)^2) * sqrt(D4(1)^2 + D4(2)^2));
cos_q_d5 = dot(q,D5)/(sqrt(q(1)^2 + q(2)^2) * sqrt(D5(1)^2 + D5(2)^2));

doc_ranking = [cos_q_d1,cos_q_d2,cos_q_d3,cos_q_d4,cos_q_d5]