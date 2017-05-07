X = [[AllVector(:,2) AllVector(:,3) AllVector(:,4)]; [AllVector(:,2) AllVector(:,3) AllVector(:,4)]];
       opts = statset('Display','final');
        [cidx, ctrs] = kmeans(X, 2, 'Distance','city', ...
                              'Replicates',5, 'Options',opts);
        plot3(X(cidx==1,1),X(cidx==1,2),X(cidx==1,3),'r.', ...
             X(cidx==2,1),X(cidx==2,2),X(cidx==2,3),'b:o', ctrs(:,1),ctrs(:,2),ctrs(:,3),'kx');
         xlabel('³É¹¦ÂÊ')
         hold on;
ylabel('y')
zlabel('z')
title('Kmeans ')
