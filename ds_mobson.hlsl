[pw_createmobson]
runscript("pw_loadmobsonfiles");

//Normal
createanimation("Mobson_Normal",1);
insertanimationframe("Mobson_Normal",1,900,1);
setanimationframetexturecoordinates("Mobson_Normal",1,0,0,180,169);
createanimation("Mobson_Normal_Talking",1); //rework
insertanimationframe("Mobson_Normal_Talking",1,900,10);
setanimationframetexturecoordinates("Mobson_Normal_Talking",1,180,0,180,169);
insertanimationframe("Mobson_Normal_Talking",2,900,10);
setanimationframetexturecoordinates("Mobson_Normal_Talking",2,360,0,180,169);
insertanimationframe("Mobson_Normal_Talking",3,900,10);
setanimationframetexturecoordinates("Mobson_Normal_Talking",3,0,170,180,169);
insertanimationframe("Mobson_Normal_Talking",4,900,10);
setanimationframetexturecoordinates("Mobson_Normal_Talking",4,360,0,180,169);
//Explain
createanimation("Mobson_Explain",1); //ok
insertanimationframe("Mobson_Explain",1,901,40);
setanimationframetexturecoordinates("Mobson_Explain",1,360,0,180,169);
insertanimationframe("Mobson_Explain",2,901,40);
setanimationframetexturecoordinates("Mobson_Explain",2,360,170,180,169);
createanimation("Mobson_Explain_Talking",2); //ok
insertanimationframe("Mobson_Explain_Talking",1,901,7);
setanimationframetexturecoordinates("Mobson_Explain_Talking",1,360,0,180,169);
insertanimationframe("Mobson_Explain_Talking",2,901,7);
setanimationframetexturecoordinates("Mobson_Explain_Talking",2,180,0,180,169);
insertanimationframe("Mobson_Explain_Talking",3,901,7);
setanimationframetexturecoordinates("Mobson_Explain_Talking",3,0,0,180,169);
insertanimationframe("Mobson_Explain_Talking",4,901,11);
setanimationframetexturecoordinates("Mobson_Explain_Talking",4,180,0,180,169);
insertanimationframe("Mobson_Explain_Talking",5,901,7);
setanimationframetexturecoordinates("Mobson_Explain_Talking",5,360,170,180,169);
insertanimationframe("Mobson_Explain_Talking",6,901,7);
setanimationframetexturecoordinates("Mobson_Explain_Talking",6,180,170,180,169);
insertanimationframe("Mobson_Explain_Talking",7,901,7);
setanimationframetexturecoordinates("Mobson_Explain_Talking",7,0,170,180,169);
insertanimationframe("Mobson_Explain_Talking",8,901,11);
setanimationframetexturecoordinates("Mobson_Explain_Talking",8,180,170,180,169);
//Sweating
createanimation("Mobson_Sweating",1);
insertanimationframe("Mobson_Sweating",1,903,10);
setanimationframetexturecoordinates("Mobson_Sweating",1,0,0,180,169);
insertanimationframe("Mobson_Sweating",2,903,10);
setanimationframetexturecoordinates("Mobson_Sweating",2,180,0,180,169);
insertanimationframe("Mobson_Sweating",3,903,10);
setanimationframetexturecoordinates("Mobson_Sweating",3,360,0,180,169);
insertanimationframe("Mobson_Sweating",4,903,10);
setanimationframetexturecoordinates("Mobson_Sweating",4,0,170,180,169);
createanimation("Mobson_Sweating_Talking",1);
insertanimationframe("Mobson_Sweating_Talking",1,903,10);
setanimationframetexturecoordinates("Mobson_Sweating_Talking",1,0,170,180,169);
insertanimationframe("Mobson_Sweating_Talking",2,903,10);
setanimationframetexturecoordinates("Mobson_Sweating_Talking",2,180,170,180,169);
insertanimationframe("Mobson_Sweating_Talking",3,903,10);
setanimationframetexturecoordinates("Mobson_Sweating_Talking",3,360,170,180,169);
insertanimationframe("Mobson_Sweating_Talking",4,903,10);
setanimationframetexturecoordinates("Mobson_Sweating_Talking",4,180,170,180,169);
//Surprised!
createanimation("Mobson_Surprised",1);
insertanimationframe("Mobson_Surprised",1,902,9999);
setanimationframetexturecoordinates("Mobson_Surprised",1,242,44,118,126);
createanimation("Mobson_Surprised_Talking",1);
insertanimationframe("Mobson_Surprised_Talking",1,902,10);
setanimationframetexturecoordinates("Mobson_Surprised_Talking",1,33,36,105,134);
insertanimationframe("Mobson_Surprised_Talking",2,902,9999);
setanimationframetexturecoordinates("Mobson_Surprised_Talking",2,242,44,118,126);
setanimationframesfx("Mobson_Surprised_Talking",2,"sfx-stab2.wav",3);

//Mobson Expressions
[pw_enablemobsonnormal]
recfunctionname([pw_charfunc]);
placecharacter("pw_char",100,-5);
setcharactersize("pw_char",180,170);
setcharacteranimation("pw_char","Mobson_Normal");
setcharacterlipsyncsilent("pw_char","Mobson_Normal");
setcharacterlipsynctalking("pw_char","Mobson_Normal_Talking");

[pw_enablemobsonexplain]
recfunctionname([pw_charfunc]);
placecharacter("pw_char",90,-10);
setcharactersize("pw_char",180,170);
setcharacteranimation("pw_char","Mobson_Explain");
setcharacterlipsyncsilent("pw_char","Mobson_Explain");
setcharacterlipsynctalking("pw_char","Mobson_Explain_Talking");

[pw_enablemobsonsweating]
recfunctionname([pw_charfunc]);
placecharacter("pw_char",100,-10);
setcharactersize("pw_char",180,170);
setcharacteranimation("pw_char","Mobson_Sweating");
setcharacterlipsyncsilent("pw_char","Mobson_Sweating");
setcharacterlipsynctalking("pw_char","Mobson_Sweating_Talking");

[pw_enablemobsonsurprised]
recfunctionname([pw_charfunc]);
placecharacter("pw_char",140,30);
setcharactersize("pw_char",118,126);
setanimationrepeations("Mobson_Surprised",1);
setcharacteranimation("pw_char","Mobson_Surprised");
setcharacterlipsyncsilent("pw_char","Mobson_Surprised");
setcharacterlipsynctalking("pw_char","Mobson_Surprised_Talking");

[pw_loadmobsonfiles]
loadtexture(900,"damionshard\character\Jerk Mobson\OldPayne_Normal.png");
loadtexture(901,"damionshard\character\Jerk Mobson\OldPayne_Explain.png");
loadtexture(902,"damionshard\character\Jerk Mobson\OldPayne_Surprised.png");
loadtexture(903,"damionshard\character\Jerk Mobson\OldPayne_Sweating.png");