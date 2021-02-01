//    This program is free software: you can redistribute it and/or modify
//    it under the terms of the GNU General Public License as published by
//    the Free Software Foundation, either version 3 of the License, or
//    (at your option) any later version.

//    This program is distributed in the hope that it will be useful,
//    but WITHOUT ANY WARRANTY; without even the implied warranty of
//    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//    GNU General Public License for more details.

//    You should have received a copy of the GNU General Public License
//    along with this program.  If not, see <http://www.gnu.org/licenses/>.

//Phoenix Wright Library
//Robert Wares File
[pw_createwares]
runscript("pw_loadwaresfiles");

//Wares's Animations
//Seed Eating Animation (15 frames)
createanimation("Wares_Eat",2200900);
insertanimationframe("Wares_Eat",1,1370900,35);
setanimationframetexturecoordinates("Wares_Eat",1,0,0,256,192);
insertanimationframe("Wares_Eat",2,1370900,7);
setanimationframetexturecoordinates("Wares_Eat",2,256,0,256,192);
insertanimationframe("Wares_Eat",3,1370900,7);
setanimationframetexturecoordinates("Wares_Eat",3,512,0,256,192);
insertanimationframe("Wares_Eat",4,1370900,7);
setanimationframetexturecoordinates("Wares_Eat",4,768,0,256,192);
insertanimationframe("Wares_Eat",5,1370900,7);
setanimationframetexturecoordinates("Wares_Eat",5,0,192,256,192);
insertanimationframe("Wares_Eat",6,1370900,7);
setanimationframetexturecoordinates("Wares_Eat",6,256,192,256,192);
insertanimationframe("Wares_Eat",7,1370900,7);
setanimationframetexturecoordinates("Wares_Eat",7,512,192,256,192);
insertanimationframe("Wares_Eat",8,1370900,7);
setanimationframetexturecoordinates("Wares_Eat",8,768,192,256,192);
insertanimationframe("Wares_Eat",9,1370900,7);
setanimationframetexturecoordinates("Wares_Eat",9,0,384,256,192);
insertanimationframe("Wares_Eat",10,1370900,7);
setanimationframetexturecoordinates("Wares_Eat",10,256,384,256,192);
insertanimationframe("Wares_Eat",11,1370900,7);
setanimationframetexturecoordinates("Wares_Eat",11,512,384,256,192);
insertanimationframe("Wares_Eat",12,1370900,7);
setanimationframetexturecoordinates("Wares_Eat",12,768,384,256,192);
insertanimationframe("Wares_Eat",13,1370900,7);
setanimationframetexturecoordinates("Wares_Eat",13,0,576,256,192);
insertanimationframe("Wares_Eat",14,1370900,7);
setanimationframetexturecoordinates("Wares_Eat",14,256,576,256,192);
insertanimationframe("Wares_Eat",15,1370900,7);
setanimationframetexturecoordinates("Wares_Eat",15,512,576,256,192);

//Mad Animation (18 frames)
createanimation("Wares_Mad",2200901);
insertanimationframe("Wares_Mad",1,1370901,200);
setanimationframetexturecoordinates("Wares_Mad",1,0,0,256,192);
insertanimationframe("Wares_Mad",2,1370901,2);
setanimationframetexturecoordinates("Wares_Mad",2,256,0,256,192);
insertanimationframe("Wares_Mad",3,1370901,2);
setanimationframetexturecoordinates("Wares_Mad",3,512,0,256,192);
insertanimationframe("Wares_Mad",4,1370901,2);
setanimationframetexturecoordinates("Wares_Mad",4,768,0,256,192);
insertanimationframe("Wares_Mad",5,1370901,2);
setanimationframetexturecoordinates("Wares_Mad",5,0,192,256,192);
insertanimationframe("Wares_Mad",6,1370901,2);
setanimationframetexturecoordinates("Wares_Mad",6,256,192,256,192);
insertanimationframe("Wares_Mad",7,1370901,2);
setanimationframetexturecoordinates("Wares_Mad",7,512,192,256,192);
insertanimationframe("Wares_Mad",8,1370901,60);
setanimationframetexturecoordinates("Wares_Mad",8,768,192,256,192);
insertanimationframe("Wares_Mad",9,1370901,2);
setanimationframetexturecoordinates("Wares_Mad",9,0,384,256,192);
insertanimationframe("Wares_Mad",10,1370901,2);
setanimationframetexturecoordinates("Wares_Mad",10,256,384,256,192);
insertanimationframe("Wares_Mad",11,1370901,2);
setanimationframetexturecoordinates("Wares_Mad",11,512,384,256,192);
insertanimationframe("Wares_Mad",12,1370901,2);
setanimationframetexturecoordinates("Wares_Mad",12,768,384,256,192);
insertanimationframe("Wares_Mad",13,1370901,2);
setanimationframetexturecoordinates("Wares_Mad",13,0,576,256,192);
insertanimationframe("Wares_Mad",14,1370901,2);
setanimationframetexturecoordinates("Wares_Mad",14,256,576,256,192);
insertanimationframe("Wares_Mad",15,1370901,2);
setanimationframetexturecoordinates("Wares_Mad",15,512,576,256,192);
insertanimationframe("Wares_Mad",16,1370901,2);
setanimationframetexturecoordinates("Wares_Mad",16,768,576,256,192);
insertanimationframe("Wares_Mad",17,1370901,2);
setanimationframetexturecoordinates("Wares_Mad",17,0,768,256,192);
insertanimationframe("Wares_Mad",18,1370901,2);
setanimationframetexturecoordinates("Wares_Mad",18,256,768,256,192);

//Mad Talking Animation (4 frames)
createanimation("Wares_Mad_Talking",2200902);
insertanimationframe("Wares_Mad_Talking",1,1370902,8);
setanimationframetexturecoordinates("Wares_Mad_Talking",1,0,0,256,192);
insertanimationframe("Wares_Mad_Talking",2,1370902,8);
setanimationframetexturecoordinates("Wares_Mad_Talking",2,256,0,256,192);
insertanimationframe("Wares_Mad_Talking",3,1370902,8);
setanimationframetexturecoordinates("Wares_Mad_Talking",3,512,0,256,192);
insertanimationframe("Wares_Mad_Talking",4,1370902,8);
setanimationframetexturecoordinates("Wares_Mad_Talking",4,768,0,256,192);

//Normal Animation (13 frames)
createanimation("Wares_Normal",2200903);
insertanimationframe("Wares_Normal",1,1370903,200);
setanimationframetexturecoordinates("Wares_Normal",1,0,0,256,192);
insertanimationframe("Wares_Normal",2,1370903,9);
setanimationframetexturecoordinates("Wares_Normal",2,256,0,256,192);
insertanimationframe("Wares_Normal",3,1370903,9);
setanimationframetexturecoordinates("Wares_Normal",3,512,0,256,192);
insertanimationframe("Wares_Normal",4,1370903,9);
setanimationframetexturecoordinates("Wares_Normal",4,768,0,256,192);
insertanimationframe("Wares_Normal",5,1370903,200);
setanimationframetexturecoordinates("Wares_Normal",5,0,192,256,192);
insertanimationframe("Wares_Normal",6,1370903,9);
setanimationframetexturecoordinates("Wares_Normal",6,256,192,256,192);
insertanimationframe("Wares_Normal",7,1370903,9);
setanimationframetexturecoordinates("Wares_Normal",7,512,192,256,192);
insertanimationframe("Wares_Normal",8,1370903,9);
setanimationframetexturecoordinates("Wares_Normal",8,768,192,256,192);
insertanimationframe("Wares_Normal",9,1370903,200);
setanimationframetexturecoordinates("Wares_Normal",9,0,384,256,192);
insertanimationframe("Wares_Normal",10,1370903,9);
setanimationframetexturecoordinates("Wares_Normal",10,256,384,256,192);
insertanimationframe("Wares_Normal",11,1370903,9);
setanimationframetexturecoordinates("Wares_Normal",11,512,384,256,192);
insertanimationframe("Wares_Normal",12,1370903,9);
setanimationframetexturecoordinates("Wares_Normal",12,768,384,256,192);
insertanimationframe("Wares_Normal",13,1370903,9);
setanimationframetexturecoordinates("Wares_Normal",13,0,576,256,192);

//Normal Talking Animation (23 frames)
createanimation("Wares_Normal_Talking",2200904);
insertanimationframe("Wares_Normal_Talking",1,1370904,9);
setanimationframetexturecoordinates("Wares_Normal_Talking",1,0,0,256,192);
insertanimationframe("Wares_Normal_Talking",2,1370904,9);
setanimationframetexturecoordinates("Wares_Normal_Talking",2,256,0,256,192);
insertanimationframe("Wares_Normal_Talking",3,1370904,9);
setanimationframetexturecoordinates("Wares_Normal_Talking",3,512,0,256,192);
insertanimationframe("Wares_Normal_Talking",4,1370904,9);
setanimationframetexturecoordinates("Wares_Normal_Talking",4,768,0,256,192);
insertanimationframe("Wares_Normal_Talking",5,1370904,9);
setanimationframetexturecoordinates("Wares_Normal_Talking",5,0,192,256,192);
insertanimationframe("Wares_Normal_Talking",6,1370904,9);
setanimationframetexturecoordinates("Wares_Normal_Talking",6,256,192,256,192);
insertanimationframe("Wares_Normal_Talking",7,1370904,9);
setanimationframetexturecoordinates("Wares_Normal_Talking",7,512,192,256,192);
insertanimationframe("Wares_Normal_Talking",8,1370904,9);
setanimationframetexturecoordinates("Wares_Normal_Talking",8,768,192,256,192);
insertanimationframe("Wares_Normal_Talking",9,1370904,9);
setanimationframetexturecoordinates("Wares_Normal_Talking",9,0,384,256,192);
insertanimationframe("Wares_Normal_Talking",10,1370904,9);
setanimationframetexturecoordinates("Wares_Normal_Talking",10,256,384,256,192);
insertanimationframe("Wares_Normal_Talking",11,1370904,9);
setanimationframetexturecoordinates("Wares_Normal_Talking",11,512,384,256,192);
insertanimationframe("Wares_Normal_Talking",12,1370904,9);
setanimationframetexturecoordinates("Wares_Normal_Talking",12,768,384,256,192);
insertanimationframe("Wares_Normal_Talking",13,1370904,9);
setanimationframetexturecoordinates("Wares_Normal_Talking",13,0,576,256,192);
insertanimationframe("Wares_Normal_Talking",14,1370904,9);
setanimationframetexturecoordinates("Wares_Normal_Talking",14,256,576,256,192);
insertanimationframe("Wares_Normal_Talking",15,1370904,9);
setanimationframetexturecoordinates("Wares_Normal_Talking",15,512,576,256,192);
insertanimationframe("Wares_Normal_Talking",16,1370904,9);
setanimationframetexturecoordinates("Wares_Normal_Talking",16,768,576,256,192);
insertanimationframe("Wares_Normal_Talking",17,1370904,9);
setanimationframetexturecoordinates("Wares_Normal_Talking",17,0,768,256,192);
insertanimationframe("Wares_Normal_Talking",18,1370904,9);
setanimationframetexturecoordinates("Wares_Normal_Talking",18,256,768,256,192);
insertanimationframe("Wares_Normal_Talking",19,1370904,9);
setanimationframetexturecoordinates("Wares_Normal_Talking",19,512,768,256,192);
insertanimationframe("Wares_Normal_Talking",20,1370904,9);
setanimationframetexturecoordinates("Wares_Normal_Talking",20,768,768,256,192);
insertanimationframe("Wares_Normal_Talking",21,1370905,9);
setanimationframetexturecoordinates("Wares_Normal_Talking",21,0,0,256,192);
insertanimationframe("Wares_Normal_Talking",22,1370905,9);
setanimationframetexturecoordinates("Wares_Normal_Talking",22,256,0,256,192);
insertanimationframe("Wares_Normal_Talking",23,1370905,9);
setanimationframetexturecoordinates("Wares_Normal_Talking",23,512,0,256,192);

//Seed Throwing Animation - Part 1 (6 frames)
createanimation("Wares_Throw",2200905);
insertanimationframe("Wares_Throw",1,1370906,9);
setanimationframetexturecoordinates("Wares_Throw",1,0,0,256,192);
insertanimationframe("Wares_Throw",2,1370906,9);
setanimationframetexturecoordinates("Wares_Throw",2,256,0,256,192);
setanimationframesfx("Wares_Throw",2,"sfx-smack.wav");
insertanimationframe("Wares_Throw",3,1370906,9);
setanimationframetexturecoordinates("Wares_Throw",3,512,0,256,192);
insertanimationframe("Wares_Throw",4,1370906,9);
setanimationframetexturecoordinates("Wares_Throw",4,768,0,256,192);
insertanimationframe("Wares_Throw",5,1370906,9);
setanimationframetexturecoordinates("Wares_Throw",5,0,192,256,192);
insertanimationframe("Wares_Throw",6,1370906,9);
setanimationframetexturecoordinates("Wares_Throw",6,256,192,256,192);
setanimationframesfx("Wares_Throw",6,"sfx-smack.wav");
insertanimationframe("Wares_Throw",7,1370906,9);
setanimationframetexturecoordinates("Wares_Throw",7,512,192,256,192);
insertanimationframe("Wares_Throw",8,1370906,9);
setanimationframetexturecoordinates("Wares_Throw",8,768,192,256,192);
insertanimationframe("Wares_Throw",9,1370906,9);
setanimationframetexturecoordinates("Wares_Throw",9,0,384,256,192);
insertanimationframe("Wares_Throw",10,1370906,9);
setanimationframetexturecoordinates("Wares_Throw",10,256,384,256,192);

//Seed Throwing Animation - Part 2 (10 frames)
createanimation("Wares_Throw2",22009055);
insertanimationframe("Wares_Throw2",1,1370906,9);
setanimationframetexturecoordinates("Wares_Throw2",1,0,0,256,192);
insertanimationframe("Wares_Throw2",2,1370906,9);
setanimationframetexturecoordinates("Wares_Throw2",2,256,0,256,192);
insertanimationframe("Wares_Throw2",3,1370906,9);
setanimationframetexturecoordinates("Wares_Throw2",3,512,0,256,192);
insertanimationframe("Wares_Throw2",4,1370906,9);
setanimationframetexturecoordinates("Wares_Throw2",4,768,0,256,192);
insertanimationframe("Wares_Throw2",5,1370906,9);
setanimationframetexturecoordinates("Wares_Throw2",5,0,192,256,192);
insertanimationframe("Wares_Throw2",6,1370906,9);
setanimationframetexturecoordinates("Wares_Throw2",6,256,192,256,192);
insertanimationframe("Wares_Throw2",7,1370906,9);
setanimationframetexturecoordinates("Wares_Throw2",7,512,192,256,192);
insertanimationframe("Wares_Throw2",8,1370906,9);
setanimationframetexturecoordinates("Wares_Throw2",8,768,192,256,192);
insertanimationframe("Wares_Throw2",9,1370906,9);
setanimationframetexturecoordinates("Wares_Throw2",9,0,384,256,192);
insertanimationframe("Wares_Throw2",10,1370906,9);
setanimationframetexturecoordinates("Wares_Throw2",10,256,384,256,192);

//Shy Animation (7 frames)
createanimation("Wares_Shy",2200906);
insertanimationframe("Wares_Shy",1,1370907,200);
setanimationframetexturecoordinates("Wares_Shy",1,0,0,256,192);
insertanimationframe("Wares_Shy",2,1370907,9);
setanimationframetexturecoordinates("Wares_Shy",2,256,0,256,192);
insertanimationframe("Wares_Shy",3,1370907,9);
setanimationframetexturecoordinates("Wares_Shy",3,512,0,256,192);
insertanimationframe("Wares_Shy",4,1370907,9);
setanimationframetexturecoordinates("Wares_Shy",4,768,0,256,192);
insertanimationframe("Wares_Shy",5,1370907,9);
setanimationframetexturecoordinates("Wares_Shy",5,0,192,256,192);
insertanimationframe("Wares_Shy",6,1370907,9);
setanimationframetexturecoordinates("Wares_Shy",6,256,192,256,192);
insertanimationframe("Wares_Shy",7,1370907,9);
setanimationframetexturecoordinates("Wares_Shy",7,512,192,256,192);

//Shy Talking Animation (4 frames)
createanimation("Wares_Shy_Talking",2200907);
insertanimationframe("Wares_Shy_Talking",1,1370908,9);
setanimationframetexturecoordinates("Wares_Shy_Talking",1,0,0,256,192);
insertanimationframe("Wares_Shy_Talking",2,1370908,9);
setanimationframetexturecoordinates("Wares_Shy_Talking",2,256,0,256,192);
insertanimationframe("Wares_Shy_Talking",3,1370908,9);
setanimationframetexturecoordinates("Wares_Shy_Talking",3,512,0,256,192);
insertanimationframe("Wares_Shy_Talking",4,1370908,9);
setanimationframetexturecoordinates("Wares_Shy_Talking",4,768,0,256,192);

//Side Animation (9 frames)
createanimation("Wares_Side",2200908);
insertanimationframe("Wares_Side",1,1370909,200);
setanimationframetexturecoordinates("Wares_Side",1,0,0,256,192);
insertanimationframe("Wares_Side",2,1370909,3);
setanimationframetexturecoordinates("Wares_Side",2,256,0,256,192);
insertanimationframe("Wares_Side",3,1370909,8);
setanimationframetexturecoordinates("Wares_Side",3,512,0,256,192);
insertanimationframe("Wares_Side",4,1370909,5);
setanimationframetexturecoordinates("Wares_Side",4,768,0,256,192);
insertanimationframe("Wares_Side",5,1370909,10);
setanimationframetexturecoordinates("Wares_Side",5,0,192,256,192);
insertanimationframe("Wares_Side",6,1370909,6);
setanimationframetexturecoordinates("Wares_Side",6,256,192,256,192);
insertanimationframe("Wares_Side",7,1370909,7);
setanimationframetexturecoordinates("Wares_Side",7,512,192,256,192);
insertanimationframe("Wares_Side",8,1370909,8);
setanimationframetexturecoordinates("Wares_Side",8,768,192,256,192);
insertanimationframe("Wares_Side",9,1370909,8);
setanimationframetexturecoordinates("Wares_Side",9,0,384,256,192);

//Side Talking Animation (4 frames)
createanimation("Wares_Side_Talking",2200909);
insertanimationframe("Wares_Side_Talking",1,1370910,8);
setanimationframetexturecoordinates("Wares_Side_Talking",1,0,0,256,192);
insertanimationframe("Wares_Side_Talking",2,1370910,8);
setanimationframetexturecoordinates("Wares_Side_Talking",2,256,0,256,192);
insertanimationframe("Wares_Side_Talking",3,1370910,8);
setanimationframetexturecoordinates("Wares_Side_Talking",3,512,0,256,192);
insertanimationframe("Wares_Side_Talking",4,1370910,8);
setanimationframetexturecoordinates("Wares_Side_Talking",4,768,0,256,192);

//Side Talking Shake Animation (12 frames)
createanimation("Wares_Side_Talking_Shake",2200910);
insertanimationframe("Wares_Side_Talking_Shake",1,1370911,10);
setanimationframetexturecoordinates("Wares_Side_Talking_Shake",1,0,0,256,192);
insertanimationframe("Wares_Side_Talking_Shake",2,1370911,10);
setanimationframetexturecoordinates("Wares_Side_Talking_Shake",2,256,0,256,192);
insertanimationframe("Wares_Side_Talking_Shake",3,1370911,10);
setanimationframetexturecoordinates("Wares_Side_Talking_Shake",3,512,0,256,192);
insertanimationframe("Wares_Side_Talking_Shake",4,1370911,10);
setanimationframetexturecoordinates("Wares_Side_Talking_Shake",4,768,0,256,192);
insertanimationframe("Wares_Side_Talking_Shake",5,1370911,10);
setanimationframetexturecoordinates("Wares_Side_Talking_Shake",5,0,192,256,192);
insertanimationframe("Wares_Side_Talking_Shake",6,1370911,20);
setanimationframetexturecoordinates("Wares_Side_Talking_Shake",6,256,192,256,192);
insertanimationframe("Wares_Side_Talking_Shake",7,1370911,10);
setanimationframetexturecoordinates("Wares_Side_Talking_Shake",7,512,192,256,192);
insertanimationframe("Wares_Side_Talking_Shake",8,1370911,10);
setanimationframetexturecoordinates("Wares_Side_Talking_Shake",8,768,192,256,192);
insertanimationframe("Wares_Side_Talking_Shake",9,1370911,10);
setanimationframetexturecoordinates("Wares_Side_Talking_Shake",9,0,384,256,192);
insertanimationframe("Wares_Side_Talking_Shake",10,1370911,10);
setanimationframetexturecoordinates("Wares_Side_Talking_Shake",10,256,384,256,192);
insertanimationframe("Wares_Side_Talking_Shake",11,1370911,20);
setanimationframetexturecoordinates("Wares_Side_Talking_Shake",11,512,384,256,192);
insertanimationframe("Wares_Side_Talking_Shake",12,1370911,20);
setanimationframetexturecoordinates("Wares_Side_Talking_Shake",12,768,384,256,192);

//Sweat Animation (20 frames)
createanimation("Wares_Sweat",2200911);
insertanimationframe("Wares_Sweat",1,1370912,9);
setanimationframetexturecoordinates("Wares_Sweat",1,0,0,256,192);
insertanimationframe("Wares_Sweat",2,1370912,9);
setanimationframetexturecoordinates("Wares_Sweat",2,256,0,256,192);
insertanimationframe("Wares_Sweat",3,1370912,9);
setanimationframetexturecoordinates("Wares_Sweat",3,512,0,256,192);
insertanimationframe("Wares_Sweat",4,1370912,9);
setanimationframetexturecoordinates("Wares_Sweat",4,768,0,256,192);
insertanimationframe("Wares_Sweat",5,1370912,9);
setanimationframetexturecoordinates("Wares_Sweat",5,0,192,256,192);
insertanimationframe("Wares_Sweat",6,1370912,9);
setanimationframetexturecoordinates("Wares_Sweat",6,256,192,256,192);
insertanimationframe("Wares_Sweat",7,1370912,9);
setanimationframetexturecoordinates("Wares_Sweat",7,512,192,256,192);
insertanimationframe("Wares_Sweat",8,1370912,9);
setanimationframetexturecoordinates("Wares_Sweat",8,768,192,256,192);
insertanimationframe("Wares_Sweat",9,1370912,200);
setanimationframetexturecoordinates("Wares_Sweat",9,0,384,256,192);
insertanimationframe("Wares_Sweat",10,1370912,9);
setanimationframetexturecoordinates("Wares_Sweat",10,256,384,256,192);
insertanimationframe("Wares_Sweat",11,1370912,9);
setanimationframetexturecoordinates("Wares_Sweat",11,512,384,256,192);
insertanimationframe("Wares_Sweat",12,1370912,9);
setanimationframetexturecoordinates("Wares_Sweat",12,768,384,256,192);
insertanimationframe("Wares_Sweat",13,1370912,9);
setanimationframetexturecoordinates("Wares_Sweat",13,0,576,256,192);
insertanimationframe("Wares_Sweat",14,1370912,9);
setanimationframetexturecoordinates("Wares_Sweat",14,256,576,256,192);
insertanimationframe("Wares_Sweat",15,1370912,9);
setanimationframetexturecoordinates("Wares_Sweat",15,512,576,256,192);
insertanimationframe("Wares_Sweat",16,1370912,9);
setanimationframetexturecoordinates("Wares_Sweat",16,768,576,256,192);
insertanimationframe("Wares_Sweat",17,1370912,9);
setanimationframetexturecoordinates("Wares_Sweat",17,0,768,256,192);
insertanimationframe("Wares_Sweat",18,1370912,9);
setanimationframetexturecoordinates("Wares_Sweat",18,256,768,256,192);
insertanimationframe("Wares_Sweat",19,1370912,9);
setanimationframetexturecoordinates("Wares_Sweat",19,512,768,256,192);
insertanimationframe("Wares_Sweat",20,1370912,9);
setanimationframetexturecoordinates("Wares_Sweat",20,768,768,256,192);

//Sweat Talking Animation (23 frames)
createanimation("Wares_Sweat_Talking",2200911);
insertanimationframe("Wares_Sweat_Talking",1,1370913,9);
setanimationframetexturecoordinates("Wares_Sweat_Talking",1,0,0,256,192);
insertanimationframe("Wares_Sweat_Talking",2,1370913,9);
setanimationframetexturecoordinates("Wares_Sweat_Talking",2,256,0,256,192);
insertanimationframe("Wares_Sweat_Talking",3,1370913,9);
setanimationframetexturecoordinates("Wares_Sweat_Talking",3,512,0,256,192);
insertanimationframe("Wares_Sweat_Talking",4,1370913,9);
setanimationframetexturecoordinates("Wares_Sweat_Talking",4,768,0,256,192);
insertanimationframe("Wares_Sweat_Talking",5,1370913,9);
setanimationframetexturecoordinates("Wares_Sweat_Talking",5,0,192,256,192);
insertanimationframe("Wares_Sweat_Talking",6,1370913,9);
setanimationframetexturecoordinates("Wares_Sweat_Talking",6,256,192,256,192);
insertanimationframe("Wares_Sweat_Talking",7,1370913,9);
setanimationframetexturecoordinates("Wares_Sweat_Talking",7,512,192,256,192);
insertanimationframe("Wares_Sweat_Talking",8,1370913,9);
setanimationframetexturecoordinates("Wares_Sweat_Talking",8,,192,256,192);
insertanimationframe("Wares_Sweat_Talking",9,1370913,9);
setanimationframetexturecoordinates("Wares_Sweat_Talking",9,0,384,256,192);
insertanimationframe("Wares_Sweat_Talking",10,1370913,9);
setanimationframetexturecoordinates("Wares_Sweat_Talking",10,256,384,256,192);
insertanimationframe("Wares_Sweat_Talking",11,1370913,9);
setanimationframetexturecoordinates("Wares_Sweat_Talking",11,512,384,256,192);
insertanimationframe("Wares_Sweat_Talking",12,1370913,9);
setanimationframetexturecoordinates("Wares_Sweat_Talking",12,,384,256,192);
insertanimationframe("Wares_Sweat_Talking",13,1370913,9);
setanimationframetexturecoordinates("Wares_Sweat_Talking",13,0,576,256,192);
insertanimationframe("Wares_Sweat_Talking",14,1370913,9);
setanimationframetexturecoordinates("Wares_Sweat_Talking",14,256,576,256,192);
insertanimationframe("Wares_Sweat_Talking",15,1370913,9);
setanimationframetexturecoordinates("Wares_Sweat_Talking",15,512,576,256,192);
insertanimationframe("Wares_Sweat_Talking",16,1370913,9);
setanimationframetexturecoordinates("Wares_Sweat_Talking",16,768,576,256,192);
insertanimationframe("Wares_Sweat_Talking",17,1370913,9);
setanimationframetexturecoordinates("Wares_Sweat_Talking",17,0,768,256,192);
insertanimationframe("Wares_Sweat_Talking",18,1370913,9);
setanimationframetexturecoordinates("Wares_Sweat_Talking",18,256,768,256,192);
insertanimationframe("Wares_Sweat_Talking",19,1370913,9);
setanimationframetexturecoordinates("Wares_Sweat_Talking",19,512,768,256,192);
insertanimationframe("Wares_Sweat_Talking",20,1370913,9);
setanimationframetexturecoordinates("Wares_Sweat_Talking",20,767,768,256,192);
insertanimationframe("Wares_Sweat_Talking",21,1370914,9);
setanimationframetexturecoordinates("Wares_Sweat_Talking",21,0,0,256,192);
insertanimationframe("Wares_Sweat_Talking",22,1370914,9);
setanimationframetexturecoordinates("Wares_Sweat_Talking",22,256,0,256,192);
insertanimationframe("Wares_Sweat_Talking",23,1370914,9);
setanimationframetexturecoordinates("Wares_Sweat_Talking",23,512,0,256,192);

//Wares's Expressions
//Eat Expression
[pw_enablewareseat]
recfunctionname([pw_charfunc]);
placecharacter("pw_char",0,0);
setcharactersize("pw_char",256,192);
setcharacterlipsyncsilent("pw_char","Wares_Eat");
setcharacterlipsynctalking("pw_char","Wares_Eat");

//Mad Expression
[pw_enablewaresmad]
recfunctionname([pw_charfunc]);
placecharacter("pw_char",0,0);
setcharactersize("pw_char",256,192);
setcharacterlipsyncsilent("pw_char","Wares_Mad");
setcharacterlipsynctalking("pw_char","Wares_Mad_Talking");

//Normal Expression
[pw_enablewaresnormal]
recfunctionname([pw_charfunc]);
placecharacter("pw_char",0,0);
setcharactersize("pw_char",256,192);
setcharacterlipsyncsilent("pw_char","Wares_Normal");
setcharacterlipsynctalking("pw_char","Wares_Normal_Talking");

//Seed Throwing Expression
[pw_enablewaresseedthrow]
recfunctionname([pw_charfunc]);
placecharacter("pw_char",0,0);
setcharactersize("pw_char",256,192);
setanimationrepeations("Wares_Throw",1);
setcharacterlipsyncsilent("pw_char","Wares_Throw");
setcharacterlipsynctalking("pw_char","Wares_Throw");
wait(50);
runscript("pw_enablewaresseedthrowend");

[pw_enablewaresseedthrowend]
recfunctionname([pw_charfunc]);
placecharacter("pw_char",0,0);
setcharactersize("pw_char",256,192);
setcharacterlipsyncsilent("pw_char","Wares_Throw2");
setcharacterlipsynctalking("pw_char","Wares_Throw2");

//Shy Expression
[pw_enablewaresshy]
recfunctionname([pw_charfunc]);
placecharacter("pw_char",0,0);
setcharactersize("pw_char",256,192);
setcharacterlipsyncsilent("pw_char","Wares_Shy");
setcharacterlipsynctalking("pw_char","Wares_Shy_Talking");

//Side Expression
[pw_enablewaresside]
recfunctionname([pw_charfunc]);
placecharacter("pw_char",0,0);
setcharactersize("pw_char",256,192);
setcharacterlipsyncsilent("pw_char","Wares_Side");
setcharacterlipsynctalking("pw_char","Wares_Side_Talking");

[pw_enablewaressideshake]
recfunctionname([pw_charfunc]);
placecharacter("pw_char",0,0);
setcharactersize("pw_char",256,192);
setcharacterlipsyncsilent("pw_char","Wares_Side");
setcharacterlipsynctalking("pw_char","Wares_Side_Talking_Shake");

//Sweat Expression
[pw_enablewaresnervous]
recfunctionname([pw_charfunc]);
placecharacter("pw_char",0,0);
setcharactersize("pw_char",256,192);
setcharacterlipsyncsilent("pw_char","Wares_Sweat");
setcharacterlipsynctalking("pw_char","Wares_Sweat_Talking");

[pw_loadwaresfiles]
loadtexture(1370900,"damionshard\character\Robert Wares\Kudo_Eat.png");
loadtexture(1370901,"damionshard\character\Robert Wares\Kudo_Mad.png");
loadtexture(1370902,"damionshard\character\Robert Wares\Kudo_MadT.png");
loadtexture(1370903,"damionshard\character\Robert Wares\Kudo_Normal.png");
loadtexture(1370904,"damionshard\character\Robert Wares\Kudo_NormalT.png");
loadtexture(1370905,"damionshard\character\Robert Wares\Kudo_NormalT2.png");
loadtexture(1370906,"damionshard\character\Robert Wares\Kudo_Seeds.png");
loadtexture(1370907,"damionshard\character\Robert Wares\Kudo_Shy.png");
loadtexture(1370908,"damionshard\character\Robert Wares\Kudo_ShyT.png");
loadtexture(1370909,"damionshard\character\Robert Wares\Kudo_SideN.png");
loadtexture(1370910,"damionshard\character\Robert Wares\Kudo_SideT.png");
loadtexture(1370911,"damionshard\character\Robert Wares\Kudo_SideT2.png");
loadtexture(1370912,"damionshard\character\Robert Wares\Kudo_Sweat.png");
loadtexture(1370913,"damionshard\character\Robert Wares\Kudo_SweatT.png");
loadtexture(1370914,"damionshard\character\Robert Wares\Kudo_SweatT2.png");