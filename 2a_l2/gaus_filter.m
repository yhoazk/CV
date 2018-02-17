% Simple gaussian filter 
pkg load image

im = imread("circles");
imshow(im)
size(im)
bw_im = im(:,:,1);
imshow(bw_im)

noise = randn(size(bw_im)) * 50;
noise_im = noise +bw_im ;
imshow(noise_im)


filt = fspecial("gaussian", [10,10], 2); surf(filt)

filtered_im = imfilter(noise_im, filt);
imshow(filtered_im)