#include(pwlib/pwlib.hlsl)
#includeinfolder(damionshard/dsaascripts)

[game]
jumptoscript("setup");

[setup]
runscript("pw_initpwlib");
runscript("pw_initpwbgs");
loadtexture(61008,"damionshard/redSlines1.png");
loadtexture(61009,"damionshard/redSlines2.png");
loadtexture(61108,"damionshard/blueSlines1.png");
loadtexture(61109,"damionshard/blueSlines2.png");
loadtexture(61110,"damionshard/greenSlines1.png");
loadtexture(61111,"damionshard/greenSlines2.png");
loadtexture(61112,"damionshard/pinkSlines1.png");
loadtexture(61113,"damionshard/pinkSlines2.png");
runscript("pw_initredspeedlines");
runscript("pw_initbluespeedlines");
runscript("pw_initgreenspeedlines");
runscript("pw_initpinkspeedlines");
loadtexture(12112,"damionshard/dsnameboxes.png");
changetitle("Variant Speed Lines Test");
jumptoscript("run");

[run]
runscript("pw_createphoenix");
runscript("pw_createedgeworth");
runscript("pw_creategodot");
runscript("pw_createyoungmia");
runscript("pw_createdamion");
runscript("pw_createmeson");
runscript("showpwchar");
runscript("pw_showadvarrowmenu");
runscript("pw_showmessagebox");
runscript("pw_showattorneystand");
runscript("pw_enablephoenixnormal");
runscript("setlipsynctochar");
runscript("pw_setnameboxtodamion");
message("This is a test script for \nYggdrasilsSword's Variant\nSpeed Lines.");
runscript("pw_hidecourtbench");
runscript("pw_showredspeedlines");
runscript("pw_enablephoenixzoom");
message("These are Damion Shard's\nspeed lines.");
swapobjecttexturecoordinates("bg","pw_bg","X");
runscript("pw_showbluespeedlines");
runscript("pw_enableedgeworthzoom");
runscript("pw_setnameboxtomeson");
message("These are Meson von Vharnado's\nspeed lines.");
swapobjecttexturecoordinates("bg","pw_bg","");
runscript("pw_showpinkspeedlines");
runscript("pw_enableyoungmiazoom");
runscript("pw_setnameboxtowindy");
message("These are Windy von Vharnado's\nspeed lines.");
swapobjecttexturecoordinates("bg","pw_bg","X");
runscript("pw_showgreenspeedlines");
runscript("pw_enablegodotzoom");
runscript("pw_setnameboxtogregor");
message("These are Gregor von Vharnado's\nspeed lines.");
swapobjecttexturecoordinates("bg","pw_bg","");
runscript("pw_showattorneystand");
runscript("pw_enablephoenixnormal");
runscript("pw_setnameboxtodamion");
message("This is the end of \nYggdrasilsSword's Variant\nSpeed Lines test.");
runscript("pw_showprosecutorstand");
loadandplaysfx("sfx-stab2.wav",0);
runscript("pw_enablemesondamage2");
runscript("pw_setnameboxtomeson");
message("What!? Already?");
runscript("pw_hidecourtbench");
runscript("pw_showbluespeedlines");
runscript("pw_enablemesonzoom");
runscript("pw_setnameboxtomeson");
messageauto("This is blasphemy, lawyer!");
wait(10);
messageappend("\nThis is madness!");
runscript("pw_showattorneystand");
runscript("pw_enabledamionthinking");
runscript("pw_setnameboxtodamion");
message("Madness?");
runscript("pw_hidecourtbench");
runscript("pw_showredspeedlines");
runscript("pw_enabledamionzoom");
runscript("pw_setnameboxtodamion");
messageauto("THIS");
wait(20);
messageappendauto(" IS");
wait(20);
messageappend(" SPARTA!");
quit();

