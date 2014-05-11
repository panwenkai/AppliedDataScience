function new_y_array = transform_y(old_y_array)
dimension = length(old_y_array);
if (dimension==1)
    new_y_array = (449 - old_y_array)*96/390;
else
    new_y_array = (449 - old_y_array)*96/390;
end
end