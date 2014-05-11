function new_x_array = transform_x(old_x_array)
dimension = length(old_x_array);
if (dimension==1)
    new_x_array = (449 - old_x_array)*96/390;
else
    new_x_array = (449 - old_x_array)*96/390;
end
end
