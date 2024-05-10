merge([],[],L3) :- L3 = [].
merge([] ,L2 , L3) :- append(L2,[] , L3).
merge(L1,[], L3) :- append(L1,[] , L3).
merge([A|Z],[B|Y],L3) :- A >=B , merge(Z , Y , L4), append([A] , L4 ,L5) ,
    append([B] , L5 ,L6) , L3 = L6.
merge([A|Z],[B|Y],L3) :- B > A , merge(Z , Y , L4), append([B] , L4 ,L5) ,
    append([A] , L5 ,L6) , L3 = L6.
