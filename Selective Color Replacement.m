% Load the image
imgg = imread('mm.jpg');

% Get the size of the image
imageSize = size(imgg);

% Loop through each pixel of the image
for i = 1 : imageSize(1)
    for j = 1 : imageSize(2)
    
        % Check if the pixel values fall within the specified ranges
        if (imgg(i, j, 1) > 180 && imgg(i, j, 1) < 220) && ...
           (imgg(i, j, 2) > 180 && imgg(i, j, 2) < 225) && ...
           (imgg(i, j, 3) > 170 && imgg(i, j, 3) < 230)

            % If the pixel meets the criteria, set its RGB values to white
            imgg(i, j, 1) = 255;
            imgg(i, j, 2) = 255;
            imgg(i, j, 3) = 255;

        end

    end
end

% Display the modified image
imshow(imgg)

% Save the modified image to a file
% imwrite(imgg, "matlab_res2.png")
