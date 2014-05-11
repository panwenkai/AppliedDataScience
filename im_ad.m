function out = im_ad(in)
max_num = max(max(in));
min_num = min(min(in));
out = (in - min_num)./(max_num-min_num);
end