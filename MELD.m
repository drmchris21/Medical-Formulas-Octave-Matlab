## Author: Manolis Christodoulou
## MELD Score
## Usage: MELD(SerumBilirubine mg/dL, INR, SerumCreatinine mg/dL)

## Copyright (C) <year>  <name of author>

#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.

#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.

 #   You should have received a copy of the GNU General Public License
 #   along with this program.  If not, see <https://www.gnu.org/licenses/>.

function ret=MELD(Bil,INR,Cr)
if Bil<1 Bil=1; end
if INR<1 INR=1; end
if Cr<1 Cr=1; end
ret=round(3.78*log(Bil)+11.2*log(INR)+9.57*log(Cr)+6.43);
end
