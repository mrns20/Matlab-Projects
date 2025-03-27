
net = alexnet;

imageDir = 'C:\Users\marin\Desktop\ΝΕΥΡΩΝΙΚΑ ΔΙΚΤΥΑ\ΕΡΓΑΣΤΗΡΙΟ\2herg'; 
imageFiles = dir(fullfile(imageDir, '*.png')); 


for i = 1:length(imageFiles)
   
    imagePath = fullfile(imageDir, imageFiles(i).name);
    im = imread(imagePath);
    
    image(im);
    axis off; 
   
    im = imresize(im, [227 227]);
    
    label = classify(net, im);
    
    title(char(label));
    
    drawnow; 
    
    pause(2); 
end
