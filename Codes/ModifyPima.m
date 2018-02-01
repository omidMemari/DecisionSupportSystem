clear all
clc
No_features=9;
load pimaEdited

pima = pimaEdited;


 tedad=fix(size(pima,1)/5);
 num=randperm(size(pima,1));
test_pima =pima(num(1:tedad),1:8);
test_pima_label = pima(num(1:tedad),9);
train_pima=pima(num(tedad+1:size(pima,1)),:);
train_pima_label = train_pima(:,9);
train_pima = train_pima(:,1:8);


    
    
    save train_pima
    save train_pima_label
    save test_pima
    save test_pima_label
    save No_features
    %save Ada_Boost_Data