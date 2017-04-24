function re=outlierClassifier(X)

si=size(X,1);
data=X;
mu = mean(data);
OutLier=std(data)*3
for i=1:1:si
    if abs(data(i)-mu)>OutLier
        errorLabelMatrix(i)=1;
    else
        errorLabelMatrix(i)=0;
    end
end

re=errorLabelMatrix
