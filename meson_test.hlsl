#include(pwlib/pwlib.hlsl)
#includeinfolder(damionshard/dsaascripts)
[game]
runscript("pw_initpwlib");
runscript("pw_initpwbgs"); 
runscript("pw_createmeson");
changetitle("Meson Test");
loadtexture(12112,"damionshard/dsnameboxes.png");
loadtexture(61010,"damionshard/objection_blue.png");
loadtexture(61011,"damionshard/holdit_blue.png");
loadtexture(61012,"damionshard/takethat_blue.png");
jumptoscript("run"); 
[run]
runscript("pw_showmain"); 
waitresponse(); 
runscript("pw_hidemain");
jumptoscript("casestart");
[casestart]
runscript("pw_usepwbgprosecutorstand");
placefadescreenex(48,"O",0,0,0,256);
runscript("pw_showadvarrowmenu");
runscript("showpwchar");
jumptoscript("test1"); 
[test1]
loadandplaymp3("music/08 - Investigation ~ Cornered.mp3",0,"N");
runscript("pw_showprosecutorstand");
runscript("pw_showmessagebox");
runscript("setlipsynctochar");
runscript("pw_setnameboxtomeson");
runscript("pw_enablemesondamage2");
message("You didn't tell me I had\nto say anything!");
runscript("pw_enablemesonthinking");
message("Hmm... Well, I guess I'll say this:\nTesting the portraits.");
runscript("pw_enablemesonstrained");
message("Testing the portraits.");
runscript("pw_enablemesonsmirk");
message("Testing the portraits.");
runscript("pw_enablemesonshrug");
message("Testing the portraits.");
runscript("pw_enablemesonpointing");
message("Testing the portraits.");
runscript("pw_enablemesonobjection");
message("Testing the portraits.");
runscript("pw_enablemesonnormal");
message("Testing the portraits.");
runscript("pw_enablemesonhandondesk");
message("Testing the portraits.");
runscript("pw_enablemesonbow");
message("Testing the portraits.");
runscript("setlipsynctochar");
runscript("pw_enablemesonconfident");
message("Testing the portraits.");
runscript("pw_hidemessagebox");
loadandplaysfx("meson - Hold it.wav",0);
runscript("pw_raiseholditmeson");
runscript("pw_showmessagebox");
setvar([sld_targetcharanim],"pw_enablemesondaconfident");
runscript("pw_slideprosecutortoattoney");
message("Testing the portraits.");
runscript("pw_enablemesondadamage");
message("Testing the portraits.");
runscript("pw_enablemesondadeskslam");
message("Testing the portraits.");
setvar([sld_targetcharanim],"pw_enablemesondamage");
runscript("pw_slideattoneytoprosecutor");
message("Testing the portraits.");
runscript("pw_hidemessagebox");
loadandplaysfx("meson - Take that.wav",0);
runscript("pw_raisetakethatmeson");
runscript("pw_showmessagebox");
setvar([sld_targetcharanim],"pw_enablemesondanormal");
runscript("pw_slideprosecutortoattoney");
runscript("setlipsynctochar");
message("Testing the portraits.");
runscript("pw_enablemesondapointing");
message("Testing the portraits.");
runscript("pw_enablemesondashrug");
message("Testing the portraits.");
runscript("pw_enablemesondastrained");
message("Testing the portraits.");
runscript("pw_hidemessagebox");
loadandplaysfx("meson - (English) Objection!.wav",0);
runscript("pw_raiseobjectionmeson");
runscript("pw_showmessagebox");
runscript("pw_enablemesondadamage2");
message("Dammit, I'm suppose to say\nthat later!");
runscript("pw_enablemesondathinking");
message("Testing the portraits.");
runscript("pw_hidecourtbench");
runscript("pw_enablemesondazoom");
runscript("pw_showspeedlines");
message("Now I am ready to be a\nperfect defense attorney!");
hidegenobj("pw_speedlines");
runscript("pw_showprosecutorstand");
runscript("pw_enablemesondocument");
message("Testing the portraits.");
setvar([sld_targetcharanim],"pw_enablemesonemo");
runscript("pw_slideprosecutortowitness");
message("When I think about you,\nI cut myself.");
runscript("pw_enablemesonforward");
message("Testing the portraits.");
runscript("pw_enablemesonmad");
message("Testing the portraits.");
runscript("pw_enablemesonnervous");
message("Testing the portraits.");
runscript("pw_enablemesonobjects");
message("Testing the portraits.");
runscript("pw_enablemesonshout");
runscript("setlipsynctochar");
message("Testing the portraits.");
runscript("pw_enablemesonsidelook");
message("Testing the portraits.");
runscript("pw_enablemesonsmug");
message("Testing the portraits.");
runscript("pw_enablemesonthinsmile");
message("Testing the portraits.");
runscript("pw_hidecourtbench");
runscript("pw_enablemesonzoom");
runscript("pw_showspeedlines");
message("At long last, the \"Perfect Prosecutor\" is\nready!");
hidegenobj("pw_speedlines");
runscript("pw_showwitnessstand");
runscript("pw_enablemesondamageextra");
message("What's this?!\nSanta left me...\nCOAL!?!");