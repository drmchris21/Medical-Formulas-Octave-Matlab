## Author Manolis Christodoulou
## Creatinine Clearance by Cockroft-Gault Formula
## Usage CRCL(Age, Weight kg, Sex, SerumCreatinine mg/dL)
## Sex: 1=male, 2=female

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

function ret=CRCL(Age,Weight,Sex,Cr)
x=0;
switch Sex
  case 1
    x=1;
  case 2
    x=0.85;
  otherwise
    ret=0;
    return
end
ret=round((140-Age)*Weight*x/72/Cr*10)/10;
end
