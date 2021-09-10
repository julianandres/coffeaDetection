
bw = maskClosed;

D = bwdist(~bw);
imshow(D,[])
title('Distance Transform of Binary Image')

D = -D;
imshow(D,[])
title('Complement of Distance Transform')

L = watershed(D);
L(~bw) = 0;

rgb = label2rgb(L,'jet',[.5 .5 .5]);
imshow(rgb)
title('Watershed Transform')



