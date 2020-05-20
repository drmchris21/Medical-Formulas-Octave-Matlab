## Author: Manolis Christodoulou
## MELD_Na Score
## Usage: MELD_Na(SerumBilirubine mg/dL, INR, SerumCreatinine mg/dL, Na)

function y=MELD(Bil,INR,Cr,Na)
if Bil<1
  Bil=1;
end
if INR<1
  INR=1;
end
if Cr<1
  Cr=1;
end
y=round(3.78*log(Bil)+11.2*log(INR)+9.57*log(Cr)+6.43+1.59*(135-Na));
end
