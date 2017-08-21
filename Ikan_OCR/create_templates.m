%CREATE TEMPLATES
%Letter
clc;
close all;
a=imread('DATASET\AA.jpg');am=imread('DATASET\AM.jpg');
aa=imread('DATASET\A.jpg');ah=imread('DATASET\AH.jpg');
e=imread('DATASET\E.jpg');ka=imread('DATASET\KA.jpg');
ee=imread('DATASET\EE.jpg');kha=imread('DATASET\KHA.jpg');
u=imread('DATASET\U.jpg');ga=imread('DATASET\GA.jpg');
uu=imread('DATASET\UU.jpg');gha=imread('DATASET\GHA.jpg');
ru=imread('DATASET\R.jpg');nga=imread('DATASET\NGA.jpg');
ae=imread('DATASET\I.jpg');cha=imread('DATASET\CA.jpg');
aae=imread('DATASET\II.jpg');chha=imread('DATASET\CHA.jpg');
ai=imread('DATASET\III.jpg');ja=imread('DATASET\JA.jpg');
o=imread('DATASET\O.jpg');jha=imread('DATASET\JHA.jpg');
oo=imread('DATASET\OO.jpg');nya=imread('DATASET\NYA.jpg');
au=imread('DATASET\AU.jpg');ta=imread('DATASET\TA.jpg');
%lower case letters
tta=imread('DATASET\THA.jpg');ma=imread('DATASET\MA.jpg');
da=imread('DATASET\DA.jpg');ya=imread('DATASET\YA.jpg');
dda=imread('DATASET\DHA.jpg');ra=imread('DATASET\RA.jpg');
nna=imread('DATASET\NNA.jpg');la=imread('DATASET\LA.jpg');
tha=imread('DATASET\TTA.jpg');va=imread('DATASET\VA.jpg');
ttha=imread('DATASET\TTHA.jpg');sha=imread('DATASET\SHA.jpg');
dha=imread('DATASET\DDA.jpg');ssha=imread('DATASET\SSHA.jpg');
dhha=imread('DATASET\DDHA.jpg');sa=imread('DATASET\SA.jpg');
na=imread('DATASET\NA.jpg');ha=imread('DATASET\HA.jpg');
pa=imread('DATASET\PA.jpg');lla=imread('DATASET\LLA.jpg');
pha=imread('DATASET\PHA.jpg');%v=imread('DATASET\v.jpg');
ba=imread('DATASET\BA.jpg');%x=imread('DATASET\x.jpg');
bha=imread('DATASET\BHA.jpg');%;z=imread('DATASET\z.jpg');


%Number
%one=imread('DATASET\1.jpg');  two=imread('DATASET\2.jpg');
%three=imread('DATASET\3.jpg');four=imread('DATASET\4.jpg');
%five=imread('DATASET\5.jpg'); six=imread('DATASET\6.jpg');
%seven=imread('DATASET\7.jpg');eight=imread('DATASET\8.jpg');
%nine=imread('DATASET\9.jpg'); zero=imread('DATASET\0.jpg');
%*-*-*-*-*-*-*-*-*-*-*-
a = imresize(rgb2gray(a),[41,30]);
aa= imresize(rgb2gray(aa),[41,30]);
e = imresize(rgb2gray(e),[41,30]);
ee = imresize(rgb2gray(ee),[41,30]);
u = imresize(rgb2gray(u),[41,30]);
uu=imresize(rgb2gray(uu),[41,30]);
ru=imresize(rgb2gray(ru),[41,30]);
ae=imresize(rgb2gray(ae),[41,30]);
aae=imresize(rgb2gray(aae),[41,30]);
ai=imresize(rgb2gray(ai),[41,30]);
o=imresize(rgb2gray(o),[41,30]);
oo=imresize(rgb2gray(oo),[41,30]);
au=imresize(rgb2gray(au),[41,30]);
am=imresize(rgb2gray(am),[41,30]);
ah=imresize(rgb2gray(ah),[41,30]);
ka=imresize(rgb2gray(ka),[41,30]);
kha=imresize(rgb2gray(kha),[41,30]);
ga=imresize(rgb2gray(ga),[41,30]);
gha=imresize(rgb2gray(gha),[41,30]);
nga=imresize(rgb2gray(nga),[41,30]);
cha=imresize(rgb2gray(cha),[41,30]);
chha=imresize(rgb2gray(chha),[41,30]);
ja=imresize(rgb2gray(ja),[41,30]);
jha=imresize(rgb2gray(jha),[41,30]);
nya=imresize(rgb2gray(nya),[41,30]);
ta=imresize(rgb2gray(ta),[41,30]);
tta=imresize(rgb2gray(tta),[41,30]);
da=imresize(rgb2gray(da),[41,30]);
dda=imresize(rgb2gray(dda),[41,30]);
nna=imresize(rgb2gray(nna),[41,30]);
tha=imresize(rgb2gray(tha),[41,30]);
ttha=imresize(rgb2gray(ttha),[41,30]);
dha=imresize(rgb2gray(dha),[41,30]);
dhha=imresize(rgb2gray(dhha),[41,30]);
na=imresize(rgb2gray(na),[41,30]);
pa=imresize(rgb2gray(pa),[41,30]);
pha=imresize(rgb2gray(pha),[41,30]);
ba=imresize(rgb2gray(ba),[41,30]);
bha=imresize(rgb2gray(bha),[41,30]);
ma=imresize(rgb2gray(ma),[41,30]);
ya=imresize(rgb2gray(ya),[41,30]);
ra=imresize(rgb2gray(ra),[41,30]);
la=imresize(rgb2gray(la),[41,30]);
va=imresize(rgb2gray(va),[41,30]);
sha=imresize(rgb2gray(sha),[41,30]);
ssha=imresize(rgb2gray(ssha),[41,30]);
sa=imresize(rgb2gray(sa),[41,30]);
ha=imresize(rgb2gray(ha),[41,30]);
lla=imresize(rgb2gray(lla),[41,30]);

letter=[ aa e ee u uu ru ae aae ai o oo au...
    am ah ka kha ga gha nga cha chha ja jha nya ta tta da dda nna tha ttha dha dhha na pa pha ...
     ba bha ma ya ra la va sha ssha sa ha lla];
%number=[one two three four five...
 %   six seven eight nine zero];
 length(letter);

 
     
%lowercase = [tta da dda nna tha ttha dha dhha na pa pha ...
 %    ba bha ma ya ra la va sha ssha sa ha lla ];
 

character=[letter];
ndims(character);
size(character)
templates2=mat2cell(character,41,[30 30 30 30 30 30 30 ...
    30 30 30 30 30 30 30 ...
    30 30 30 30 30 30 30 ...
    30 30 30 30 30 30 30 ...
    30 30 30 30 30 30 30  ...
    30 30 30 30 30 30 30  ...
    30 30 30 30 30 30 ]); ...
   
%templates2=mat2cell(character,41,1296);
save ('templates2','templates2')
clear all
