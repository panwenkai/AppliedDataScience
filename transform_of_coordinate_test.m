x_of_features_test_modified = cell(1,7049);
y_of_features_test_modified = cell(1,7049);
xmin_of_features_test_modified = cell(1,7049);
xmax_of_features_test_modified = cell(1,7049);
ymin_of_features_test_modified = cell(1,7049);
ymax_of_features_test_modified = cell(1,7049);
for i = 1:7049,
    if (isempty(x_of_features_test{1,i})==0)
        x_of_features_test_modified{1,i} = transform_x(x_of_features_test{1,i});
    end
    if (isempty(xmin_of_features_test{1,i})==0)
        xmin_of_features_test_modified{1,i} = transform_x(xmin_of_features_test{1,i});
    end
    if (isempty(xmax_of_features_test{1,i})==0)
        xmax_of_features_test_modified{1,i} = transform_x(xmax_of_features_test{1,i});
    end
    
    if (isempty(y_of_features_test{1,i})==0)
        y_of_features_test_modified{1,i} = transform_y(y_of_features_test{1,i});
    end
    if (isempty(ymin_of_features_test{1,i})==0)
        ymin_of_features_test_modified{1,i} = transform_y(ymin_of_features_test{1,i});
    end
    if (isempty(ymax_of_features_test{1,i})==0)
        ymax_of_features_test_modified{1,i} = transform_y(ymax_of_features_test{1,i});
    end
    
end