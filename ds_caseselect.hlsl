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
//Case Selection Screen
//Coded by Ontikarus Ryan
//Fixes and Adaptations by KSA Technology

[ds_initcaseselectionscreen]
definevarglobal([pw_episode],"int"); 
definevarglobal([pw_episodes],"int"); 
definevarglobal([pw_episodeclear],"int"); 
definevarglobal([pw_loadepisode],"string"); 
definevarglobal([pw_titlescript],"string"); 
definevarglobal([pw_episodepath],"string"); 
definevarglobal([pw_titletex],"int");
setvar([pw_episode],1);
setvar([pw_episodes],1); 
setvar([pw_episodeclear],0); 
setvar([pw_titlescript],"game");
setvar([pw_titletex],70010);
runscript("ds_initcaseselectdata");

[ds_initcaseselectdata]
loadtexture(121,"PW/misc/caseback1.png");
loadtexture(122,"PW/misc/caseback2.png");
loadtexture(123,"PW/misc/caseconfirm1.png");
loadtexture(124,"PW/misc/caseconfirm2.png");
loadtexture(127,"PW/misc/casearrow.png");
loadtexture(128,"PW/misc/casearrowR.png");
loadtexture(129,"PW/misc/newepisode.png");
loadtexture(130,"PW/misc/selectcase.png");

creategenobj("CaseBG",0,43);
creategenobj("episode",0,44);
createbutton("LastCase",1,39);
createbutton("NextCase",1,40);
createbutton("Turnabout",1,41);
createbutton("CaseBack",1,42);
createbutton("CaseConfirm",1,43);

[ds_load_casebuttons]
setgenobjgraphic("CaseBG",130);
setgenobjsizefromtexture("CaseBG");
//setgenobjtexturecoordinates("CaseBG",0,0,256,384);
showgenobj("CaseBG");

setgenobjgraphic("episode",125);
placegenobj("episode",172,205);
setgenobjsizefromtexture("episode");
loadandplaysfx("sfx-bleep.wav",0);

placebutton("LastCase",13,265);
setbuttonarea("LastCase",10,261,24,25);
setbuttongraphic("LastCase",128,128);
setbuttonsize("LastCase",24,25);
setbuttonaction("LastCase","onclick",<runscript("ds_caselastbutton");>);

placebutton("NextCase",219,265);
setbuttonarea("NextCase",216,261,24,25);
setbuttongraphic("NextCase",127,127);
setbuttonsize("NextCase",24,25);
setbuttonaction("NextCase","onclick",<runscript("ds_casenextbutton");>);

placebutton("Turnabout",177,249);
setbuttongraphic("Turnabout",126,126);
setbuttonsizefromtexture("Turnabout");
setbuttonaction("Turnabout","onclick",<runscript("ds_beginepisode");>);

placebutton("CaseBack",0,413);
setbuttonarea("CaseBack",0,354,79,30);
setbuttongraphic("CaseBack",121,121);
setbuttonsize("CaseBack",79,30);
setbuttonaction("CaseBack","onclick",<runscript("ds_casebackaction")>);

placebutton("CaseConfirm",177,413);
setbuttonarea("CaseConfirm",177,354,79,30);
setbuttongraphic("CaseConfirm",123,123);
setbuttonsize("CaseConfirm",79,30);
setbuttonaction("CaseConfirm","onclick",<runscript("ds_caseconfirmaction");>);

[ds_caselastbutton]
stopmp3(0);
invalidatebutton("NextCase");
invalidatebutton("LastCase");
loadandplaysfx("sfx-blink.wav",0);
modifyvar([pw_episode],"subtract",1);
placebutton("Turnabout",-89,249);
placeslide("Turnabout","button",20,16,0,0,0,40,249);
runscript("ds_load_episode");
runscript("ds_activate_background");
disablebutton("NextCase");
disablebutton("LastCase");
runscript("ds_select_buttons");
setgenobjsizefromtexture("episode");
setbuttonsizefromtexture("Turnabout");
wait(20);
setbuttonsizefromtexture("Turnabout");
setbuttonareafromsize("Turnabout");

[ds_casenextbutton]
stopmp3(0);
invalidatebutton("NextCase");
invalidatebutton("LastCase");
loadandplaysfx("sfx-blink.wav",0);
modifyvar([pw_episode],"add",1);
placebutton("Turnabout",177,249);
placeslide("Turnabout","button",20,-16,0,0,0,40,249);
runscript("ds_load_episode");
runscript("ds_activate_background");
disablebutton("NextCase");
disablebutton("LastCase");
runscript("ds_select_buttons");
setgenobjsizefromtexture("episode");
setbuttonsizefromtexture("Turnabout");
wait(20);
setbuttonsizefromtexture("Turnabout");
setbuttonareafromsize("Turnabout");

[ds_beginepisode]
invalidatebutton("NextCase");
invalidatebutton("LastCase");
invalidatebutton("CaseBack");
invalidatebutton("CaseConfirm");
invalidatebutton("Turnabout");
loadandplaysfx("sfx-selectblip2.wav",0);
placefade("CaseBG","genobj",6,"O");
placeslide("CaseBack","button",160,0,6,0,0,0,414);
placeslide("CaseConfirm","button",160,0,6,0,0,0,414);
placeslide("episode","genobj",160,0,-32,0,0,86,-19);
placeslide("Turnabout","button",160,0,-8,0,0,40,68);
placeslide("NextCase","button",320,16,0,0,0,280,265);
placeslide("LastCase","button",320,-16,0,0,0,-40,265);
wait(25);
disablebutton("CaseBack");
disablebutton("CaseConfirm");
disablebutton("NextCase");
disablebutton("LastCase");
placeblink("Turnabout","button",40,5,0);
placefade("CaseBG","genobj",1,"I");
hidegenobj("CaseBG");
wait(41);
disablebutton("Turnabout");
advance();
runinlane("primary");
definevar([pw_begincase],"string");
setvar([pw_begincase],"begin_case");
appendtostring([pw_begincase],[pw_episode]);
stopmp3(0);
jumptoscript([pw_begincase]);

[ds_casebackaction]
invalidatebutton("NextCase");
invalidatebutton("LastCase");
invalidatebutton("CaseBack");
invalidatebutton("CaseConfirm");
invalidatebutton("Turnabout");
loadandplaysfx("sfx-cancel.wav",0);
setbuttongraphic("CaseBack",122,122);
wait(10);
placefade("CaseBG","genobj",6,"O");
placeslide("CaseBack","button",160,0,6,0,0,0,414);
placeslide("CaseConfirm","button",160,0,6,0,0,0,414);
placeslide("episode","genobj",160,0,-32,0,0,86,-19);
placeslide("NextCase","button",320,16,0,0,0,280,265);
placeslide("LastCase","button",320,-16,0,0,0,-40,265);
placeflip("Turnabout","button",40,1,0,90);
wait(20);
disablebutton("CaseBack");
disablebutton("CaseConfirm");
disablebutton("Turnabout");
disablebutton("NextCase");
disablebutton("LastCase");
placefade("CaseBG","genobj",1,"I");
hidegenobj("CaseBG");
hidegenobj("episode");
advance();
runinlane("primary");
stopmp3(0);
jumptoscript([pw_titlescript]);

[ds_caseconfirmaction]
setbuttongraphic("CaseConfirm",124,124);
jumptoscript("ds_beginepisode");

[ds_load_defaultbackground]
replacetexture(130,"PW/misc/selectcase.png");

[ds_load_episode]
definevar([pw_loadimages],"string");
setvar([pw_loadimages],[pw_episodepath]);
appendtostring([pw_loadimages],"case");
appendtostring([pw_loadimages],[pw_episode]);
appendtostring([pw_loadimages],".png");
if(<isfilepresent([pw_loadimages])>,<replacetexture(126,[pw_loadimages])>,<replacetexture(126,"PW/misc/caseblank.png")>);
setvar([pw_loadimages],[pw_episodepath]);
appendtostring([pw_loadimages],"case");
appendtostring([pw_loadimages],[pw_episode]);
appendtostring([pw_loadimages],"bg.png");
if(<compare([pw_episodeclear],"largerequal",[pw_episode])>,<replacetexture(130,[pw_loadimages])>,<runscript("ds_load_defaultbackground")>);
if(<isfilepresent([pw_loadimages])>,<null();>,<runscript("ds_load_defaultbackground")>);
setvar([pw_loadimages],[pw_episodepath]);
appendtostring([pw_loadimages],"episode");
appendtostring([pw_loadimages],[pw_episode]);
appendtostring([pw_loadimages],".png");
if(<isfilepresent([pw_loadimages])>,<replacetexture(125,[pw_loadimages])>,<replacetexture(125,"PW/misc/episode.png")>);

//play individual case bgm clips
setvar([pw_loadimages],[pw_episodepath]);
appendtostring([pw_loadimages],"case");
appendtostring([pw_loadimages],[pw_episode]);
appendtostring([pw_loadimages],"bgm.mp3");
if(<compare([pw_episodeclear],"largerequal",[pw_episode])>,<loadandplaymp3([pw_loadimages],0,"O")>,<>);

[ds_activate_casebuttons]
activatebutton("CaseBack");
activatebutton("CaseConfirm");
activatebutton("Turnabout");
enablebutton("CaseBack");
enablebutton("CaseConfirm");
enablebutton("Turnabout");
showgenobj("episode");
placeslide("CaseBack","button",160,0,-6,0,0,0,348);
placeslide("CaseConfirm","button",160,0,-6,0,0,177,348);
placeslide("episode","genobj",320,-16,0,0,0,86,205);

[ds_activate_background]
setgenobjsizefromtexture("CaseBG");
placegenobj("CaseBG",0,-384);
placeslide("CaseBG","genobj",60,0,26,0,0,0,0);
activatebutton("NextCase");
activatebutton("LastCase");

[ds_caseselect]
setbgsize(0,0);
setvar([pw_loadepisode],"ds_load_episode");
appendtostring([pw_loadepisode],[pw_episode]);
runscript("ds_load_episode");
runscript("ds_load_casebuttons");
placebutton("Turnabout",177,249);
placeslide("Turnabout","button",20,-16,0,0,0,40,249);
runscript("ds_activate_background");
runscript("ds_activate_casebuttons");
runscript("ds_select_buttons");
wait(20);
setbuttonareafromsize("Turnabout");
waitresponse();

[ds_select_buttons]
if(<compare([pw_episode],"larger",1)>,<enablebutton("LastCase");>,<null()>);
if(<compare([pw_episode],"smaller",[pw_episodes])>,<runscript("ds_select_buttons2")>,<null()>);

[ds_select_buttons2]
if(<compare([pw_episode],"smallerequal",[pw_episodeclear])>,<enablebutton("NextCase")>,<null()>);

[ds_endcase]
setbgsize(0,0);
placefade("pw_bg","bg",1,"I");
placefade("pw_char","char",1,"I");
runscript("hidepwchar");
if(<compare([pw_episode],"larger",[pw_episodeclear])>,<runscript("ds_episodeunlock")>,<runscript("ds_caseselect")>);
waitresponse();

[ds_episodeunlock]
setvar([pw_episodeclear],[pw_episode]);
if(<compare([pw_episode],"smaller",[pw_episodes])>,<null();>,<runscript("ds_episave")>);
setbg([pw_titletex]);
setbgsizefromtexture();
setgenobjgraphic("pw_eviback",92);
setgenobjsizefromtexture("pw_eviback");
setgenobjcolor("pw_eviback",255,200,200,200);
showgenobj("pw_eviback");
showgenobj("pw_scanlines");
creategenobj("epiunlock",0,45);
setgenobjgraphic("epiunlock",129);
setgenobjsize("epiunlock",208,80);
placegenobj("epiunlock",256,48);
showgenobj("epiunlock");
loadandplaysfx("sfx-newepisode.wav",0);
placeslide("epiunlock","genobj",160,-6,0,0,0,24,48);
setbuttonaction("Turnabout","onclick",<null()>);
placebutton("Turnabout",40,249);
enablebutton("Turnabout");
placeslide("Turnabout","button",40,-7,0,0,0,-176,249);
wait(40);
modifyvar([pw_episode],"add",1);
definevar([pw_loadimages],"string");
setvar([pw_loadimages],[pw_episodepath]);
appendtostring([pw_loadimages],"case");
appendtostring([pw_loadimages],[pw_episode]);
appendtostring([pw_loadimages],".png");
replacetexture(126,[pw_loadimages]);
placebutton("Turnabout",256,249);
placeslide("Turnabout","button",60,-7,0,0,0,40,249);
wait(60);
setbuttonareafromsize("Turnabout");
activatebutton("Turnabout");
setbuttonaction("Turnabout","onclick",<runscript("ds_epiclick")>);
waitresponse();

[ds_epiclick]
loadandplaysfx("sfx-selectblip2.wav",0);
placeslide("epiunlock","genobj",160,-6,0,0,0,-208,48);
placeslide("Turnabout","button",40,-7,0,0,0,-176,249);
jumptoscript("ds_episave");

[ds_episave]
//Want to save??
runscript("pw_savecasecleared");
placefadescreen(10,"I");
wait(40);
hidegenobj("pw_eviback");
hidegenobj("pw_scanlines");
setbgsize(0,0);
placefadescreen(0,"O");
advance();
runscript("ds_caseselect");
waitresponse();