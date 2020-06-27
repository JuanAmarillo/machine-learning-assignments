function I = readImage(path)
    I = imread(path);
    I = I(:,:,1);
    I = im2double(I, "indexed");
    for m = 1:20
      for n = 1:20
        if( I(m,n) > 255/2 )
          I(m,n) = 0;
        else
          I(m,n) = 255 - I(m,n);
        endif
      end
    end
    I = transpose(vec(I));
end