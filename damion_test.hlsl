#include(pwlib/pwlib.hlsl)
#includeinfolder(damionshard/dsaascripts)
[game]
runscript("pw_initpwlib");
runscript("pw_initpwbgs"); 
runscript("pw_createdamion");
changetitle("Red Phoenix Test");
loadtexture(12112,"damionshard/dsnameboxes.png");
jumptoscript("run"); 
[run]
runscript("pw_showmain"); 
waitresponse(); 
runscript("pw_hidemain");
jumptoscript("casestart");
[casestart]
runscript("pw_showattorneystand");
placefadescreenex(48,"O",0,0,0,256);
runscript("pw_showadvarrowmenu");
runscript("showpwchar");
jumptoscript("test1"); 
[test1]
loadandplaymp3("music/08 - Investigation ~ Cornered.mp3",0,"N");
runscript("pw_showattorneystand");
runscript("pw_showmessagebox");
runscript("setlipsynctochar");
runscript("pw_setnameboxtodamion");
runscript("pw_enabledamionsweating");
message("I didn't realize I'd have to\nsay something!");
runscript("pw_enabledamionnormal");
message("Well, I guess I'll just say this:\nThe emperor's new clothes.");
runscript("pw_enabledamionsheepish");
message("The emperor's new clothes.");
runscript("pw_enabledamionheadshake");
message("The emperor's new clothes.");
runscript("pw_enabledamionnodding");
message("The emperor's new clothes.");
runscript("pw_enabledamionhearts");
message("The emperor's new clothes.");
runscript("pw_enabledamionconfident");
message("The emperor's new clothes.");
runscript("pw_enabledamioncoffee");
message("The emperor's new clothes.");
runscript("pw_enabledamioncoffeed");
message("The emperor's new clothes.");
runscript("pw_enabledamioncoffeedblink");
message("The emperor's new clothes.");
runscript("pw_enabledamionbird");
message("The emperor's new clothes.");
runscript("pw_enabledamiondocument");
message("The emperor's new clothes.");
runscript("pw_enabledamionohshit");
message("The emperor's new clothes.");
runscript("pw_enabledamionohshit2");
message("The emperor's new clothes.");
runscript("pw_enabledamionthinking");
message("The emperor's new clothes.");
runscript("pw_enabledamiontoupee");
message("The emperor's new clothes.");
runscript("pw_enabledamiondeskslam");
message("The emperor's new clothes.");
runscript("pw_enabledamionhandsondesk");
message("The emperor's new clothes.");
runscript("pw_enabledamionobjecting");
message("The emperor's new clothes.");
runscript("pw_enabledamionobjecting2");
message("The emperor's new clothes.");
runscript("pw_enabledamionobjecting3");
message("The emperor's new clothes.");
runscript("pw_enabledamionsuperobjection");
message("The emperor's new clothes.");
runscript("pw_enabledamionsuperobjection2");
message("The emperor's new clothes.");
runscript("pw_enabledamionemo");
message("The emperor's new clothes.");
runscript("pw_enabledamionpointing");
message("The emperor's new clothes.");
runscript("pw_enabledamionchugs");
message("The emperor's new clothes.");
runscript("pw_raiseobjectiondamion");
runscript("setlipsynctochar");
runscript("pw_hidecourtbench");
runscript("pw_enabledamionzoom");
runscript("pw_showspeedlines");
message("That man isn't wearing any clothes,\nYour Honor!");
hidegenobj("pw_speedlines");
runscript("pw_showattorneystand");