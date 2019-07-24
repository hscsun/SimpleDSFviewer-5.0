function [pkvs,locvs,k,condition,noisy]=peaknumbers(mc,data)

pkvs=[];
locvs=[];
condition=[];
noisy=[];
gvalue=[];
tpks=[];
tlocs=[];
kkk=1;
k=[];

ma0=max(find(mc==min(mc)));
ma1=max(find(mc==max(mc)));
[pkmcs,locmcs] = findpeaks(mc);

%line going up or down
if ma1>ma0    
%going up but no peak, condition might not good
    if isempty(pkmcs)
        [pks,locs] = findpeaks(data);
        ma=max(pks);
        po=locs(find(pks==ma));
        k=0;
        pkvs=ma;
        locvs=po;
        condition=-1;
        noisy=0; 
%going up with peak/peaks: find out the peaks and screen peaks by using the
%peak hight and distance of two neighbourhood peaks. And proteins with
%melting curve but not happy are detected as well as condition=-1
    else
        num=1:length(data);
        [tpks,tlocs, tw, th] = findpeaks(data,num);
        
        
        for ttt=1:length(tlocs)
            if tlocs(ttt)>ma0 && tlocs(ttt)<ma1
                gvalue(kkk)=ttt;
                kkk=kkk+1;
            end
        end
        if kkk==1
            k=0;
            pkvs=data(1);
            locvs=1;
        else
        pks=tpks(gvalue);locs=tlocs(gvalue);w=tw(gvalue);h=th(gvalue);
        maxpo=max(find(pks==max(pks)));
        
        
        ma=0.1*max(pks);
        k=1;
        noisy=length(pks);        
        posi=locs(find(pks==max(data)));
        
        ma2=min(data(1:posi))*(-1);
        
        if ma2>=ma*1.25
            condition=-1;
        else
            condition=1;
        end
        
        locvss(1)=1;
        for i=1:length(pks)
            dist=locs(i)-locvss(k);
            if w(i)>=0.1*w(maxpo) && h(i)>=0.1*h(maxpo);%pks(i)>=ma  % && dist > 0.1*length(data)%(new change)  
                pkvs(k)=pks(i);
                locvs(k)=locs(i);
                k=k+1;
                locvss(k)=locs(i);
            end
        
        end
        k=k-1;
        if k<=0
            k=0;
            pkvs=unique(max(data));
            locvs=max(find(data==pkvs));
        elseif k>=4    %too noisy
            k=0;
            pkvs=unique(max(data));
            locvs=max(find(data==pkvs));
        end
        end
    end
%going down
elseif ma1<=ma0
%going down without peak means there's no curve which tell us the protein
%is not happy or denatured alredy

        k=0;
        pkvs=unique(max(data));
        locvs=max(find(data==pkvs));
        condition=-1;
        noisy=0; 
end


if isempty(pkvs)
    pkvs=data(1);
end
if isempty(locvs)
    locvs=1;
end
if isempty(k)
    k=0;
end
if isempty(condition)
    condition=0;
end
if isempty(noisy)
    noisy=0;
end
    
