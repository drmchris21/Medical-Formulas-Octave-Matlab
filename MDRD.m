## Author: Manolis Christodoulou
## eGFR by MDRD formula
## Usage MDRD(Age, SerumCreatinine mg/dL, Sex, Race)
## Sex: 1=male, 2=female
## Race: 1=non black, 2=black

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

function ret=MDRD(Age,Cr,Sex,Race)
switch Sex
  case 1
    s=1;
  case 2
    s=0.742;
  otherwise
    ret=0;
    return
end
switch Race
  case 1
    r=1;
  case 2
    r=1.212;
  otherwise
    ret=0;
    return
end
ret=round(186*Age^-0.203*Cr^-1.154*s*r*10)/10;
end
