function [norsorts,norFDs]=normalisemc(sorts,number)

for smi=1:97
    hsorts=[];
    hsorts=sorts(1:find(sorts(:,smi)==max(sorts(:,smi))),smi);
    
    if length(hsorts)==1
        hsorts=min(sorts(:,smi));
    end
    
    norsorts(:,smi)=(sorts(:,smi)-min(hsorts))/(max(sorts(:,smi))-min(hsorts));
    
end

  for i=1:1:number
     if i==1
         for j=1:96
     norFD(i,j) = (norsorts((i+1),j)-norsorts(i,j))*2;
         end
     elseif i==number
         for j=1:96
     norFD(i,j) = (norsorts(i,j)-norsorts((i-1),j))*2;
         end    
     else
         for j=1:96
     norFD(i,j) = norsorts((i+1),j)-norsorts((i-1),j);
         end
     end
     norsorts(i,97)=0;
     norFD(i,97)=0;
  end
 norFDs=norFD(1:number,:);
