nose_r = zeros(1,7049);
nose_c = zeros(1,7049);
left_eye_r = zeros(1,7049);
left_eye_c = zeros(1,7049);
right_eye_r = zeros(1,7049);
right_eye_c = zeros(1,7049);

for number = 1:7049;
%[U_left,S_left,V_left] = svd(transpose(left_eye));
%[U_right,S_right,V_right] = svd(transpose(right_eye));
%[U_nose,S_nose,V_nose] = svd(transpose(nose));
%im = train_image(number,:);
%im_matrix = reshape(im,96,96);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Build eigenvectors
% l_eigen_vector_1 = transpose(U_left(:,1));
% l_eigen_vector_1 = l_eigen_vector_1-mean(l_eigen_vector_1);
% l_eigen_vector_1 = l_eigen_vector_1/norm(l_eigen_vector_1);
% l_eigen_vector_2 = transpose(U_left(:,2));
% l_eigen_vector_2 = l_eigen_vector_2-mean(l_eigen_vector_2);
% l_eigen_vector_2 = l_eigen_vector_2/norm(l_eigen_vector_2);
% l_eigen_vector_3 = transpose(U_left(:,3));
% l_eigen_vector_3 = l_eigen_vector_3-mean(l_eigen_vector_3);
% l_eigen_vector_3 = l_eigen_vector_3/norm(l_eigen_vector_3);
% l_eigen_vector_4 = transpose(U_left(:,4));
% l_eigen_vector_4 = l_eigen_vector_4-mean(l_eigen_vector_4);
% l_eigen_vector_4 = l_eigen_vector_4/norm(l_eigen_vector_4);
% l_eigen_vector_5 = transpose(U_left(:,5));
% l_eigen_vector_5 = l_eigen_vector_5-mean(l_eigen_vector_5);
% l_eigen_vector_5 = l_eigen_vector_5/norm(l_eigen_vector_5);
% l_eigen_vector_6 = transpose(U_left(:,6));
% l_eigen_vector_6 = l_eigen_vector_6-mean(l_eigen_vector_6);
% l_eigen_vector_6 = l_eigen_vector_6/norm(l_eigen_vector_6);
% l_eigen_vector_7 = transpose(U_left(:,7));
% l_eigen_vector_7 = l_eigen_vector_7-mean(l_eigen_vector_7);
% l_eigen_vector_7 = l_eigen_vector_7/norm(l_eigen_vector_7);
% l_eigen_vector_8 = transpose(U_left(:,8));
% l_eigen_vector_8 = l_eigen_vector_8-mean(l_eigen_vector_8);
% l_eigen_vector_8 = l_eigen_vector_8/norm(l_eigen_vector_8);
% l_eigen_vector_9 = transpose(U_left(:,9));
% l_eigen_vector_9 = l_eigen_vector_9-mean(l_eigen_vector_9);
% l_eigen_vector_9 = l_eigen_vector_9/norm(l_eigen_vector_9);
% 
% r_eigen_vector_1 = transpose(U_right(:,1));
% r_eigen_vector_1 = r_eigen_vector_1-mean(r_eigen_vector_1);
% r_eigen_vector_1 = r_eigen_vector_1/norm(r_eigen_vector_1);
% r_eigen_vector_2 = transpose(U_right(:,2));
% r_eigen_vector_2 = r_eigen_vector_2-mean(r_eigen_vector_2);
% r_eigen_vector_2 = r_eigen_vector_2/norm(r_eigen_vector_2);
% r_eigen_vector_3 = transpose(U_right(:,3));
% r_eigen_vector_3 = r_eigen_vector_3-mean(r_eigen_vector_3);
% r_eigen_vector_3 = r_eigen_vector_3/norm(r_eigen_vector_3);
% r_eigen_vector_4 = transpose(U_right(:,4));
% r_eigen_vector_4 = r_eigen_vector_4-mean(r_eigen_vector_4);
% r_eigen_vector_4 = r_eigen_vector_4/norm(r_eigen_vector_4);
% r_eigen_vector_5 = transpose(U_right(:,5));
% r_eigen_vector_5 = r_eigen_vector_5-mean(r_eigen_vector_5);
% r_eigen_vector_5 = r_eigen_vector_5/norm(r_eigen_vector_5);
% r_eigen_vector_6 = transpose(U_right(:,6));
% r_eigen_vector_6 = r_eigen_vector_6-mean(r_eigen_vector_6);
% r_eigen_vector_6 = r_eigen_vector_6/norm(r_eigen_vector_6);
% r_eigen_vector_7 = transpose(U_right(:,7));
% r_eigen_vector_7 = r_eigen_vector_7-mean(r_eigen_vector_7);
% r_eigen_vector_7 = r_eigen_vector_7/norm(r_eigen_vector_7);
% r_eigen_vector_8 = transpose(U_right(:,8));
% r_eigen_vector_8 = r_eigen_vector_8-mean(r_eigen_vector_8);
% r_eigen_vector_8 = r_eigen_vector_8/norm(r_eigen_vector_8);
% r_eigen_vector_9 = transpose(U_right(:,9));
% r_eigen_vector_9 = r_eigen_vector_9-mean(r_eigen_vector_9);
% r_eigen_vector_9 = r_eigen_vector_9/norm(r_eigen_vector_9);
% 
% n_eigen_vector_1 = transpose(U_nose(:,1));
% n_eigen_vector_1 = n_eigen_vector_1-mean(n_eigen_vector_1);
% n_eigen_vector_1 = n_eigen_vector_1/norm(n_eigen_vector_1);
% n_eigen_vector_2 = transpose(U_nose(:,2));
% n_eigen_vector_2 = n_eigen_vector_2-mean(n_eigen_vector_2);
% n_eigen_vector_2 = n_eigen_vector_2/norm(n_eigen_vector_2);
% n_eigen_vector_3 = transpose(U_nose(:,3));
% n_eigen_vector_3 = n_eigen_vector_3-mean(n_eigen_vector_3);
% n_eigen_vector_3 = n_eigen_vector_3/norm(n_eigen_vector_3);
% n_eigen_vector_4 = transpose(U_nose(:,4));
% n_eigen_vector_4 = n_eigen_vector_4-mean(n_eigen_vector_4);
% n_eigen_vector_4 = n_eigen_vector_4/norm(n_eigen_vector_4);
% n_eigen_vector_5 = transpose(U_nose(:,5));
% n_eigen_vector_5 = n_eigen_vector_5-mean(n_eigen_vector_5);
% n_eigen_vector_5 = n_eigen_vector_5/norm(n_eigen_vector_5);
% n_eigen_vector_6 = transpose(U_nose(:,6));
% n_eigen_vector_6 = n_eigen_vector_6-mean(n_eigen_vector_6);
% n_eigen_vector_6 = n_eigen_vector_6/norm(n_eigen_vector_6);
% n_eigen_vector_7 = transpose(U_nose(:,7));
% n_eigen_vector_7 = n_eigen_vector_7-mean(n_eigen_vector_7);
% n_eigen_vector_7 = n_eigen_vector_7/norm(n_eigen_vector_7);
% n_eigen_vector_8 = transpose(U_nose(:,8));
% n_eigen_vector_8 = n_eigen_vector_8-mean(n_eigen_vector_8);
% n_eigen_vector_8 = n_eigen_vector_8/norm(n_eigen_vector_8);
% n_eigen_vector_9 = transpose(U_nose(:,9));
% n_eigen_vector_9 = n_eigen_vector_9-mean(n_eigen_vector_9);
% n_eigen_vector_9 = n_eigen_vector_9/norm(n_eigen_vector_9);

% eigen_vector_1 = transpose(Aleft(:,1));
% eigen_vector_1 = eigen_vector_1-mean(eigen_vector_1);
% eigen_vector_1 = eigen_vector_1/norm(eigen_vector_1);
% eigen_vector_2 = transpose(Aleft(:,2));
% eigen_vector_2 = eigen_vector_2-mean(eigen_vector_2);
% eigen_vector_2 = eigen_vector_2/norm(eigen_vector_2);
% eigen_vector_3 = transpose(Aleft(:,3));
% eigen_vector_3 = eigen_vector_3-mean(eigen_vector_3);
% eigen_vector_3 = eigen_vector_3/norm(eigen_vector_3);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Build Gaussian Stencils
Z_left = zeros(96, 96);
for row = 1 : 1 : 96
    for col = 1 : 1 : 96
        Z_left(row, col) = (row - 48)*(row - 48) + (col - 40)*(col - 40);
    end
end
Z_left = -Z_left/1000;
Z_left = exp(Z_left);

Z_right = zeros(96, 96);
for row = 1 : 1 : 96
    for col = 1 : 1 : 96
        Z_right(row, col) = (row - 56)*(row - 56) + (col - 40)*(col - 40);
    end
end
Z_right = -Z_right/1000;
Z_right = exp(Z_right);

Z_nose = zeros(96, 96);
for row = 1 : 1 : 96
    for col = 1 : 1 : 96
        Z_nose(row, col) = (row - 48)*(row - 48) + (col - 48)*(col - 48);
    end
end
Z_nose = -Z_nose/500;
Z_nose = exp(Z_nose);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Apply eigen vectors
l_result = zeros(96,96);
for i = 6:91
    for j = 11:86
    im_part = im_matrix((i-5):(i+5),(j-10):(j+10));
    im_part_vector = reshape(im_part,1,231);
    %im_part_vector = im_part_vector - mean(im_part_vector);
    im_part_vector = im_part_vector/norm(im_part_vector);
    result_value = 1*(dot(im_part_vector,l_eigen_vector_1))+0.1*(dot(im_part_vector,l_eigen_vector_2))+0.1*(dot(im_part_vector,l_eigen_vector_3));
    result_value = result_value + 0.1*(dot(im_part_vector,l_eigen_vector_4))+0.1*(dot(im_part_vector,l_eigen_vector_5))+0.1*(dot(im_part_vector,l_eigen_vector_6));
    result_value = result_value + 0.1*(dot(im_part_vector,l_eigen_vector_7))+0.1*(dot(im_part_vector,l_eigen_vector_8))+0.1*(dot(im_part_vector,l_eigen_vector_9));
    l_result(i,j) = result_value;
    end
end

r_result = zeros(96,96);
for i = 6:91
    for j = 11:86
    im_part = im_matrix((i-5):(i+5),(j-10):(j+10));
    im_part_vector = reshape(im_part,1,231);
    %im_part_vector = im_part_vector - mean(im_part_vector);
    im_part_vector = im_part_vector/norm(im_part_vector);
    result_value = 1*(dot(im_part_vector,r_eigen_vector_1))+0.1*(dot(im_part_vector,r_eigen_vector_2))+0.1*(dot(im_part_vector,r_eigen_vector_3));
    result_value = result_value + 0.1*(dot(im_part_vector,r_eigen_vector_4))+0.1*(dot(im_part_vector,r_eigen_vector_5))+0.1*(dot(im_part_vector,r_eigen_vector_6));
    result_value = result_value + 0.1*(dot(im_part_vector,r_eigen_vector_7))+0.1*(dot(im_part_vector,r_eigen_vector_8))+0.1*(dot(im_part_vector,r_eigen_vector_9));
    r_result(i,j) = result_value;
    end
end

n_result = zeros(96,96);
for i = 6:91
    for j = 11:86
    im_part = im_matrix((i-5):(i+5),(j-10):(j+10));
    %im_part = flipud(im_part);
    im_part_vector = reshape(im_part,1,231);
    %im_part_vector = im_part_vector - mean(im_part_vector);
    im_part_vector = im_part_vector/norm(im_part_vector);
    result_value = 1*(dot(im_part_vector,n_eigen_vector_1))+0.1*(dot(im_part_vector,n_eigen_vector_2))+0.1*(dot(im_part_vector,n_eigen_vector_3));
    result_value = result_value + 0.1*(dot(im_part_vector,n_eigen_vector_4))+0.1*(dot(im_part_vector,n_eigen_vector_5))+0.1*(dot(im_part_vector,n_eigen_vector_6));
    result_value = result_value + 0.1*(dot(im_part_vector,n_eigen_vector_7))+0.1*(dot(im_part_vector,n_eigen_vector_8))+0.1*(dot(im_part_vector,n_eigen_vector_9));
    n_result(i,j) = -result_value;
    end
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Use Filter to clean environment noise
a = 96:-1:1;
Y = repmat(a,96,1);
a = 1:96;
a = a';
X = repmat(a,1,96);

image = train_image(number,:);

if (isempty(x_of_features_train_modified{1,number})==0)
    k = convhull(x_of_features_train_modified{1,number},y_of_features_train_modified{1,number});
    x_boundary = x_of_features_train_modified{1,number}(1,k);
    y_boundary = y_of_features_train_modified{1,number}(1,k);
end
IN = inpolygon(X,Y,x_boundary,y_boundary);
l_result_gaussied = Z_left.*l_result.*IN;
l_result_true = l_result.*IN;

r_result_gaussied = Z_right.*r_result.*IN;
r_result_true = r_result.*IN;

n_result_gaussied = Z_nose.*n_result.*IN;
n_result_true = n_result.*IN;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Find max value in a matrix
l_max_value = max(max(l_result_gaussied));
[l_r, l_c] = find(l_max_value == l_result_gaussied);
l_r_min = l_r;
l_r_max = l_r;

while(l_result_true(l_r_min-1,l_c)>0.5*l_result_true(l_r,l_c))
    l_r_min = l_r_min-1;
end

while(l_result_true(l_r_max+1,l_c)>0.5*l_result_true(l_r,l_c))
    l_r_max = l_r_max+1;
end

l_sum_ji = 0;
l_sum_weight = 0;
for i = l_r_min:l_r_max
    l_sum_ji = l_sum_ji + i * l_result_true(i,l_c);
    l_sum_weight = l_sum_weight + l_result_true(i,l_c);
end
l_true_r = l_sum_ji/l_sum_weight;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
r_max_value = max(max(r_result_gaussied));
[r_r, r_c] = find(r_max_value == r_result_gaussied);
r_r_min = r_r;
r_r_max = r_r;

while(r_result_true(r_r_min-1,r_c)>0.5*r_result_true(r_r,r_c))
    r_r_min = r_r_min-1;
end

while(r_result_true(r_r_max+1,r_c)>0.5*r_result_true(r_r,r_c))
    r_r_max = r_r_max+1;
end

r_sum_ji = 0;
r_sum_weight = 0;
for i = r_r_min:r_r_max
    r_sum_ji = r_sum_ji + i * r_result_true(i,r_c);
    r_sum_weight = r_sum_weight + r_result_true(i,r_c);
end
r_true_r = r_sum_ji/r_sum_weight;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
n_max_value = max(max(n_result_gaussied));
[n_r, n_c] = find(n_max_value == n_result_gaussied);
n_r_min = n_r;
n_r_max = n_r;

while(n_result_true(n_r_min-1,n_c)>0.5*n_result_true(n_r,n_c))
    n_r_min = n_r_min-1;
end

while(n_result_true(n_r_max+1,n_c)>0.5*n_result_true(n_r,n_c))
    n_r_max = n_r_max+1;
end

n_sum_ji = 0;
n_sum_weight = 0;
for i = n_r_min:n_r_max
    n_sum_ji = n_sum_ji + i * n_result_true(i,n_c);
    n_sum_weight = n_sum_weight + n_result_true(i,n_c);
end
n_true_r = n_sum_ji/n_sum_weight;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Final out put
% figure;
% set(gcf,'color','w');
% subplot(1,2,1);
% imshow(transpose(im_ad(n_result_gaussied)));
% subplot(1,2,2);
% imshow(transpose(reshape(train_image(number,:),96,96))/256);
% text(l_true_r , l_c,'\o ','Color','red');
% text(r_true_r , r_c,'\o ','Color','green');
% text(n_true_r , n_c,'\o ','Color','blue');
% figure;
% surf(n_result_gaussied);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Save the data
nose_r(1,number) = n_true_r;
nose_c(1,number) = n_c;
left_eye_r(1,number) = l_true_r;
left_eye_c(1,number) = l_c;
right_eye_c(1,number) = r_true_r;
right_eye_c(1,number) = r_c;
number
end
