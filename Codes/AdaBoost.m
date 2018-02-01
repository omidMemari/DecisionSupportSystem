function AdaBoost
clc
%load Ada_Boost_Data
load train_pima
load train_pima_label
load test_pima
load test_pima_label
load No_features
if(No_features==9)
    plw=msgbox(['Please wait...']);
    [trerr, tserr] = adab(5,train_pima,train_pima_label,test_pima,test_pima_label,10,'knn');
else
    plw=msgbox(['Please wait...']);
    [trerr, tserr] = adab(5,train_pima,train_pima_label,test_pima,test_pima_label,10,'naive');
end
delete(plw);
ctr = 1-trerr(end);
ctr = round(ctr*1000)/1000;
cts = 1-tserr(end);
cts = round(cts*1000)/1000;
msgbox(['CCR_train = ' num2str(100*ctr) '%,  CCR_test = ' num2str(100*cts) '%.']);