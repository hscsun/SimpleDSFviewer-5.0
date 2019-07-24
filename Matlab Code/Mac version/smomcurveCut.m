function [smsorts,smFDs]=smomcurveCut(sorts,number,smorange)
%smooth data
for smi=1:97
    ma0=max(find(sorts(:,smi)==0));
    ma1=max(find(sorts(:,smi)==1));
    if ma1>=ma0
        smsorts(1:ma0,smi)=0*(1:ma0);
        smsorts(ma0:ma1,smi)=smooth(sorts(ma0:ma1,smi),smorange);
        smsorts(ma1:length(sorts(:,smi)),smi)=0*(ma1:length(sorts(:,smi)))+0.98;
    else
        smtry=smooth(sorts(:,smi),0.3);
        [pks,locs]=findpeaks(smtry);
        if isempty(locs)
            smsorts(:,smi)=smooth(sorts(:,smi),smorange);
        else
            ma0=locs(find(pks==max(pks)));
            [pks2,locs2]=findpeaks(smtry*(-1));
            ma1=locs(find(pks==max(pks2)));
            if isempty(locs2)
                smsorts(:,smi)=smooth(sorts(:,smi),smorange);
            elseif ma0>ma1             
                smsorts(1:ma1,smi)=0*(1:ma0)+1;
                smsorts(ma1:ma0,smi)=smooth(sorts(ma1:ma0,smi),smorange);
                smsorts(ma0:length(sorts(:,smi)),smi)=0*(ma1:length(sorts(:,smi)));
            else
                smsorts(:,smi)=smooth(sorts(:,smi),smorange);
            end
        end
    end
end

  for i=1:1:number
     if i==1
         for j=1:96
     smFD(i,j) = (smsorts((i+1),j)-smsorts(i,j))*2;
         end
     elseif i==number
         for j=1:96
     smFD(i,j) = (smsorts(i,j)-smsorts((i-1),j))*2;
         end    
     else
         for j=1:96
     smFD(i,j) = smsorts((i+1),j)-smsorts((i-1),j);
         end
     end
     smsorts(i,97)=0;
     smFD(i,97)=0;
  end
 smFDs=smFD(1:number,:);
 %smFDs=smoFD(smFDs,smorange);