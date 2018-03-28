function image_norm = normalize_intensity(image)
    image_norm = floor( 255*double( image-min(image(:)) )...
        ./ double( max(image(:))-min(image(:)) ));
end