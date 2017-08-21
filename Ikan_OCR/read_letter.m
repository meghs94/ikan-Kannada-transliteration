%function read_letter
function letter=read_letter(imagn,num_letras)
% Computes the correlation between template and input image
% and its output is a string containing the letter.
% Size of 'imagn' must be 42 x 24 pixels
% Example:
% imagn=imread('D.bmp');
% letter=read_letter(imagn)
%load templates2
global templates2
comp=[ ];


 for n=1:num_letras
    %size(templates2)
    %imagn = imresize(imagn,[41,1296]);
    sem=corr2(templates2{1,n},imagn);
    comp =[comp sem];
    
    %pause(1)
end

vd=find(comp==max(comp));
disp('vd is');
vd
%*-*-*-*-*-*-*-*-*-*-*-*-*-
if vd==1
    letter='KHA';
elseif vd==2  %NOT CAHNGED
    letter='aa';
elseif vd==3
    letter='NGA';
elseif vd==4
    letter='BHA';
elseif vd==5
    letter='NGA';
elseif vd==6
    letter='O';
elseif vd==7
    letter='AAE';
elseif vd==8
    letter='ae'; %NOT
elseif vd==9
    letter='aae'; %NOT
elseif vd==10
    letter='ai'; %NOT
elseif vd==11
    letter='AA';
elseif vd==12
    letter='oo'; %NOT
elseif vd==13
    letter='AE';
elseif vd==14
    letter='TTA';
elseif vd==15
    letter='EE';
elseif vd==16
    letter='SHA';
elseif vd==17
    letter='TTA';
elseif vd==18
    letter='ga'; %NOT
elseif vd==19
    letter='gha'; %NOT
elseif vd==20
    letter='UU';
elseif vd==21
    letter='cha'; %NOT
elseif vd==22
    letter='chha'; %NOT
elseif vd==23
    letter='A';
elseif vd==24
    letter='RU';
elseif vd==25
    letter='BHA';
elseif vd==26
    letter='ta'; %NOT
    %*-*-*-*-*

    %********
elseif vd==27
    letter='tta'; %NOT 
elseif vd==28
    letter='U';
elseif vd==29
    letter='dha'; %NOT
elseif vd==30
    letter='nna'; %NOT
elseif vd==31
    letter='tha'; %NOT
elseif vd==32
    letter='thha'; %NOT
elseif vd==33
    letter='dha'; %NOT
elseif vd==34
    letter='dhha'; %NOT
elseif vd==35
    letter='na'; %NOT
elseif vd==36
    letter='pa'; %NOT
elseif vd==37
    letter='DDA';
elseif vd==38
    letter='DA';
elseif vd==39
    letter='bha'; %NOT
elseif vd==40
    letter='AI';
elseif vd==41
    letter='ya'; %NOT
elseif vd==42
    letter='ra'; %NOT
elseif vd==43
    letter='la'; %NOT
elseif vd==44
    letter='va'; %NOT
elseif vd==45
    letter='sha'; %NOT
elseif vd==46
    letter='ssha'; %NOT
elseif vd==47
    letter='DDA';
elseif vd==48
    letter='DA';
elseif vd==49
    letter='lla'; %NOT
elseif vd==[]
    letter ='donno';
%elseif vd==60
%    letter='x';
%elseif vd==61
%    letter='y';
%elseif vd==62
%    letter='z';
%else
%    letter='l';
    %*-*-*-*-*
end


