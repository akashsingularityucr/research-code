function [Idx_A ,Idx_B,La]= completeind(asmat,lmat,idxtrain,idxa,idxb)
count0=1;
count1=1;
for i =1:size(asmat,1)
    for j=1:size(lmat,2)
        if(asmat(i,j)==1 && lmat(i,j)==0)
        Idx_A0(1,count0)=idxa(idxtrain(i));
        Idx_B0(1,count0)=idxb(idxtrain(j));
        La0(1,count0)=lmat(i,j);
        count0=count0+1;
        end
        
        if(asmat(i,j)==1 && lmat(i,j)==1)
        Idx_A1(1,count1)=idxa(idxtrain(i));
        Idx_B1(1,count1)=idxb(idxtrain(j));
        La1(1,count1)=lmat(i,j);
        count1=count1+1;
        end
    end
        
        
        
end
    
Idx_A=[Idx_A1 Idx_A0];
Idx_B=[Idx_B1 Idx_B0];
La=[La1 La0];









end