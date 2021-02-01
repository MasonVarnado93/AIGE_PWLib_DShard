#include(pwlib/pwlib.hlsl)

[case1_setup]
changetitle("Loading...");
runscript("case1_charcreation");
runscript("case1_load");
runscript("case1_evidenceprofilecreation");
changetitle("Turnabout Taco");
runscript("pw_crosizesalternative");
definevarglobal([pw_qresponse],"int");
definevarglobal([pw_witness],"string");
definevarglobal([pw_rightevi],"int");
definevarglobal([pw_examno],"int");
definevarglobal([pw_maxstatements],"int");
definevarglobal([pw_contradiction],"int");
setgenobjgraphic("pw_croprosecutor",4802);
setgenobjgraphic("pw_croattorney",4803);
setgenobjgraphic("pw_crojudge",4804);
setgenobjgraphic("pw_crowitness",4805);
jumptoscript("case1run");

[case1_load]
replacetexture(4802,"damionshard/CROPrMeson.png");
replacetexture(4803,"damionshard/CRODfDamion.png");
replacetexture(4804,"damionshard/CROJudgeworth.png");
replacetexture(4805,"damionshard/CROWtAlbertIsaac.png");

[case1_charcreation]
runscript("pw_createdamion");
runscript("pw_createalbert");
runscript("pw_createshard");
runscript("pw_createjudgeworth");
runscript("pw_createakshent");
runscript("pw_createmeson");
runscript("pw_createspun");
runscript("pw_createmobson");
runscript("pw_createtotali");
runscript("pw_createannette");
runscript("pw_createwares");

[case1_evidenceprofilecreation]
setvar([evidencenumber],8001);
setvar([evidencegfs],81000);
setvar([evidencegfl],81000);
setvar([evidencesup],0);
setvar([evidencename],"Attorney's Badge");
setvar([evidencesdesc],"Type: Other\nOne of my possessions.");
setvar([evidenceldesc],"This badge is proof that I am a genuine\ndefense attorney, and not some fake with\na cardboard emblem.");
runscript("createevidence");

setvar([evidencenumber],8002);
setvar([evidencegfs],81001);
setvar([evidencegfl],81001);
setvar([evidencesup],0);
setvar([evidencename],"Quilla's Autopsy Report");
setvar([evidencesdesc],"Type: Reports\nReceived from Lord Shard.");
setvar([evidenceldesc],"Time of death: 8/4 at 6:00 P.M.\nCause: Brain hemorrhaging as a result of\nblunt trauma to the head.");
runscript("createevidence");

setvar([evidencenumber],8003);
setvar([evidencegfs],81002);
setvar([evidencegfl],81002);
setvar([evidencesup],0);
setvar([evidencename],"Rolling Pin");
setvar([evidencesdesc],"Type: Weapons\nSubmitted as evidence by\nProsecutor von Vharnado.");
setvar([evidenceldesc],"The murder weapon used to kill the victim. It has\nthe defendant’s fingerprints on it, as well as\nthe fingerprints of several Taco Dell employees.");
runscript("createevidence");

setvar([evidencenumber],8004);
setvar([evidencegfs],81003);
setvar([evidencegfl],81003);
setvar([evidencesup],0);
setvar([evidencename],"Taco");
setvar([evidencesdesc],"Type: Other\nSubmitted as evidence by\nProsecutor von Vharnado.");
setvar([evidenceldesc],"A Super Grande-sized taco from Taco Dell.\nBelieved to be the motive for murder.");
runscript("createevidence");

setvar([evidencenumber],8005);
setvar([evidencegfs],81004);
setvar([evidencegfl],81004);
setvar([evidencesup],0);
setvar([evidencename],"Cash Register");
setvar([evidencesdesc],"Type: Other\nReceived from Annette.");
setvar([evidenceldesc],"Based on the computer record, two sales\nwere made around the time of the incident,\nat 5:50 P.M. and at 5:59 P.M.");
runscript("createevidence");

setvar([evidencenumber],8006);
setvar([evidencegfs],81005);
setvar([evidencegfl],81005);
setvar([evidencesup],0);
setvar([evidencename],"Taco Dell Brochure");
setvar([evidencesdesc],"Type: Other\nReceived from Annette.");
setvar([evidenceldesc],"Taco Dell is the #1 taco and computer producer\nin the world. With experience like Taco Dell,\nyou know you can trust our products.");
runscript("createevidence");

setvar([profilenumber],9000);
setvar([profilegfs],91008);
setvar([profilegfl],91008);
setvar([profilename],"Judge Judgeworth");
setvar([profilesdesc],"Age: ??\nGender: Male");
setvar([profileldesc],"A well-liked judge in this district, who\nseems to preside in just about every trial.\nHis last name is entirely a coincidence.");
runscript("createprofile");

setvar([profilenumber],9001);
setvar([profilegfs],91000);
setvar([profilegfl],91000);
setvar([profilename],"Damion Shard");
setvar([profilesdesc],"Age: 18\nGender: Male");
setvar([profileldesc],"I am the first Shard defense attorney, fresh\nout of the Shard Academy for the Legally\nGifted, owned by Shard Corporation.");
runscript("createprofile");

setvar([profilenumber],9002);
setvar([profilegfs],91001);
setvar([profilegfl],91001);
setvar([profilename],"Albert Isaac");
setvar([profilesdesc],"Age: 23\nGender: Male");
setvar([profileldesc],"The defendant in this case and my client. An\neccentric young inventor who doesn't seem\nto invent anything useful.");
runscript("createprofile");

setvar([profilenumber],9003);
setvar([profilegfs],91002);
setvar([profilegfl],91002);
setvar([profilename],"Joe Quilla");
setvar([profilesdesc],"Age: 35\nGender: Male");
setvar([profileldesc],"The victim in this case. He owned the highly\nsuccessful fast food chain, Taco Dell.");
runscript("createprofile");

setvar([profilenumber],9004);
setvar([profilegfs],91003);
setvar([profilegfl],91003);
setvar([profilename],"Gerald Shard");
setvar([profilesdesc],"Age: 48\nGender: Male");
setvar([profileldesc],"My father, a veteran prosecutor who has\nnever lost a case. He is also the CEO of the\ncorporate giant, Shard Corporation.");
runscript("createprofile");

setvar([profilenumber],9005);
setvar([profilegfs],91004);
setvar([profilegfl],91004);
setvar([profilename],"Meson von Vharnado");
setvar([profilesdesc],"Age: 23\nGender: Male");
setvar([profileldesc],"The oldest son in the von Vharnado family, all\nof whom are prosecutors. He has yet to lose a\ncase in his five-year career.");
runscript("createprofile");

setvar([profilenumber],9006);
setvar([profilegfs],91005);
setvar([profilegfl],91005);
setvar([profilename],"Sharpasa Spun");
setvar([profilesdesc],"Age: 29\nGender: Male");
setvar([profileldesc],"A clumsy detective who doesn't seem to be\nparticularly skilled at his job. Apparently, his last\nname is pronounced \"spoon.\"");
runscript("createprofile");

setvar([profilenumber],9007);
setvar([profilegfs],91006);
setvar([profilegfl],91006);
setvar([profilename],"Annette Shard");
setvar([profilesdesc],"Age: 16\nGender: Female");
setvar([profileldesc],"My cousin, a member of the Luminix Shard\nbranch. Lord Shard instructed her to\nassist me in this trial.");
runscript("createprofile");

setvar([profilenumber],9008);
setvar([profilegfs],91007);
setvar([profilegfl],91007);
setvar([profilename],"Robert Wares");
setvar([profilesdesc],"Age: 51\nGender: Male");
setvar([profileldesc],"An old man who owns a hot dog stand,\nnot far from the crime scene. He claims\nto have witnessed the murder.");
runscript("createprofile");

//Evidence and Profiles for Flashback
setvar([evidencenumber],8101);
setvar([evidencegfs],81000);
setvar([evidencegfl],81000);
setvar([evidencesup],0);
setvar([evidencename],"Attorney Badge"); //Meson von Vharnado's Attorney's Badge
setvar([evidencesdesc],"Type: Other\nOne of my possessions.");
setvar([evidenceldesc],"This badge proves I'm a defense attorney.\nIf I was a prosecutor, I wouldn't have to wear\nthe dumb thing.");
runscript("createevidence");

setvar([evidencenumber],8102);
setvar([evidencegfs],81001);
setvar([evidencegfl],81001);
setvar([evidencesup],0);
setvar([evidencename],"Patrick's Autopsy Report"); //Louis Charles Patrick's Autopsy
setvar([evidencesdesc],"Type: Reports\nReceived from Gregor\nvon Vharnado.");
setvar([evidenceldesc],"Time of death: 4/29 at 12:00 A.M.\nCause: Gunshot wound to head.");
runscript("createevidence");

setvar([profilenumber],9100);
setvar([profilegfs],91009);
setvar([profilegfl],91009);
setvar([profilename],"Judge Akshent");
setvar([profilesdesc],"Age: ??\nGender: Male");
setvar([profileldesc],"An older judge who presides over fewer cases\nthan Judge Judgeworth. Known to be\npro-prosecution while highly conservative.");
runscript("createprofile");

setvar([profilenumber],9101);
setvar([profilegfs],91004);
setvar([profilegfl],91004);
setvar([profilename],"Meson von Vharnado"); //Defense Attorney
setvar([profilesdesc],"Age: 18\nGender: Male");
setvar([profileldesc],"I am one of the last defense attorneys at the\nGregor von Vharnado Law Firm. This is actually\nmy first case, and at this rate, maybe my last.");
runscript("createprofile");

setvar([profilenumber],9102);
setvar([profilegfs],91012);
setvar([profilegfl],91012);
setvar([profilename],"Rockster Ganes");
setvar([profilesdesc],"Age: 28\nGender: Male");
setvar([profileldesc],"My client, a famous game designer. He is the\ncreator of the popular Grand Theft Motto.\nAccused of murdering a police officer.");
runscript("createprofile");

setvar([profilenumber],9103);
setvar([profilegfs],91013);
setvar([profilegfl],91013);
setvar([profilename],"Louis Charles Patrick");
setvar([profilesdesc],"Age: 22\nGender: Male");
setvar([profileldesc],"A police officer who was killed in a drive-by\nshooting. A witness claimed to see the license\nplate of the car, which read \"Liberty City.\"");
runscript("createprofile");

setvar([profilenumber],9104);
setvar([profilegfs],91010);
setvar([profilegfl],91010);
setvar([profilename],"Jerk Mobson");
setvar([profilesdesc],"Age: 65\nGender: Male");
setvar([profileldesc],"A conservative prosecutor who hates video\ngames with a passion, despite the fact that\nhe is extremely ignorant about them.");
runscript("createprofile");

setvar([profilenumber],9105);
setvar([profilegfs],91011);
setvar([profilegfl],91011);
setvar([profilename],"Totali Didet");
setvar([profilesdesc],"Age: 20\nGender: Female");
setvar([profileldesc],"A cashier who works at Jest Buy. Apparently\nwitnessed the shooting of the officer and caught\nmy client's license plate.");
runscript("createprofile");

//Case 1 General Scripts
[pw_crossstatement]
runscript("pw_greenmessagebox");
runscript("pw_showwitnessstand");
runscript([pw_witness]);
runscript("pw_showmessagebox");
message([pw_crossmessage]);
waitsignal("advance",[pw_qresponse]);
if(<compare([pw_qresponse],"equal",1)>,<jumptoscript("case1_examobj")>,<null()>);
definevar([jumpto],"string");
setvar([jumpto],"case1_exam");
appendtostring([jumpto],[pw_examno]);
if(<compare([pwcrossexamcurrentstage],"larger",[pw_maxstatements])>,<appendtostring([jumpto],"loop")>,<appendtostring([jumpto],"s")>);
if(<compare([pwcrossexamcurrentstage],"smallerequal",[pw_maxstatements])>,<appendtostring([jumpto],[pwcrossexamcurrentstage])>,<null();>);
if(<compare([pw_qresponse],"equal",2)>,<appendtostring([jumpto],"press")>,<null()>);
jumptoscript([jumpto]);

[pw_backtocross]
runscript("pw_hidemessagebox");
placefadescreen(25,"I");
wait(25);
runscript("pw_showwitnessstand");
runscript([pw_witness]);
placefadescreen(25,"O");
wait(25);
runscript("hidepwmenu");
runscript("showpwcrossexamination");
runscript("pw_showwitnessstand");
runscript("pw_showmessagebox");

[case1_examobj]
if(<compare([pwcrossexamcurrentstage],"equal",[pw_contradiction])>,<runscript("case1_examobj2");>,<runscript("case1_examwrong")>);

[case1_examobj2]
definevar([truth],"string");
setvar([truth],"case1_truth");
appendtostring([truth],[pw_examno]);
if(<compare([currentitemcode],"equal",[pw_rightevi])>,<jumptoscript([truth])>,<runscript("case1_examwrong")>);

[case1_examwrong]
runscript("pw_hidemessagebox");
runscript("pw_raiseobjectiondamion");
runscript("hidepwmenu");
setvar([pw_lifeflash],20.0);
runscript("pw_showlifebar");
setvar([sld_targetcharanim],"pw_enabledamionpointing");
runscript("pw_whitemessagebox");
runscript("pw_showadvarrowmenu");
runscript("pw_slidewitnesstoattorney");
runscript("pw_setnameboxtodamion");
runscript("pw_hidemessagebox");
runscript("pw_enabledamiondeskslam");
runscript("pw_showmessagebox");
placeflash(5);
message("The witness's statement is\nclearly faulty, Your Honor!");
runscript("pw_enablejudgeworthnormal");
runscript("pw_showjudgetable");
runscript("pw_setnameboxtojudge");
message("...");
message("I'm sorry, but I can\nsee nothing faulty.");
runscript("pw_hidemessagebox");
runscript("pw_enablejudgeworthno");
runscript("pw_showmessagebox");
message("Unfortunately, I will have\nto penalize you, Mr. Shard.");
modifyvar([pw_lifecurrent],"subtract",20.0);
setvar([pw_lifeflash],0.0);
loadandplaysfx("sfx-damage2.wav",0);
runscript("pw_hidelifebar");
runscript("pw_showlifebar");
runscript("setlipsynctonoone");
runscript("pw_bluemessagebox");
runscript("pw_setnameboxtodamion");
message("(Ugh. I must be on\nthe wrong track?)");
runscript("setlipsynctochar");
if(<compare([pw_lifecurrent],"smallerequal",0)>,<jumptoscript("case1_gameover")>,<null()>);
runscript("pw_backtocross");
definevar([jumpto],"string");
setvar([jumpto],"case1_exam");
appendtostring([jumpto],[pw_examno]);
appendtostring([jumpto],"s");
appendtostring([jumpto],[pwcrossexamcurrentstage]);
jumptoscript([jumpto]);

//Case 1 Cross Examine Presses
[case1_exam1s1press]
setvar([c1ce1pressed1],1);
runscript("case1_exam1s1pressed");
runscript("pw_hidemessagebox");
runscript("pw_raiseholditdamion");
runscript("hidepwmenu");
setvar([sld_targetcharanim],"pw_enabledamionnormal");
runscript("pw_whitemessagebox");
runscript("pw_showadvarrowmenu");
runscript("pw_slidewitnesstoattorney");
runscript("pw_setnameboxtodamion");
runscript("pw_enabledamionthinking");
message("What time was it when\nyou got this call?");

setvar([sld_targetcharanim],"pw_enablespunscratch");
runscript("pw_slideattoneytowitness");
runscript("pw_setnameboxtospun");
message("Their shift was from 4:00\nto 8:00 P.M.");
message("I think we got that call\njust after 6:00.");

setvar([pw_witness],"pw_enablespunnormal");
if(<compare([c1ce1allpressed],"equal",1)>,<jumptoscript("case1_exam1allpressed")>,<>);
runscript("pw_backtocross");
runscript("nextpwcrossexamsimple");
jumptoscript("case1_exam1s2");

[case1_exam1s2press]
setvar([c1ce1pressed2],1);
runscript("case1_exam1s1pressed");
runscript("pw_hidemessagebox");
runscript("pw_raiseholditdamion");
runscript("hidepwmenu");
setvar([sld_targetcharanim],"pw_enabledamionnormal");
runscript("pw_whitemessagebox");
runscript("pw_showadvarrowmenu");
runscript("pw_slidewitnesstoattorney");
runscript("pw_setnameboxtodamion");
runscript("pw_enabledamionthinking");
message("How long did it take you\nto get there?");

setvar([sld_targetcharanim],"pw_enablespungrin");
runscript("pw_slideattoneytowitness");
runscript("pw_setnameboxtospun");
message("It wasn’t far away, so it didn’t\ntake too long, dude.");

setvar([sld_targetcharanim],"pw_enablemesondocument");
runscript("pw_slidewitnesstoprosecutor");
runscript("pw_setnameboxtomeson");
message("According to the police report,\nthe call was received at 6:02 P.M.,\nand the police arrived at 6:10.");
message("Therefore, we can estimate that\nit took about eight minutes for\nthe police to reach the scene.");

setvar([pw_witness],"pw_enablespunnormal");
runscript("pw_backtocross");
runscript("nextpwcrossexamsimple");
jumptoscript("case1_exam1s3");

[case1_exam1s3press]
setvar([c1ce1pressed3],1);
runscript("case1_exam1s1pressed");
runscript("pw_hidemessagebox");
runscript("pw_raiseholditdamion");
runscript("hidepwmenu");
setvar([sld_targetcharanim],"pw_enabledamionnormal");
runscript("pw_whitemessagebox");
runscript("pw_showadvarrowmenu");
runscript("pw_slidewitnesstoattorney");
runscript("pw_setnameboxtodamion");
runscript("pw_enabledamionthinking");
message("Did you just happen to be\nwith the police when the call\ncame in?");

setvar([sld_targetcharanim],"pw_enablespunhappy");
runscript("pw_slideattoneytowitness");
runscript("pw_setnameboxtospun");
message("Yo, the boys down at the station\naren't just my co-workers, dude;\nthey're my best buds.");
message("Sometimes they need a buddy to\nhang with them during their shift,\nman.");
runscript("pw_enablespunthumbsup");
message("It also makes my job easier.\nWhen a crime goes down, I'm the\nfirst detective on the scene.");
runscript("pw_enablespunscratch");
message("It's a good thing I got there\nquick, too.");
runscript("pw_enablespunnormal");
message("You gotta collect all the evidence\nas soon as possible, because\nthe trail gets cold quick.");

setvar([pw_witness],"pw_enablespunnormal");
if(<compare([c1ce1allpressed],"equal",1)>,<jumptoscript("case1_exam1allpressed")>,<>);
runscript("pw_backtocross");
runscript("nextpwcrossexamsimple");
jumptoscript("case1_exam1s4");

[case1_exam1s4press]
setvar([c1ce1pressed4],1);
runscript("case1_exam1s1pressed");
runscript("pw_hidemessagebox");
runscript("pw_raiseholditdamion");
runscript("hidepwmenu");
setvar([sld_targetcharanim],"pw_enabledamionnormal");
runscript("pw_whitemessagebox");
runscript("pw_showadvarrowmenu");
runscript("pw_slidewitnesstoattorney");
runscript("pw_setnameboxtodamion");
runscript("pw_enabledamionthinking");
message("What led you to believe that\nthe rolling pin was the\nmurder weapon?");

setvar([sld_targetcharanim],"pw_enablespunnormal");
runscript("pw_slideattoneytowitness");
runscript("pw_setnameboxtospun");
messageauto("Hm, let me think.\nMaybe because it was");
runscript("pw_enablespunmad");
loadandplaysfx("sfx-explode.wav",0);
placeshake("pw_bg","bg",20,9,19);
placeshake("","msgbox",20,9,19);
placeshake("pwnamebox","genobj",20,9,19);
placeshake("pw_char","char",20,9,19);
messageappendauto(" covered\nin the victim's blood!");
runscript("pw_enablespunsweating");
messageappend("");

setvar([sld_targetcharanim],"pw_enabledamionnormal");
runscript("pw_slidewitnesstoattorney");
runscript("pw_setnameboxtodamion");
runscript("pw_enabledamionthinking");
messageauto("Oh.");
wait(10);
messageappend(" I guess that is\na good reason.");

setvar([sld_targetcharanim],"pw_enablespunnormal");
runscript("pw_slideattoneytowitness");
runscript("pw_setnameboxtospun");
message("The autopsy confirmed that the\nvictim died from blunt trauma\nto the head.");
message("Our analysts also confirmed that\nthe blood on the rolling pin\nbelongs to the victim.");
runscript("pw_enablespungrin");
message("In other words, we have every\nreason to believe that this\nrolling pin was the murder weapon.");

setvar([pw_witness],"pw_enablespunnormal");
if(<compare([c1ce1allpressed],"equal",1)>,<jumptoscript("case1_exam1allpressed")>,<>);
runscript("pw_backtocross");
runscript("nextpwcrossexamsimple");
jumptoscript("case1_exam1s5");

[case1_exam1s5press]
setvar([c1ce1pressed5],1);
runscript("case1_exam1s1pressed");
runscript("pw_hidemessagebox");
runscript("pw_raiseholditdamion");
runscript("hidepwmenu");
setvar([sld_targetcharanim],"pw_enabledamionnormal");
runscript("pw_whitemessagebox");
runscript("pw_showadvarrowmenu");
runscript("pw_slidewitnesstoattorney");
runscript("pw_setnameboxtodamion");
runscript("pw_enabledamionthinking");
message("Were there any other fingerprints\non the weapon itself?");

setvar([sld_targetcharanim],"pw_enablespunnormal");
runscript("pw_slideattoneytowitness");
runscript("pw_setnameboxtospun");
message("Well, the fingerprints of several\nemployees of the restaurant were\non the rolling pin, dude.");
message("However, the only fingerprints not\nbelonging to an employee were\nthose of the defendant.");

setvar([sld_targetcharanim],"pw_enabledamionnormal");
runscript("pw_slidewitnesstoattorney");
runscript("pw_setnameboxtodamion");
runscript("pw_enabledamionthinking");
message("Well then, isn't it possible that\na Taco Dell employee committed\nthe crime?");

runscript("pw_raiseobjectionmeson");
runscript("pw_showprosecutorstand");
runscript("pw_enablemesonobjection");
runscript("pw_setnameboxtomeson");
message("Mr. Shard, you're forgetting one\nvery important thing.");
message("All of the other Taco Dell\nemployees had gone home before\nthe crime was committed.");
message("However, we do know that\nthe defendant was present at the\ncrime scene.");
message("We don't have a clear reason\nto suspect these employees at\nthis time.");

setvar([pw_witness],"pw_enablespunnormal");
if(<compare([c1ce1allpressed],"equal",1)>,<jumptoscript("case1_exam1allpressed")>,<>);
runscript("pw_backtocross");
runscript("nextpwcrossexamsimple");
jumptoscript("case1_exam1s6");

[case1_exam1s6press]
setvar([c1ce1pressed6],1);
runscript("case1_exam1s1pressed");
runscript("pw_hidemessagebox");
runscript("pw_raiseholditdamion");
runscript("hidepwmenu");
setvar([sld_targetcharanim],"pw_enabledamionnormal");
runscript("pw_whitemessagebox");
runscript("pw_showadvarrowmenu");
runscript("pw_slidewitnesstoattorney");
runscript("pw_setnameboxtodamion");
runscript("pw_enabledamionthinking");
message("Wait. How can a taco be a\nsufficient motive for murder?");

setvar([sld_targetcharanim],"pw_enablespunnormal");
runscript("pw_slideattoneytowitness");
runscript("pw_setnameboxtospun");
message("Let me explain, dude.");
message("From what we can tell, the\ndefendant entered the store and\nordered a Super Grande taco.");
message("The manager, Joe Quilla,\nwas the only one running\nthe register that late.");
message("After retrieving a taco lying\nunder one of the heat lamps,\nJoe Quilla rang up the purchase.");
message("The register totaled up the\nprice at $5.95, including tax.");
message("Unfortunately, the defendant\nonly had $5.94 on his person.");
message("The defendant must have been\nso hungry, he simply snapped.");
message("So he hit Quilla over the head\nwith the rolling pin and killed him.");
runscript("pw_enablespungrin");
message("Then he must have realized what\nhe had done, because he started\nrunning and left the taco there.");

setvar([pw_witness],"pw_enablespunnormal");
if(<compare([c1ce1allpressed],"equal",1)>,<jumptoscript("case1_exam1allpressed")>,<>);
runscript("pw_backtocross");
runscript("nextpwcrossexamsimple");
jumptoscript("case1_exam1loop");

[case1_exam1s1pressed]
if(<compare([c1ce1pressed1],"equal",1)>,<jumptoscript("case1_exam1s2pressed")>,<>);
[case1_exam1s2pressed]
if(<compare([c1ce1pressed2],"equal",1)>,<jumptoscript("case1_exam1s3pressed")>,<>);
[case1_exam1s3pressed]
if(<compare([c1ce1pressed3],"equal",1)>,<jumptoscript("case1_exam1s4pressed")>,<>);
[case1_exam1s4pressed]
if(<compare([c1ce1pressed4],"equal",1)>,<jumptoscript("case1_exam1s5pressed")>,<>);
[case1_exam1s5pressed]
if(<compare([c1ce1pressed5],"equal",1)>,<jumptoscript("case1_exam1s6pressed")>,<>);
[case1_exam1s6pressed]
if(<compare([c1ce1pressed6],"equal",1)>,<setvar([c1ce1allpressed],1)>,<>);

[case1_exam2s1press]
runscript("pw_hidemessagebox");
runscript("pw_raiseholditdamion");
runscript("hidepwmenu");
setvar([sld_targetcharanim],"pw_enabledamionthinking");
runscript("pw_whitemessagebox");
runscript("pw_showadvarrowmenu");
runscript("pw_slidewitnesstoattorney");
runscript("pw_setnameboxtodamion");
message("How far is your hot dog stand\nfrom the scene of the crime?");

setvar([sld_targetcharanim],"pw_enablewaresside");
runscript("pw_slideattoneytowitness");
runscript("pw_setnameboxtowares");
message("Oh, right across the street.");

setvar([sld_targetcharanim],"pw_enabledamionthinking");
runscript("pw_slidewitnesstoattorney");
runscript("pw_setnameboxtodamion");
messageauto("Isn't that kind of...");
wait(10);
messageappend(" dumb?");
message("Why would you have a\nhot dog stand right next\nto a restaurant?");

setvar([sld_targetcharanim],"pw_enablewaressideshake");
runscript("pw_slideattoneytowitness");
runscript("pw_setnameboxtowares");
message("To steal some business\nfrom them, dummy!");

setvar([sld_targetcharanim],"pw_enabledamionthinking");
runscript("pw_slidewitnesstoattorney");
runscript("pw_setnameboxtodamion");
message("But who in their right mind would\nbuy a hot dog from a stand when\nthere's a Taco Dell right there?");

setvar([sld_targetcharanim],"pw_enablewaresside");
runscript("pw_slideattoneytowitness");
runscript("pw_setnameboxtowares");
message("Who in their right mind wouldn't?");
message("Besides, why cross the street for\na bland old delicious, fast,\nand inexpensive taco...");
message("...when you can stop at Wares's hot\ndog stand for a slightly more costly,\ninsufficiently-cooked hot dog?");
runscript("pw_enablewaresnormal");
message("And the wait for Wares to lovingly\ncook them builds suspense for the\nalmost-delicious taste sensation!");

setvar([sld_targetcharanim],"pw_enabledamionsweating");
runscript("pw_slidewitnesstoattorney");
runscript("pw_setnameboxtodamion");
runscript("pw_bluemessagebox");
runscript("setlipsynctonoone");
message("(If this guy's advertising were any\nworse, he'd be trying to convince\npeople $c{colorpworange}not$c{colorpwblue} to buy his product.)");
runscript("pw_whitemessagebox");
runscript("setlipsynctochar");
runscript("pw_enabledamionthinking");
message("So, I take it you don't\nget very many customers.");

setvar([sld_targetcharanim],"pw_enablewaresmad");
runscript("pw_slideattoneytowitness");
runscript("pw_setnameboxtowares");
message("Of course Wares has customers!");
message("Just yesterday, a hairy man with a\nlong snout came to Wares's stand\nand devoured all of his hot dogs.");
runscript("pw_enablewaressideshake");
message("Wares didn't even have to\ncook 'em!");
runscript("pw_enablewaresnormal");
message("He kind of forgot to pay\nWares, though.");
messageauto("As he walked away, everyone\nwas saying,");
runscript("pw_enablewareseat");
messageappendauto(" \"That dog ate all of\nthat weird old man's hot dogs.\"");
runscript("pw_enablewaresnormal");
messageappend("");

setvar([sld_targetcharanim],"pw_enabledamionsweating");
runscript("pw_slidewitnesstoattorney");
runscript("pw_setnameboxtodamion");
message("Mr. Wares, do you think this\n\"hairy man with a long snout\"\nmight have been a dog?");

setvar([sld_targetcharanim],"pw_enablewaresmad");
runscript("pw_slideattoneytowitness");
runscript("pw_setnameboxtowares");
messageauto("Nonsense!");
runscript("pw_enablewaresside");
messageappend(" What makes you\nsay that?");
messageauto("Well, now that Wares\nthink about it...");
wait(10);
runscript("pw_enablewaresnormal");
messageappend("\nmaybe it was a dog.");

runscript("pw_showjudgetable");
runscript("pw_enablejudgeworthmad");
runscript("pw_setnameboxtojudge");
message("I find it highly unlikely that\nthis dog-like man was a dog.");
runscript("pw_enablejudgeworthnormal");
message("In my opinion, he was\nprobably a werewolf.");

runscript("pw_showwitnessstand");
runscript("pw_enablewaresmad");
runscript("pw_setnameboxtowares");
messageauto("Of course!");
runscript("pw_enablewaresside");
messageappend(" Why didn't\nWares think of that?");

setvar([sld_targetcharanim],"pw_enabledamionsweating");
runscript("pw_slidewitnesstoattorney");
runscript("pw_setnameboxtodamion");
runscript("pw_bluemessagebox");
runscript("setlipsynctonoone");
message("(Oh boy. I guess great minds\nthink alike.)");
runscript("pw_whitemessagebox");
runscript("setlipsynctochar");

runscript("pw_raiseobjectionmeson");
setvar([sld_targetcharanim],"pw_enablemesonthinking");
runscript("pw_slideattoneytoprosecutor");
runscript("pw_setnameboxtomeson");
runscript("pw_enablemesonobjection");
message("That's quite enough of this\nridiculous and irrelevant discussion.");
message("Please go on with your\ntestimony, witness.");

setvar([pw_witness],"pw_enablewaresnormal");
runscript("pw_backtocross");
runscript("nextpwcrossexamsimple");
jumptoscript("case1_exam2s2");

[case1_exam2s2press]
runscript("pw_hidemessagebox");
runscript("pw_raiseholditdamion");
runscript("hidepwmenu");
setvar([sld_targetcharanim],"pw_enabledamionthinking");
runscript("pw_whitemessagebox");
runscript("pw_showadvarrowmenu");
runscript("pw_slidewitnesstoattorney");
runscript("pw_setnameboxtodamion");
message("What was this noise that\nyou heard?");

setvar([sld_targetcharanim],"pw_enablewaresside");
runscript("pw_slideattoneytowitness");
runscript("pw_setnameboxtowares");
message("Well, it was sure loud enough\nto get Wares's attention.");
runscript("pw_enablewaresmad");
message("Wait, it was a gunshot! Yes,\nthat's what it was!");

runscript("pw_showjudgetable");
runscript("pw_enablejudgeworthmad");
runscript("pw_setnameboxtojudge");

if(<compare([c1ce2amend],"equal",1)>,<>,<runscript("case1_question4");>);

setvar([pw_witness],"pw_enablewaresnormal");
runscript("pw_backtocross");
runscript("nextpwcrossexamsimple");
jumptoscript("case1_exam2s3");

[case1_exam2s3press]
runscript("pw_hidemessagebox");
runscript("pw_raiseholditdamion");
runscript("hidepwmenu");
setvar([sld_targetcharanim],"pw_enabledamionnormal");
runscript("pw_whitemessagebox");
runscript("pw_showadvarrowmenu");
runscript("pw_slidewitnesstoattorney");
runscript("pw_hidemessagebox");
runscript("pw_enabledamiondeskslam");
runscript("pw_showmessagebox");
runscript("pw_setnameboxtodamion");
message("Why are you so sure that it was\na gunshot, Mr. Wares?");

setvar([sld_targetcharanim],"pw_enablewaresmad");
runscript("pw_slideattoneytowitness");
runscript("pw_setnameboxtowares");
message("I heard it crystal clear, boy!");
runscript("pw_enablewaresnormal");
message("I know without a doubt that\nit was a gunshot.");
runscript("pw_enablewaresmad");
message("What else would I hear, if\nthere was a murder going on!?");

runscript("pw_showattorneystand");
runscript("pw_enabledamionconfident");
runscript("pw_setnameboxtodamion");
runscript("pw_bluemessagebox");
runscript("setlipsynctonoone");
message("(I think your hearing might\nnot be as good as it used to be,\nMr. Wares.)");
runscript("pw_whitemessagebox");
runscript("setlipsynctochar");

setvar([pw_witness],"pw_enablewaresnormal");
runscript("pw_backtocross");
runscript("nextpwcrossexamsimple");
jumptoscript("case1_exam2s4");

[case1_exam2s4press]
runscript("pw_hidemessagebox");
runscript("pw_raiseholditdamion");
runscript("hidepwmenu");
setvar([sld_targetcharanim],"pw_enabledamionnormal");
runscript("pw_whitemessagebox");
runscript("pw_showadvarrowmenu");
runscript("pw_slidewitnesstoattorney");
runscript("pw_hidemessagebox");
runscript("pw_enabledamiondeskslam");
runscript("pw_showmessagebox");
runscript("pw_setnameboxtodamion");
message("Wouldn't you want to run $c{colorpworange}away$c{colorpwwhite}\nfrom the sound of a gunshot?");

setvar([sld_targetcharanim],"pw_enablewaresnormal");
runscript("pw_slideattoneytowitness");
runscript("pw_setnameboxtowares");
message("What? Why?");

runscript("pw_showattorneystand");
runscript("pw_enabledamionthinking");
runscript("pw_setnameboxtodamion");
runscript("pw_bluemessagebox");
runscript("setlipsynctonoone");
messageauto("(Maybe because...");
wait(30);
runscript("pw_enabledamionsweating");
messageappend(" never mind.)");
message("(This guy's common sense\nisn't all that great.)");
message("(Maybe I should forget about\ngetting an explanation for\nthis one.)");
runscript("pw_whitemessagebox");
runscript("setlipsynctochar");

setvar([pw_witness],"pw_enablewaresnormal");
runscript("pw_backtocross");
runscript("nextpwcrossexamsimple");
jumptoscript("case1_exam2s5");

[case1_exam2s5press]
runscript("pw_hidemessagebox");
runscript("pw_raiseholditdamion");
runscript("hidepwmenu");
setvar([sld_targetcharanim],"pw_enabledamionthinking");
runscript("pw_whitemessagebox");
runscript("pw_showadvarrowmenu");
runscript("pw_slidewitnesstoattorney");
runscript("pw_setnameboxtodamion");
message("How did you know his name\nwas Albert Isaac?");

setvar([sld_targetcharanim],"pw_enablewaresmad");
runscript("pw_slideattoneytowitness");
runscript("pw_setnameboxtowares");
message("Wares didn't, dummy!");
message("But Wares recognized his face\nright away in that line-up!");

setvar([sld_targetcharanim],"pw_enablemesondocument");
runscript("pw_slidewitnesstoprosecutor");
runscript("pw_setnameboxtodamion");
message("The police rounded up all the men\nwith elaborate costumes and curly\nred hair that they could locate.");
message("Of course, there were a lot of\nindividuals who met this description.");
message("But we managed to identify Isaac,\nwho had been found running from\nthe scene, as our prime suspect.");
message("This witness then helpfully\nconfirmed our identification of\nthe defendant.");

setvar([pw_witness],"pw_enablewaresnormal");
runscript("pw_backtocross");
runscript("nextpwcrossexamsimple");
jumptoscript("case1_exam2s6");

[case1_exam2s6press]
runscript("pw_hidemessagebox");
runscript("pw_raiseholditdamion");
runscript("hidepwmenu");
setvar([sld_targetcharanim],"pw_enabledamionnormal");
runscript("pw_whitemessagebox");
runscript("pw_showadvarrowmenu");
runscript("pw_slidewitnesstoattorney");
runscript("pw_hidemessagebox");
runscript("pw_enabledamiondeskslam");
runscript("pw_showmessagebox");
runscript("pw_setnameboxtodamion");
message("Isn't that bit of an unusual\nweapon to be used for murder?");
messageauto("I mean, the only stranger weapon\nI could imagine would be,\n");
runscript("pw_enabledamionthinking");
messageappend("uh...");
message("A statuette of a naked man\nsitting on a rock, which would turn\nout to actually be a clock.");

setvar([sld_targetcharanim],"pw_enablewaresmad");
runscript("pw_slideattoneytowitness");
runscript("pw_setnameboxtowares");
message("Well, what else would be in a\nrestaurant that could be heavy\nenough to kill a man?");
runscript("pw_enablewaresside");
message("The rolling pin must have been\nlying on the counter, or somewhere\nthe attacker could reach it.");

setvar([sld_targetcharanim],"pw_enabledamionnormal");
runscript("pw_slidewitnesstoattorney");
runscript("pw_setnameboxtodamion");
message("Wait, but aren't $c{colorpworange}tacos$c{colorpwwhite} sold\nat $c{colorpworange}Taco$c{colorpwwhite} Dell?");

setvar([sld_targetcharanim],"pw_enablewaresmad");
runscript("pw_slideattoneytowitness");
runscript("pw_setnameboxtowares");
message("Uh, don't think so. Must be\na common misconception.");

runscript("pw_raiseobjectionmeson");
setvar([sld_targetcharanim],"pw_enablemesonnormal");
runscript("pw_slidewitnesstoprosecutor");
runscript("pw_setnameboxtomeson");
runscript("pw_enablemesonobjection");
message("Tacos are definitely sold at\nTaco Dell. The defendant was\npurchasing one.");
message("However, despite this fact,\nthe rolling pin must also have\nbelonged to the restaurant.");
message("If you'll recall, there were\nfingerprints of several employees\nof Taco Dell on that rolling pin.");
message("This proves that the rolling pin\nbelonged to the Taco Dell.");
runscript("pw_hidemessagebox");

setvar([pw_witness],"pw_enablewaresnormal");
runscript("pw_backtocross");
runscript("nextpwcrossexamsimple");
jumptoscript("case1_exam2loop");

[case1_exam3s1press]
runscript("pw_hidemessagebox");
runscript("pw_raiseholditdamion");
runscript("hidepwmenu");
setvar([sld_targetcharanim],"pw_enabledamionnormal");
runscript("pw_whitemessagebox");
runscript("pw_showadvarrowmenu");
runscript("pw_slidewitnesstoattorney");
runscript("pw_hidemessagebox");
runscript("pw_enabledamiondeskslam");
runscript("pw_showmessagebox");
runscript("pw_setnameboxtodamion");
message("Why didn't you mention this earlier\nin your testimony?");

setvar([sld_targetcharanim],"pw_enablewaresmad");
runscript("pw_slideattoneytowitness");
runscript("pw_setnameboxtowares");
message("Well, Wares didn't see how\nit was relevant.");

setvar([sld_targetcharanim],"pw_enabledamionhandsondesk");
runscript("pw_slidewitnesstoattorney");
runscript("pw_setnameboxtodamion");
message("Mr. Wares, the murder took place\nat Taco Dell.");
message("The victim was the manager of\nsaid Taco Dell.");
message("And your fingerprints were\noverlooked because you are\na former employee of Taco Dell.");
runscript("pw_enabledamionpointing");
loadandplaysfx("sfx-objection.wav",0);
placeflash(5);
message("How could your employment at\nTaco Dell not be relevant!?");

setvar([sld_targetcharanim],"pw_enablewaresside");
runscript("pw_slideattoneytowitness");
runscript("pw_setnameboxtowares");
messageauto("Well, when you put it that way,");
wait(20);
runscript("pw_enablewaresnormal");
messageappend("\nit does sound relevant.");
message("Wares guess he never thought\nof it like that.");

setvar([sld_targetcharanim],"pw_enabledamionsweating");
runscript("pw_slidewitnesstoattorney");
runscript("pw_setnameboxtodamion");
runscript("pw_bluemessagebox");
runscript("setlipsynctonoone");
messageauto("(This guy...");
wait(10);
messageappend(" is a nut.)");
runscript("pw_whitemessagebox");
runscript("setlipsynctochar");

setvar([pw_witness],"pw_enablewaresnormal");
runscript("pw_backtocross");
runscript("nextpwcrossexamsimple");
jumptoscript("case1_exam3s2");

[case1_exam3s2press]
runscript("pw_hidemessagebox");
runscript("pw_raiseholditdamion");
runscript("hidepwmenu");
setvar([sld_targetcharanim],"pw_enabledamionnormal");
runscript("pw_whitemessagebox");
runscript("pw_showadvarrowmenu");
runscript("pw_slidewitnesstoattorney");
runscript("pw_hidemessagebox");
runscript("pw_enabledamiondeskslam");
runscript("pw_showmessagebox");
runscript("pw_setnameboxtodamion");
message("Do you really expect us to believe\nthat you, a hot dog vendor, founded\nthe Taco Dell fast food empire?");

setvar([sld_targetcharanim],"pw_enablewaresnormal");
runscript("pw_slideattoneytowitness");
runscript("pw_setnameboxtowares");
message("Cofounded, actually.");
message("With Joe Quilla, a high school buddy\nwith the idea to create a chain of\nfast food restaurants.");
message("Wares gave the money to get the\nbusiness started, but he wanted to\ncall the restaurant \"Hot Dog Dell.\"");
message("It was Quilla who came up with this\nwhole \"taco\" thing.");
message("Quilla projectified that it would sell\nwell, so he convinced Wares to\n\"alter\" his hot dog-related vision.");

setvar([pw_witness],"pw_enablewaresnormal");
runscript("pw_backtocross");
runscript("nextpwcrossexamsimple");
jumptoscript("case1_exam3s3");

[case1_exam3s3press]
runscript("pw_hidemessagebox");
runscript("pw_raiseholditdamion");
runscript("hidepwmenu");
setvar([sld_targetcharanim],"pw_enabledamionnormal");
runscript("pw_whitemessagebox");
runscript("pw_showadvarrowmenu");
runscript("pw_slidewitnesstoattorney");
runscript("pw_hidemessagebox");
runscript("pw_enabledamiondeskslam");
runscript("pw_showmessagebox");
runscript("pw_setnameboxtodamion");
message("Being partners, you naturally must\nhave had some disagreements,\nright?");

setvar([sld_targetcharanim],"pw_enablewaresmad");
runscript("pw_slideattoneytowitness");
runscript("pw_setnameboxtowares");
message("Naw, you young whippersnapper!");
message("Wares and Quilla were like Lords\nMontague and Capulet, we were\nso close!");

setvar([sld_targetcharanim],"pw_enabledamionthinking");
runscript("pw_slidewitnesstoattorney");
runscript("pw_setnameboxtodamion");
message("Odd, I seem to recall that those\ntwo characters were bitter enemies.");

setvar([sld_targetcharanim],"pw_enablewaresmad");
runscript("pw_slideattoneytowitness");
runscript("pw_setnameboxtowares");
message("There you go, tryin' to make\nWares look dumb again!");
runscript("pw_enablewareseat");
message("Why don't you stop bludgering\nthe witness, you big dope!");

runscript("pw_showjudgetable");
runscript("pw_enablejudgeworthmad");
runscript("pw_setnameboxtojudge");
message("Yes, Mr. Shard. Please stop\nbludgering the witness.");

runscript("pw_showattorneystand");
runscript("pw_enabledamionsweating");
runscript("pw_setnameboxtodamion");
runscript("pw_bluemessagebox");
runscript("setlipsynctonoone");
message("(Bludgering the witness, huh?)");
message("(I don't recall there being any rules\nagainst that.)");
runscript("pw_whitemessagebox");
runscript("setlipsynctochar");

setvar([pw_witness],"pw_enablewaresnormal");
runscript("pw_backtocross");
runscript("nextpwcrossexamsimple");
jumptoscript("case1_exam3s4");

[case1_exam3s4press]
runscript("pw_hidemessagebox");
runscript("pw_raiseholditdamion");
runscript("hidepwmenu");
setvar([sld_targetcharanim],"pw_enabledamionthinking");
runscript("pw_whitemessagebox");
runscript("pw_showadvarrowmenu");
runscript("pw_slidewitnesstoattorney");
runscript("pw_hidemessagebox");
runscript("pw_showmessagebox");
runscript("pw_setnameboxtodamion");
message("Were there any problems between\nthe two of you that led to this\nfalling out?");

setvar([sld_targetcharanim],"pw_enablewaresmad");
runscript("pw_slideattoneytowitness");
runscript("pw_setnameboxtowares");
message("There weren't no fallin' out, dummy!");
message("Wares just saw there was big\nbucks to be made in the hot dog\nbusiness, is all.");

setvar([sld_targetcharanim],"pw_enabledamionthinking");
runscript("pw_slidewitnesstoattorney");
runscript("pw_setnameboxtodamion");
message("But doesn't Taco Dell make much\nmore money than your hot dog\nstand?");

setvar([sld_targetcharanim],"pw_enablewaresmad");
runscript("pw_slideattoneytowitness");
runscript("pw_setnameboxtowares");
message("Bah! All they sell there is dumb\nold tacos! Wares didn't see any\nprofit in that business.");

setvar([sld_targetcharanim],"pw_enabledamionthinking");
runscript("pw_slidewitnesstoattorney");
runscript("pw_setnameboxtodamion");
message("Hm...");

if(<compare([c1ce3amend],"equal",1)>,<>,<runscript("case1_question6");>);

setvar([pw_witness],"pw_enablewaresnormal");
runscript("pw_backtocross");
runscript("nextpwcrossexamsimple");
jumptoscript("case1_exam3s5");

[case1_exam3s5press]
runscript("pw_hidemessagebox");
runscript("pw_raiseholditdamion");
runscript("hidepwmenu");
setvar([sld_targetcharanim],"pw_enabledamiondocument");
runscript("pw_whitemessagebox");
runscript("pw_showadvarrowmenu");
runscript("pw_slidewitnesstoattorney");
runscript("pw_hidemessagebox");
runscript("pw_showmessagebox");
runscript("pw_setnameboxtodamion");
message("Taco Dell seems to be a great place\nto work to me, based on\nits success.");

setvar([sld_targetcharanim],"pw_enablewaresmad");
runscript("pw_slideattoneytowitness");
runscript("pw_setnameboxtowares");
message("Bah! There was absolutely no\npotential left in that business!");
runscript("pw_enablewaresnormal");
message("Old Joe could stay if he wanted,\nbut Wares was ready to get out\nof there.");
message("All Taco Dell had to offer was\na single variety of bland, old\nMexican food.");

setvar([sld_targetcharanim],"pw_enabledamionconfident");
runscript("pw_slidewitnesstoattorney");
runscript("pw_setnameboxtodamion");
message("Are you sure about that,\nMr. Wares?");
message("I think that part of Taco Dell's\nindustry is moving forward into the\nnew age.");

setvar([sld_targetcharanim],"pw_enablewareseat");
runscript("pw_slideattoneytowitness");
runscript("pw_setnameboxtowares");
message("So do those Taco Dell commercials\nthat trying convincin' Wares to buy\nstock in the company.");
runscript("pw_enablewaresnormal");
message("Wares thinks you're missing the\npoint, Mr. Attorney.");

setvar([sld_targetcharanim],"pw_enabledamionthinking");
runscript("pw_slidewitnesstoattorney");
runscript("pw_setnameboxtodamion");
runscript("pw_bluemessagebox");
runscript("setlipsynctonoone");
message("(I think you're the one who's\nmissing the point, Mr. Wares.)");
runscript("pw_whitemessagebox");
runscript("setlipsynctochar");

setvar([pw_witness],"pw_enablewaresnormal");
runscript("pw_backtocross");
runscript("nextpwcrossexamsimple");
jumptoscript("case1_exam3s6");

[case1_exam3s6press]
runscript("pw_hidemessagebox");
runscript("pw_raiseholditdamion");
runscript("hidepwmenu");
setvar([sld_targetcharanim],"pw_enabledamionnormal");
runscript("pw_whitemessagebox");
runscript("pw_showadvarrowmenu");
runscript("pw_slidewitnesstoattorney");
runscript("pw_hidemessagebox");
runscript("pw_enabledamiondeskslam");
runscript("pw_showmessagebox");
runscript("pw_setnameboxtodamion");
message("If you and Mr. Quilla were such\ngood friends, then why did you\nleave Taco Dell?");
message("Could it be that you were\ndispleased with some of the\ndecisions he made?");
runscript("pw_enabledamionpointing");
messageauto("And that displeasure could be a\nmotive for");
runscript("pw_raiseobjectionmeson");
messageappendauto("...");
wait(60);

setvar([sld_targetcharanim],"pw_enablemesonnormal");
runscript("pw_slideattoneytoprosecutor");
runscript("pw_setnameboxtomeson");
runscript("pw_enablemesonsmirk");
message("I know what you're thinking,\nMr. Shard.");
runscript("pw_enablemesonconfident");
runscript("setlipsynctochar");
message("The prosecution would like to remind\nthe court that there's no conclusive\nevidence to implicate Mr. Wares.");
runscript("pw_enablemesonshrug");
message("Therefore, trying to prove a motive\nthrough conjecture is a fruitless\nattempt.");

runscript("pw_showjudgetable");
runscript("pw_enablejudgeworthnormal");
runscript("pw_setnameboxtojudge");
message("Objection sustained, Prosecutor\nvon Vharnado.");
message("Until we have conclusive evidence\nof the witnesss's guilt, we cannot\nprove a motive for him.");

runscript("pw_showattorneystand");
runscript("pw_enabledamionsweating");
runscript("pw_setnameboxtodamion");
runscript("pw_bluemessagebox");
runscript("setlipsynctonoone");
message("(How does the presence of his\nfingerprints on the weapon not\nqualify as \"conclusive evidence?\")");
runscript("pw_whitemessagebox");
runscript("setlipsynctochar");

setvar([pw_witness],"pw_enablewaresnormal");
runscript("pw_backtocross");
runscript("nextpwcrossexamsimple");
jumptoscript("case1_exam3loop");

[case1_exam4s1press]
runscript("pw_hidemessagebox");
runscript("pw_raiseholditdamion");
runscript("hidepwmenu");
setvar([sld_targetcharanim],"pw_enabledamionnormal");
runscript("pw_whitemessagebox");
runscript("pw_showadvarrowmenu");
runscript("pw_slidewitnesstoattorney");
runscript("pw_hidemessagebox");
runscript("pw_enabledamiondeskslam");
runscript("pw_showmessagebox");
runscript("pw_setnameboxtodamion");
message("Mr. Wares, what you did is\nsomething called \"perjury,\" and\nit is a serious crime!");

setvar([sld_targetcharanim],"pw_enablewaresnormal");
runscript("pw_slideattoneytowitness");
runscript("pw_setnameboxtowares");
message("Uh... so?");

setvar([sld_targetcharanim],"pw_enabledamionhandsondesk");
runscript("pw_slidewitnesstoattorney");
runscript("pw_setnameboxtodamion");
message("Mr. Wares, you could go to jail\nfor that!");

runscript("pw_raiseobjectionmeson");
setvar([sld_targetcharanim],"pw_enablemesonnormal");
runscript("pw_slideattoneytoprosecutor");
runscript("pw_enablemesonobjection");
runscript("pw_setnameboxtomeson");
message("Mr. Shard, I don't believe that this\nwitness was intentionally lying to\nmislead the court.");
message("The prosecution finds it more likely\nthat the witness's stupidity caused\nthis error, not criminal intent.");

setvar([sld_targetcharanim],"pw_enabledamionsweating");
runscript("pw_slideprosecutortoattoney");
runscript("pw_setnameboxtodamion");
runscript("pw_bluemessagebox");
runscript("setlipsynctonoone");
message("(Darn you, Prosecutor\nvon Vharnado.)");
message("(What happened to the whole\n\"being on my side\" thing\nyou had going?)");
runscript("pw_whitemessagebox");
runscript("setlipsynctochar");

setvar([pw_witness],"pw_enablewaresnormal");
runscript("pw_backtocross");
runscript("nextpwcrossexamsimple");
jumptoscript("case1_exam4s2");

[case1_exam4s2press]
runscript("pw_hidemessagebox");
runscript("pw_raiseholditdamion");
runscript("hidepwmenu");
setvar([sld_targetcharanim],"pw_enabledamionthinking");
runscript("pw_whitemessagebox");
runscript("pw_showadvarrowmenu");
runscript("pw_slidewitnesstoattorney");
runscript("pw_hidemessagebox");
runscript("pw_showmessagebox");
runscript("pw_setnameboxtodamion");
message("Had you paid for the taco?");

setvar([sld_targetcharanim],"pw_enablewaresmad");
runscript("pw_slideattoneytowitness");
runscript("pw_setnameboxtowares");
message("Of course, you dummy!");
message("What, do you think Wares was\nsitting in the restaurant eating\na stolen taco or something?");
message("What kind of weirdo steals tacos,\nMr. Attorney!?");

setvar([sld_targetcharanim],"pw_enabledamionsweating");
runscript("pw_slidewitnesstoattorney");
runscript("pw_setnameboxtodamion");
runscript("pw_bluemessagebox");
runscript("setlipsynctonoone");
message("(I'd say this guy qualifies as\na weirdo.)");
message("(Too bad I don't have the evidence\nto prove that.)");
runscript("pw_whitemessagebox");
runscript("setlipsynctochar");

setvar([pw_witness],"pw_enablewaresnormal");
runscript("pw_backtocross");
runscript("nextpwcrossexamsimple");
jumptoscript("case1_exam4s3");

[case1_exam4s3press]
runscript("pw_hidemessagebox");
runscript("pw_raiseholditdamion");
runscript("hidepwmenu");
setvar([sld_targetcharanim],"pw_enabledamionthinking");
runscript("pw_whitemessagebox");
runscript("pw_showadvarrowmenu");
runscript("pw_slidewitnesstoattorney");
runscript("pw_hidemessagebox");
runscript("pw_showmessagebox");
runscript("pw_setnameboxtodamion");
message("Describe the behavior that made the\ndefendant \"dark and mysterious.\"");

setvar([sld_targetcharanim],"pw_enablewaresnormal");
runscript("pw_slideattoneytowitness");
runscript("pw_setnameboxtowares");
message("Well, he was wearing an overcoat\nand a hat that concealed his face.");

setvar([sld_targetcharanim],"pw_enabledamionnormal");
runscript("pw_slidewitnesstoattorney");
runscript("pw_setnameboxtodamion");
runscript("pw_enabledamiondeskslam");
message("That sounds an awful lot like\nmy client's testimony!");

setvar([sld_targetcharanim],"pw_enablewaresnormal");
runscript("pw_slideattoneytowitness");
runscript("pw_setnameboxtowares");
message("He must've been trying to cover\nfor himself by describing Wares\nin the same suspicious manner.");

setvar([sld_targetcharanim],"pw_enabledamionsweating");
runscript("pw_slidewitnesstoattorney");
runscript("pw_setnameboxtodamion");
runscript("pw_bluemessagebox");
runscript("setlipsynctonoone");
message("(I think it's a little more likely that\nyou overheard my client's testimony\nand reused it.)");
runscript("pw_whitemessagebox");
runscript("setlipsynctochar");

setvar([pw_witness],"pw_enablewaresnormal");
runscript("pw_backtocross");
runscript("nextpwcrossexamsimple");
jumptoscript("case1_exam4s4");

[case1_exam4s4press]
runscript("pw_hidemessagebox");
runscript("pw_raiseholditdamion");
runscript("hidepwmenu");
setvar([sld_targetcharanim],"pw_enabledamionthinking");
runscript("pw_whitemessagebox");
runscript("pw_showadvarrowmenu");
runscript("pw_slidewitnesstoattorney");
runscript("pw_hidemessagebox");
runscript("pw_showmessagebox");
runscript("pw_setnameboxtodamion");
message("How long is that food left\nunder the heat lamps?");

setvar([sld_targetcharanim],"pw_enablewaresside");
runscript("pw_slideattoneytowitness");
runscript("pw_setnameboxtowares");
messageauto("About 72 hours.");
wait(60);
messageappend(" Why you ask?");

setvar([sld_targetcharanim],"pw_enabledamionnormal");
runscript("pw_slidewitnesstoattorney");
runscript("pw_setnameboxtodamion");
message("So the food could have been\nthree days old.");
runscript("pw_enabledamionpointing");
loadandplaysfx("sfx-objection.wav",0);
placeflash(5);
message("Maybe this outdated food was\nthe motive for murder!");

runscript("pw_raiseholditmeson");
setvar([sld_targetcharanim],"pw_enablemesonthinking");
runscript("pw_slideattoneytoprosecutor");
runscript("pw_setnameboxtowares");
message("So you admit that the defendant\ncommited the crime?");

setvar([sld_targetcharanim],"pw_enabledamionpointing");
runscript("pw_slideprosecutortoattoney");
runscript("pw_setnameboxtodamion");
messageauto("What!?");
wait(10);
runscript("pw_enabledamionsweating");
loadandplaysfx("sfx-whoops.wav");
messageappend(" No!");
runscript("pw_enabledamionsheepish");
message("I actually hadn't thought that\nfar ahead.");
message("What I meant to say was, uh...");
message("The expired taco obviously would\nnot be sufficient motive for my\nclient to commit this crime.");
message("After all, the judge has eaten half\nof the taco without complaint!");

runscript("pw_showjudgetable");
runscript("pw_enablejudgeworthsurprised");
runscript("pw_setnameboxtojudge");
setvar([pw_evidtoshowinbox],81003);
runscript("pw_showflyingevidboxleft");
loadandplaysfx("sfx-munch1.wav",0);
runscript("pw_showmessagebox");
messageauto("Munch, ");
loadandplaysfx("sfx-munch1.wav",0);
messageappendauto("munch, ");
loadandplaysfx("sfx-munch1.wav",0);
messageappend("munch...");
message("Excellent point, Mr. Shard.");
loadandplaysfx("sfx-munch1.wav",0);
messageauto("Munch, ");
loadandplaysfx("sfx-munch1.wav",0);
messageappendauto("munch, ");
loadandplaysfx("sfx-munch1.wav",0);
messageappend("munch...");
runscript("pw_hideflyingevidboxleft");

runscript("pw_showattorneystand");
runscript("pw_enabledamionsweating");
runscript("pw_setnameboxtodamion");
runscript("pw_bluemessagebox");
runscript("setlipsynctonoone");
message("(Phew. That was close.)");
runscript("pw_whitemessagebox");
runscript("setlipsynctochar");

setvar([pw_witness],"pw_enablewaresnormal");
runscript("pw_backtocross");
runscript("nextpwcrossexamsimple");
jumptoscript("case1_exam4s5");

[case1_exam4s5press]
runscript("pw_hidemessagebox");
runscript("pw_raiseholditdamion");
runscript("hidepwmenu");
setvar([sld_targetcharanim],"pw_enabledamionthinking");
runscript("pw_whitemessagebox");
runscript("pw_showadvarrowmenu");
runscript("pw_slidewitnesstoattorney");
runscript("pw_hidemessagebox");
runscript("pw_showmessagebox");
runscript("pw_setnameboxtodamion");
message("So Albert Isaac didn't pay for\nthe meal?");

setvar([sld_targetcharanim],"pw_enablewaresnormal");
runscript("pw_slideattoneytowitness");
runscript("pw_setnameboxtowares");
message("Nope. Instead of making his\npurchase, he just hit the guy\nwith a nearby rolling pin.");
message("He must've been scared of getting\ncaught, because he ran away and\nleft the taco on the counter.");
runscript("pw_enablewaresside");
message("Afterward, Wares stopped hiding\nunder the table and called\nthe authorities.");

setvar([sld_targetcharanim],"pw_enabledamionthinking");
runscript("pw_slidewitnesstoattorney");
runscript("pw_setnameboxtodamion");
message("So the taco was never purchased?");

setvar([sld_targetcharanim],"pw_enablewareseat");
runscript("pw_slideattoneytowitness");
runscript("pw_setnameboxtowares");
message("Wares said no, dummy!");

setvar([sld_targetcharanim],"pw_enabledamionsheepish");
runscript("pw_slidewitnesstoattorney");
runscript("pw_setnameboxtodamion");
message("Okay, okay.");
runscript("pw_bluemessagebox");
runscript("setlipsynctonoone");
runscript("pw_enabledamionthinking");
message("(So he didn't pay for the taco.\nHm...)");
runscript("pw_whitemessagebox");
runscript("setlipsynctochar");

setvar([pw_witness],"pw_enablewaresnormal");
runscript("pw_backtocross");
runscript("nextpwcrossexamsimple");
jumptoscript("case1_exam4loop");

//Case 1 Questions
[case1_question1]
messageauto("What is the name of the $c{colorpworange}defendant$c{colorpwwhite}\nin this case?");
runscript("pw_showselectananswer");
setvar([pw_maxquestions],3);
setvar([pw_q1gfx],51001);
setvar([pw_q2gfx],51002);
setvar([pw_q3gfx],51003);
runscript("hidepwmenu");
runscript("pw_setupquestions");
runscript("pw_showquestion");
waitsignal("qreply",[pw_qresponse]);
runscript("pw_blinkchoice");
runscript("pw_hideselectananswer");
runscript("hidepwmenu");
runscript("pw_showadvarrowmenu");
if(<compare([pw_qresponse],"equal",1)>,<jumptoscript("case1_question1wrong1")>,<>);
if(<compare([pw_qresponse],"equal",2)>,<jumptoscript("case1_question1wrong2")>,<>);

[case1_question1wrong1]
runscript("pw_showattorneystand");
runscript("pw_enabledamionnormal");
runscript("pw_setnameboxtodamion");
message("The defendant is Albert Einstein,\nYour Honor.");

runscript("pw_showjudgetable");
runscript("pw_enablejudgeworthnormal");
runscript("pw_setnameboxtojudge");
message("Mr. Shard, I think I must have\nmisheard you.");
message("Why don't you start with the\nprocess of elimination?");
message("I'm fairly certain that you can\nsafely discount the names of any\npersons who are $c{colorpworange}deceased$c{colorpwwhite}.");
message("Now, I'll ask again.");
jumptoscript("case1_question1");

[case1_question1wrong2]
runscript("pw_showattorneystand");
runscript("pw_enabledamionnormal");
runscript("pw_setnameboxtodamion");
message("The defendant is Isaac Newton,\nYour Honor.");

runscript("pw_showjudgetable");
runscript("pw_enablejudgeworthnormal");
runscript("pw_setnameboxtojudge");
message("Mr. Shard, I think I must have\nmisheard you.");
message("Why don't you start with the\nprocess of elimination?");
message("I'm fairly certain that you can\nsafely discount the names of any\npersons who are $c{colorpworange}deceased$c{colorpwwhite}.");
message("Now, I'll ask again.");
jumptoscript("case1_question1");

[case1_question2]
messageauto("What is the name of the $c{colorpworange}victim$c{colorpwwhite}\nin this case?");
runscript("pw_showselectananswer");
setvar([pw_maxquestions],3);
setvar([pw_q1gfx],51004);
setvar([pw_q2gfx],51005);
setvar([pw_q3gfx],51006);
runscript("hidepwmenu");
runscript("pw_setupquestions");
runscript("pw_showquestion");
waitsignal("qreply",[pw_qresponse]);
runscript("pw_blinkchoice");
runscript("pw_hideselectananswer");
runscript("hidepwmenu");
runscript("pw_showadvarrowmenu");
if(<compare([pw_qresponse],"equal",2)>,<jumptoscript("case1_question2wrong2")>,<>);
if(<compare([pw_qresponse],"equal",3)>,<jumptoscript("case1_question2wrong3")>,<>);

[case1_question2wrong2]
runscript("pw_showattorneystand");
runscript("pw_enabledamionnormal");
runscript("pw_setnameboxtodamion");
message("The victim is Shelly de Quilla,\nYour Honor.");

runscript("pw_showjudgetable");
runscript("pw_enablejudgeworthnormal");
runscript("pw_setnameboxtojudge");
message("Mr. Shard, surely I misheard you.");
message("The person in question is\na victim of murder, not\ncopyright infringement.");
message("Did you make sure to check the\n$c{colorpworange}Court Record$c{colorpwwhite}?");
message("I'll ask again.");
jumptoscript("case1_question2");

[case1_question2wrong3]
runscript("pw_showjudgetable");
runscript("pw_enablejudgeworthnormal");
runscript("pw_setnameboxtojudge");
runscript("pw_showattorneystand");
runscript("pw_enabledamionnormal");
runscript("pw_setnameboxtodamion");
message("The victim is Joe the Plumber,\nYour Honor.");

runscript("pw_showjudgetable");
runscript("pw_enablejudgeworthnormal");
runscript("pw_setnameboxtojudge");
message("Mr. Shard, surely I misheard you.");
message("The person in question is\na victim of murder, not\npolitical maneuvering.");
message("Did you make sure to check the\n$c{colorpworange}Court Record$c{colorpwwhite}?");
message("I'll ask again.");
jumptoscript("case1_question2");

[case1_question3]
messageauto("What is the name of the\n$c{colorpworange}defense attorney$c{colorpwwhite} in this case?");
runscript("pw_showselectananswer");
setvar([pw_maxquestions],3);
setvar([pw_q1gfx],51007);
setvar([pw_q2gfx],51008);
setvar([pw_q3gfx],51009);
runscript("hidepwmenu");
runscript("pw_setupquestions");
runscript("pw_showquestion");
waitsignal("qreply",[pw_qresponse]);
runscript("pw_blinkchoice");
runscript("pw_hideselectananswer");
runscript("hidepwmenu");
runscript("pw_showadvarrowmenu");
if(<compare([pw_qresponse],"equal",1)>,<jumptoscript("case1_question3wrong1")>,<>);
if(<compare([pw_qresponse],"equal",3)>,<jumptoscript("case1_question3wrong3")>,<>);

[case1_question3wrong1]
runscript("pw_showattorneystand");
runscript("pw_enabledamionnormal");
runscript("pw_setnameboxtodamion");
message("Simple. The defense attorney is \nMeson von Vharnado, Your Honor.");

setvar([sld_targetcharanim],"pw_enablemesonnormal");
runscript("pw_slideattoneytoprosecutor");
loadandplaysfx("sfx-stab.wav",0);
runscript("pw_enablemesondamage2");
runscript("pw_setnameboxtomeson");
message("What? I'm not the defense\nattorney, you idiot! I'm\nthe prosecutor!");

runscript("pw_showjudgetable");
runscript("pw_enablejudgeworthnormal");
runscript("pw_setnameboxtojudge");
message("I'm going to pretend I didn't hear\nyour answer, Mr. Shard.");
message("I'll ask again.");
jumptoscript("case1_question3");

[case1_question3wrong3]
runscript("pw_showattorneystand");
runscript("pw_enabledamionnormal");
runscript("pw_setnameboxtodamion");
message("Piece of cake. The defense\nattorney is James Johnson\nJudgeworth III.");

runscript("pw_showjudgetable");
runscript("pw_enablejudgeworthsurprised");
runscript("pw_setnameboxtojudge");
loadandplaysfx("sfx-explode.wav",0);
placeshake("pw_bg","bg",20,9,19);
placeshake("","msgbox",20,9,19);
placeshake("pwnamebox","genobj",20,9,19);
placeshake("pw_char","char",20,9,19);
message("What? Mr. Shard, that's my name!");
messageauto("I'm not the defense attorney;");
wait(10);
messageappend("\nI'm the judge!");
runscript("pw_enablejudgeworthnormal");
message("Okay, I'll pretend I didn't\nhear your answer.");
message("I'll ask again.");
jumptoscript("case1_question3");

[case1_question4]
messageauto("Is it really important what\nthe witness $c{colorpworange}heard,$c{colorpwwhite} Mr. Shard?");
runscript("pw_showselectananswer");
setvar([pw_maxquestions],2);
setvar([pw_q1gfx],51012);
setvar([pw_q2gfx],51013);
runscript("hidepwmenu");
runscript("pw_setupquestions");
runscript("pw_showquestion");
waitsignal("qreply",[pw_qresponse]);
runscript("pw_blinkchoice");
runscript("pw_hideselectananswer");
runscript("hidepwmenu");
runscript("pw_showadvarrowmenu");
if(<compare([pw_qresponse],"equal",1)>,<runscript("case1_question4yes")>,<runscript("case1_question4no")>);

[case1_question4yes]
runscript("pw_showattorneystand");
runscript("pw_enabledamionnodding");
runscript("pw_setnameboxtodamion");
message("It's very important,\nYour Honor.");

runscript("pw_showjudgetable");
runscript("pw_enablejudgeworthnod");
runscript("pw_setnameboxtojudge");
messageauto("Very well.");
wait(10);
messageappend(" Witness, please\namend your testimony.");
setvar([c1ce2amend],1);

[case1_question4no]
runscript("pw_showattorneystand");
runscript("pw_enabledamionnormal");
runscript("pw_setnameboxtodamion");
message("It isn't important,\nYour Honor.");

runscript("pw_showjudgetable");
runscript("pw_enablejudgeworthnormal");
runscript("pw_setnameboxtojudge");
message("Very well. You may proceed,\nwitness.");

[case1_question5]
loadandplaymp3("music/09 - Trick and Deduction.mp3",0,"");
messageauto("The witness was trying to hide\nthe following secret:");
runscript("pw_showselectananswer");
setvar([pw_maxquestions],3);
setvar([pw_q1gfx],51014);
setvar([pw_q2gfx],51015);
setvar([pw_q3gfx],51016);
runscript("hidepwmenu");
runscript("pw_setupquestions");
runscript("pw_showquestion");
waitsignal("qreply",[pw_qresponse]);
runscript("pw_blinkchoice");
runscript("pw_hideselectananswer");
runscript("hidepwmenu");
runscript("pw_showadvarrowmenu");
if(<compare([pw_qresponse],"equal",1)>,<jumptoscript("case1_question5wrong1")>,<>);
if(<compare([pw_qresponse],"equal",2)>,<jumptoscript("case1_question5wrong2")>,<>);

[case1_question5wrong1]
stopmp3(0);
runscript("pw_showattorneystand");
runscript("pw_enabledamionpointing");
runscript("pw_setnameboxtodamion");
loadandplaysfx("sfx-objection.wav",0);
message("The witness has terrible\nhearing, Your Honor!");
runscript("pw_enabledamionpointing");
message("He wasn't sure whether he\nheard a gunshot or not.");
message("So he lied about hearing the\ngunshot to hide the fact that he\nis hard of hearing!");

runscript("pw_raiseobjectionmeson");
runscript("pw_showprosecutorstand");
runscript("pw_enablemesonobjection");
runscript("pw_setnameboxtomeson");
message("That is irrelevant, Your Honor!");
message("Mr. Shard, if he couldn't hear, that\nstill doesn't explain what brought\nhim to the crime scene.");
runscript("pw_enablemesonpointing");
message("You've proven nothing.");

setvar([sld_targetcharanim],"pw_enabledamionsweating");
runscript("pw_slideprosecutortoattoney");
runscript("pw_setnameboxtodamion");
runscript("pw_bluemessagebox");
runscript("setlipsynctonoone");
loadandplaysfx("sfx-whoops.wav",0);
message("(Crud.)");
runscript("pw_whitemessagebox");
runscript("setlipsynctochar");

setvar([sld_targetcharanim],"pw_enablemesonconfident");
runscript("pw_slideattoneytoprosecutor");
runscript("pw_setnameboxtomeson");
message("Ha! Now we see the true power\nof the Shard family.");
message("A fish flopping about on land,\nlacking the precious and necessary\nadaptations that are lungs.");

setvar([sld_targetcharanim],"pw_enabledamionsheepish");
runscript("pw_slideprosecutortoattoney");
runscript("pw_setnameboxtodamion");
message("I apologize, Your Honor.\nThat isn't what I meant to say\nat all.");
runscript("pw_enabledamiondocument");
jumptoscript("case1_question5");

[case1_question5wrong2]
stopmp3(0);
runscript("pw_showattorneystand");
runscript("pw_enabledamionpointing");
runscript("pw_setnameboxtodamion");
loadandplaysfx("sfx-objection.wav",0);
message("The witness is an idiot,\nYour Honor!");
runscript("pw_enabledamionpointing");

runscript("pw_showjudgetable");
runscript("pw_enablejudgeworthsurprised");
runscript("pw_setnameboxtojudge");
message("He is!?");
message("I would never have guessed!");

runscript("pw_showattorneystand");
runscript("pw_enabledamionsweating");
runscript("pw_setnameboxtodamion");
runscript("pw_bluemessagebox");
runscript("setlipsynctonoone");
message("(I'm sure you wouldn't have\nguessed it if it hit you in\nthe face, Your Honor.)");
runscript("pw_whitemessagebox");
runscript("setlipsynctochar");

runscript("pw_raiseobjectionmeson");
runscript("pw_showprosecutorstand");
runscript("pw_enablemesonobjection");
runscript("pw_setnameboxtomeson");
message("That is redundant, Your Honor!");

runscript("pw_showattorneystand");
runscript("pw_enabledamionthinking");
runscript("pw_setnameboxtodamion");
message("Huh?");

runscript("pw_showprosecutorstand");
runscript("pw_enablemesonhandondesk");
runscript("pw_setnameboxtomeson");
message("I'm sure that we all agree, with\nthe possible exception of the judge,\nthat this man is a total idiot.");

setvar([sld_targetcharanim],"pw_enablewareseat");
runscript("pw_slideprosecutortowitness");
runscript("pw_setnameboxtowares");
message("Yeah!");
runscript("pw_enablewaresside");
message(" Whoever this whippersnapper\nis that y'all are talkin' about,\nhe must be a real dummy!");

setvar([sld_targetcharanim],"pw_enablemesonpointing");
runscript("pw_slidewitnesstoprosecutor");
runscript("pw_setnameboxtowares");
message("However, this rather superfluous\ninformation doesn't explain the hole\nin the witness's testimony.");
message("Why don't you try saying something\nthat will actually make a bit of\nheadway in this case, Mr. Shard?");

setvar([sld_targetcharanim],"pw_enabledamionthinking");
runscript("pw_slideprosecutortoattoney");
runscript("pw_setnameboxtodamion");
runscript("pw_bluemessagebox");
runscript("setlipsynctonoone");
message("(Good idea.)");
runscript("pw_enabledamionsweating");
loadandplaysfx("sfx-whoops.wav",0);
message("(Wait, no! Why am I agreeing\nwith him!?)");
runscript("pw_whitemessagebox");
runscript("setlipsynctochar");
runscript("pw_enabledamionsheepish");
message("I apologize, Your Honor.\nThat isn't what I meant to say\nat all.");
runscript("pw_enabledamiondocument");
jumptoscript("case1_question5");

[case1_question6]
runscript("pw_showjudgetable");
runscript("pw_enablejudgeworthmad");
runscript("pw_setnameboxtojudge");
messageauto("Do you feel that it is important\nto add this to the witness's\ntestimony, Mr. Shard?");
runscript("pw_showselectananswer");
setvar([pw_maxquestions],2);
setvar([pw_q1gfx],51012);
setvar([pw_q2gfx],51013);
runscript("hidepwmenu");
runscript("pw_setupquestions");
runscript("pw_showquestion");
waitsignal("qreply",[pw_qresponse]);
runscript("pw_blinkchoice");
runscript("pw_hideselectananswer");
runscript("hidepwmenu");
runscript("pw_showadvarrowmenu");
if(<compare([pw_qresponse],"equal",1)>,<runscript("case1_question6yes")>,<runscript("case1_question6no")>);

[case1_question6yes]
runscript("pw_showattorneystand");
runscript("pw_enabledamionnodding");
runscript("pw_setnameboxtodamion");
message("I think that it is quite\nimportant, Your Honor.");

runscript("pw_showjudgetable");
runscript("pw_enablejudgeworthnod");
runscript("pw_setnameboxtojudge");
message("In that case, witness, please\namend this to your official\ntestimony.");
setvar([c1ce3amend],1);

[case1_question6no]
runscript("pw_showattorneystand");
runscript("pw_enabledamionnormal");
runscript("pw_setnameboxtodamion");
message("Um... I don't think so,\nYour Honor.");

runscript("pw_showjudgetable");
runscript("pw_enablejudgeworthnormal");
runscript("pw_setnameboxtojudge");
message("As you wish, Mr. Shard.\nGo ahead, witness.");

[case1_question7]
loadandplaymp3("music/09 - Trick and Deduction.mp3",0,"");
messageauto("If Robert Wares committed this\ncrime, what was his motive?");
runscript("pw_showselectananswer");
setvar([pw_maxquestions],3);
setvar([pw_q1gfx],51017);
setvar([pw_q2gfx],51018);
setvar([pw_q3gfx],51019);
runscript("hidepwmenu");
runscript("pw_setupquestions");
runscript("pw_showquestion");
waitsignal("qreply",[pw_qresponse]);
runscript("pw_blinkchoice");
runscript("pw_hideselectananswer");
runscript("hidepwmenu");
runscript("pw_showadvarrowmenu");
if(<compare([pw_qresponse],"equal",1)>,<jumptoscript("case1_question7wrong1")>,<>);
if(<compare([pw_qresponse],"equal",2)>,<jumptoscript("case1_question7wrong2")>,<>);

[case1_question7wrong1]
stopmp3(0);
runscript("pw_raisetakethatdamion");
runscript("pw_showattorneystand");
runscript("pw_enabledamionpointing");
runscript("pw_setnameboxtodamion");
loadandplaysfx("sfx-objection.wav",0);
message("The motive was greed,\nYour Honor!");
runscript("pw_enabledamionpointing");
message("Mr. Wares didn't want to waste\nmoney, so he killed the cashier!");

runscript("pw_raiseobjectionmeson");
runscript("pw_showprosecutorstand");
runscript("pw_enablemesonobjection");
runscript("pw_setnameboxtomeson");
message("Mr. Shard, that directly contradicts\nwhat you just said.");
runscript("pw_enablemesonpointing");
message("The killer had already made the\npurchase when he killed Quilla.");
message("If the motive was greed, he would\nhave killed him before paying.");

setvar([sld_targetcharanim],"pw_enabledamionsweating");
runscript("pw_slideprosecutortoattoney");
runscript("pw_setnameboxtodamion");
runscript("pw_bluemessagebox");
runscript("setlipsynctonoone");
loadandplaysfx("sfx-whoops.wav",0);
message("(Damn; he's right!)");
runscript("pw_whitemessagebox");
runscript("setlipsynctochar");
message("Wait, Your Honor!\nPlease give me another chance\nto prove the killer's motive!");

runscript("pw_showjudgetable");
runscript("pw_enablejudgeworthnormal");
runscript("pw_setnameboxtojudge");
message("Okay, Mr. Shard.\nOne more chance.");
runscript("pw_enablejudgeworthmad");
message("But hurry up! The taco I have\njust eaten is beginning to cause\nsevere indigestion.");
message("I could have to run to the\nlittle judge's room any second now.");
jumptoscript("case1_question7");

[case1_question7wrong2]
stopmp3(0);
runscript("pw_raisetakethatdamion");
runscript("pw_showattorneystand");
runscript("pw_enabledamionpointing");
runscript("pw_setnameboxtodamion");
loadandplaysfx("sfx-objection.wav",0);
message("The motive was hunger,\nYour Honor!");
runscript("pw_enabledamionpointing");
message("Mr. Wares wanted that taco\nso badly, he killed\nthe cashier for it!");

runscript("pw_raiseobjectionmeson");
runscript("pw_showprosecutorstand");
runscript("pw_enablemesonobjection");
runscript("pw_setnameboxtomeson");
message("Mr. Shard, given the circumstances,\nthat makes no sense at all.");
runscript("pw_enablemesonpointing");
message("The killer had already made the\npurchase when he killed Quilla.");
runscript("pw_enablemesonobjection");
message("The motive couldn't be hunger,\nbecause the killer had already\nobtained the taco!");

setvar([sld_targetcharanim],"pw_enabledamionsweating");
runscript("pw_slideprosecutortoattoney");
runscript("pw_setnameboxtodamion");
runscript("pw_bluemessagebox");
runscript("setlipsynctonoone");
loadandplaysfx("sfx-whoops.wav",0);
message("(Damn; he's right!)");
runscript("pw_whitemessagebox");
runscript("setlipsynctochar");
message("Wait, Your Honor!\nPlease give me another chance\nto prove the killer's motive!");

runscript("pw_showjudgetable");
runscript("pw_enablejudgeworthnormal");
runscript("pw_setnameboxtojudge");
message("Okay, Mr. Shard.\nOne more chance.");
runscript("pw_enablejudgeworthmad");
message("But hurry up! The taco I have\njust eaten is beginning to cause\nsevere indigestion.");
message("I could have to run to the\nlittle judge's room any second now.");
jumptoscript("case1_question7");

[case1_question8]
runscript("pw_setnameboxtodamion");
runscript("pw_enablealbertbored");
messageauto("(There's something that was\nnever explained? What's he\ntalking about?)");
runscript("pw_showselectananswer");
runscript("pw_forcepresent");  
waitsignal("advance",[pw_qresponse]);
runscript("pw_hidemessagebox");
runscript("pw_hidetouchananswer");
runscript("pw_raisetakethatdamion");
runscript("pw_showadvarrowmenu");
if(<compare([currentitemcode],"equal",8003)>,<runscript("case1_question8right")>,<runscript("case1_question8wrong")>);

[case1_question8wrong]
runscript("setlipsynctonoone");
runscript("pw_whitemessagebox");
runscript("pw_showmessagebox");
message("Here it is, Mr. Isaac.\nThis is what was forgotten.");
runscript("pw_setnameboxtoalbert");
runscript("setlipsynctochar");
message("...");
runscript("pw_enablealbertbored");
message("Uh, no, that isn't it.");
message("Oh, well. It couldn't have\nbeen too important.");
runscript("pw_enablealbertnormal");
message("Anyway, thanks for\nall your help.");
runscript("pw_setnameboxtodamion");
runscript("setlipsynctonoone");
runscript("pw_bluemessagebox");
message("(Guess I'll never know\nwhat he meant.)");

[case1_question8right]
setvar([pw_evidtoshowinbox],81002);
runscript("pw_showflyingevidboxright");
runscript("pw_whitemessagebox");
runscript("pw_showmessagebox");
messageauto("Look at this, Mr. Issac.\n");
wait(10);
messageappend("I think this is what you're\nthinking of.");
runscript("setlipsynctochar");
runscript("pw_setnameboxtoalbert");
runscript("pw_enablealbertnormal");
message("That's it: the rolling pin.\nHow could my fingerprints\nhave ended up on it?");
runscript("setlipsynctonoone");
runscript("pw_setnameboxtodamion");
message("Well, you must have touched\nit somewhere before.");
runscript("pw_enablealbertbored");
message("Try to remember, Mr. Isaac.");
runscript("pw_hidemessagebox");
wait(60);
placeflash(5);
loadandplaysfx("sfx-realization.wav",0);
placeshake("pw_bg","bg",20,9,19);
placeshake("","msgbox",20,9,19);
placeshake("pwnamebox","genobj",20,9,19);
placeshake("pw_char","char",20,9,19);
runscript("pw_enablealbertscreaming");
runscript("setlipsynctochar");
runscript("pw_setnameboxtoalbert");
runscript("pw_showmessagebox");
messageauto("Yes, that's it! I remember!");
runscript("pw_enablealbertsuspenseful");
messageappend("");
runscript("pw_hideflyingevidboxright");
runscript("pw_enablealbertnormal");
message("A long time ago, I used to own\na bakery, to help finance\nmy research.");
message("The health department shut it down\ndue to some kind of health violation.");
message("Fortunately, a nice fellow was willing\nto buy the building from me at quite\na reasonable price.");
runscript("pw_enablealbertbored");
setvar([pw_evidtoshowinbox],91002);
runscript("pw_showflyingevidboxleft");
message("Here's a picture of the guy.");

runscript("setlipsynctonoone");
runscript("pw_setnameboxtodamion");
message("Joe Quilla.");
runscript("setlipsynctochar");
runscript("pw_setnameboxtoalbert");
runscript("pw_enablealbertnormal");
message("He said he had plans to start\na chain of fast food restaurants.");
message("I told him it sounded like\na good idea.");
runscript("pw_hideflyingevidboxleft");
message("I left all the cooking equipment\nat the bakery, including the\nrolling pin, I guess.");
message("But that was years ago! How would\nthat Wares guy know that?");
runscript("setlipsynctonoone");
runscript("pw_setnameboxtodamion");
runscript("pw_enablealbertbored");
message("He didn't.");
message("When he went for the killing blow,\nWares simply grabbed the nearest\nblunt implement.");
message("He just got very, very lucky that\nyour fingerprints were still\non that pin, after so many years.");
runscript("pw_enablealbertnormal");
runscript("setlipsynctochar");
runscript("pw_setnameboxtoalbert");
message("Well, I'm certainly glad I chose\nyou to be my lawyer, Mr. Shard.");
message("If it weren't for you, I'd be\nin prison right now.");
runscript("pw_enablealbertsad");
message("I'm sorry that I have\nno money with which to pay you.");
runscript("pw_setnameboxtodamion");
runscript("setlipsynctonoone");
runscript("pw_bluemessagebox");
message("(Well, that's okay...\nWait, what!?)");

//Case 1 Game Over
[case1_gameover]
runscript("pw_hidelifebar");
runscript("pw_hidemessagebox");
placefade("pw_bg","bg",1,"I");
runscript("pw_showgavelhit");
runscript("pw_enablejudgeworthnormal");
runscript("pw_showjudgetable");
runscript("pw_setnameboxtojudge");
placefade("pw_char","char",1,"I");
runscript("pw_whitemessagebox");
runscript("pw_showmessagebox");
message("That's enough!");
stopmp3(0);
message("This court sees no reason to\nfurther prolong the trial.");
message("The defense has failed to give\nthe court sufficient reason to\ndoubt the prosecution's claim.");
runscript("pw_enablejudgeworthmad");
messageauto("This court finds the\ndefendant, ");
wait(10);
messageappend("Mr. Albert Isaac...");
runscript("pw_showguilty");
runscript("pw_showmessagebox");
message("The accused will surrender\nto the court immediately,");
message("to be held pending trial at\na higher court within a\nmonth from today's date.");
runscript("pw_enablejudgeworthnormal");
message("That is all.\nThis court is adjourned!");
runscript("pw_hidemessagebox");
replacetexture(4805,"damionshard/CROWtAlbertIsaac.png");
runscript("pw_showcourtroomoverview");
loadandplaysfx("sfx-gallery.wav",0);
wait(144);
runscript("pw_hidecourtroomoverview");
runscript("pw_showgavelhit");
placefadescreen(60,"I");
wait(60);
setbgsize(0,0);
runscript("hidepwmenu");
placefadescreen(60,"O");
jumptoscript([pw_titlescript]);

//Game Start
[case1run]
setgenobjgraphic("pw_eviback",70011);
showgenobj("pw_eviback");
placefade("pw_eviback","genobj",20,"I");
runscript("ds_usedsaa");
createbutton("ds_start",1,1212);
placebutton("ds_start",53,243);
setbuttonarea("ds_start",53,243,150,26);
setbuttongraphic("ds_start",17211,17211);
setbuttonsizefromtexture("ds_start");
setbuttonaction("ds_start","onclick",<advance()>);
enablebutton("ds_start");
placeflip("ds_start","button",-40,1,90,0);
wait(10);
waitresponse();

loadandplaysfx("sfx-gavel.wav",0);
placeblink("ds_start","button",9,3,0);
wait(10);
placeflip("ds_start","button",40,1,0,90);
disablebutton("ds_start");
wait(50);

placefade("pw_bg","bg",40,"O");
runscript("pw_hidemessagebox");
wait(40);

//placefade("pw_eviback","genobj",40,"O");
//wait(40);
//placefadescreen(0,"O");

jumptoscript("case1start");

[case1start]
setvar([evidencenumber],8001);
runscript("addevidence");
setvar([evidencenumber],8002);
runscript("addevidence");
setvar([profilenumber],9000);
runscript("addprofile");
setvar([profilenumber],9001);
runscript("addprofile");
setvar([profilenumber],9002);
runscript("addprofile");
setvar([profilenumber],9003);
runscript("addprofile");
jumptoscript("case1_enterscene1");

[case1_enterscene1]
placefade("pw_eviback","genobj",0,"I");
runscript("pw_hidecourtrecordbtn");
runscript("pw_showadvarrowmenu");
runscript("pw_settypewritermsgbox");
runscript("pw_greenmessagebox");
runscript("pw_showmessagebox");
messageauto("August 10, 9:25 AM");
wait(10);
messageappendauto("\nDistrict Court");
wait(10);
messageappend("\nDefendant Lobby No. 1");
runscript("pw_showcourtrecordbtn");
runscript("pw_hidemessagebox");
runscript("pw_whitemessagebox");
runscript("pw_usepwbgcourthall");
placefade("pw_bg","bg",160,"I");
wait(160);
loadandplaymp3("music/04 - Courtroom Lobby - Diamond Symphony.mp3",0,"");
jumptoscript("case1_scene1");

[case1_scene1]
runscript("setlipsynctochar");
runscript("pw_enablealbertnormal");
placefade("pw_char","char",1,"O");
placefade("pw_char","char",40,"I");
wait(40);
runscript("pw_setnameboxtoalbert");
runscript("pw_showmessagebox");
message("Thanks for agreeing to take\nmy case, Mr. Shard.");
runscript("pw_enablealbertscreaming");
placeflash(5);
messageauto("I didn't murder anyone, I swear!");
runscript("pw_enablealbertsuspenseful");
messageappend("");

runscript("pw_setnameboxtodamion");
runscript("setlipsynctonoone");
message("Don't thank me yet, Mr. Isaac.\nThis is my first case.");

runscript("pw_enablealbertnormal");
runscript("pw_setnameboxtoalbert");
runscript("setlipsynctochar");
messageauto("Your first, you say?");
wait(10);
messageappend(" Well, I hope\nyou have beginner's luck.");

runscript("pw_setnameboxtodamion");
runscript("setlipsynctonoone");
message("I would hope so, but considering\nthat my opponent has never\nlost a case...");

runscript("pw_enablealbertbored");
runscript("pw_setnameboxtoalbert");
runscript("setlipsynctochar");
message("Oh...");
message("But your father is one of the best\nlawyers in the world, right?");

runscript("pw_setnameboxtodamion");
runscript("setlipsynctonoone");
messageauto("Well, he's a prosecuting attorney.");
wait(10);
messageappend("\nThere's a bit of a difference.");

runscript("pw_setnameboxtoalbert");
runscript("setlipsynctochar");
message("I just know what I saw\nabout him on TV.");
message("They say he’s never lost either,\nso that’s good, right?");
runscript("pw_enablealbertnormal");
message("I hope you're at least half as good\nas he is.");

loadandplaymp3("music/32 - Lord Shard - Powerful Footsteps.mp3",0,"");
wait(60);
runscript("pw_setnameboxtodamion");
runscript("setlipsynctonoone");
runscript("pw_bluemessagebox");
message("(Speak of the devil.)");

runscript("pw_hidemessagebox");
placefade("pw_char","char",40,"O");
wait(40);
runscript("pw_enableshardfrontnormal");
placefade("pw_char","char",40,"I");
runscript("setlipsynctochar");
wait(80);
runscript("pw_setnameboxtoshard");
runscript("pw_showmessagebox");
runscript("pw_whitemessagebox");
setvar([profilenumber],9004);
runscript("addprofile");
message("Ah, I see that you are making\npreparations for the trial, my son.");
message("I'm expecting a perfect victory for\nthe Shard family today.");
message("Do not disappoint me, young one.");

runscript("pw_setnameboxtodamion");
runscript("setlipsynctonoone");
message("Yes sir. I will not fail you.");

runscript("pw_enableshardfrontsmirk");
runscript("pw_setnameboxtoshard");
runscript("setlipsynctochar");
message("Excellent.");
runscript("pw_enableshardfrontnormal");
message("I would stay to watch, but I have\nsufficient confidence in your ability\nto know that is unnecessary.");
message("And besides, an important matter\nhas come up which requires my\nattention.");
message("I believe that it will soon be\ntime for the trial to begin.");
message("Make haste, and prove your worth\nas a Shard.");
runscript("pw_hidemessagebox");
placefade("pw_char","char",40,"O");
wait(40);
stopmp3(0);
placefade("pw_bg","bg",40,"O");
wait(40);

runscript("pw_setnameboxtodamion");
runscript("setlipsynctonoone");
runscript("pw_showmessagebox");
messageauto("My name is Damion Shard.");
wait(10);
runscript("pw_enabledamionnormal");
runscript("setlipsynctonoone");
runscript("pw_showattorneystand");
placefade("pw_char","char",40,"I");
wait(40);
messageappend("\nI am a defense attorney.");
message("My job is to defend people\nwho have been accused of crimes\nin court.");
message("Whether they are guilty or innocent,\nthey have a right to a fair trial.");
message("Of course, I'm hardly an expert on\nthe subject of court proceedings,\nas this will be my first real case.");
placefade("pw_char","char",40,"O");
wait(40);
runscript("pw_enableshardclench");
runscript("pw_showprosecutorstand");
placefade("pw_char","char",40,"I");
wait(40);
message("My father is the man known as\nthe \"Master of Prosecution,\"\nGerald Shard.");
message("As a prosecuting attorney,\nhis job is to make the case\nagainst the accused.");
message("It's essentially the opposite\nof my role.");
message("He also controls the\nmultinational conglomerate,\nthe Shard Corporation.");
message("I recently graduated from the Shard\nAcademy for the Legally Gifted,\nowned by the Shard Corporation.");
runscript("pw_enableshardconfident");
message("This is my first trial, handpicked\nfor me by Lord Shard. You might\nthink that would make things easy.");
messageauto("However, he chose a murder trial\nand pitted me against");
placefade("pw_char","char",10,"O");
wait(10);
runscript("pw_enablemesonnormal");
placefade("pw_char","char",10,"I");
setvar([profilenumber],9005);
runscript("addprofile");
messageappendauto(" Meson von\nVharnado,");
wait(10);
messageappend(" a prosecuting prodigy.");
message("The von Vharnado and Shard\nfamilies have been fierce rivals\nfor many years.");
message("My father will probably never\nforgive me if I lose.");
messageauto("I have to win this trial,\nnot just for Lord Shard,");
wait(10);
placefade("pw_char","char",20,"O");
wait(20);
runscript("pw_enablealbertnormal");
runscript("pw_hidecourtbench");
placefade("pw_char","char",20,"I");
wait(20);
messageappend("\nbut for my client as well.");
runscript("pw_enablealbertbored");
message("Albert Isaac, the defendant,\nhas been accused of a murder\nhe didn't commit.");
message("The absent-minded fellow just\nhappened to be in the wrong place\nat the wrong time.");
message("I'm sure the guy is innocent.\nBut how can I prove it?");
placefade("pw_char","char",40,"O");
wait(40);
runscript("setlipsynctochar");
jumptoscript("case1_courtoverview1");

[case1_courtoverview1]
runscript("pw_showadvarrowmenu");
runscript("pw_settypewritermsgbox");
runscript("pw_greenmessagebox");
runscript("pw_showmessagebox");
messageauto("August 10, 9:30 AM");
wait(10);
messageappendauto("\nDistrict Court");
wait(10);
messageappend("\nCourtroom No. 101");
runscript("pw_hidemessagebox");
runscript("pw_whitemessagebox");
placefade("pw_bg","bg",0,"I");
runscript("pw_showcourtroomoverview");
loadandplaysfx("sfx-gallery.wav",0);
wait(144);
runscript("pw_hidecourtroomoverview");
jumptoscript("case1_court1");

[case1_court1]
runscript("pw_showgavelhit");
runscript("pw_whitemessagebox");
runscript("pw_showjudgetable");
runscript("showpwchar");
runscript("pw_enablejudgeworthnormal");
placefade("pw_char","char",0,"I");
runscript("pw_setnameboxtojudge");
runscript("setlipsynctochar");
runscript("pw_showmessagebox");
loadandplaymp3("music/05 - Trial - Theme of Judgment.mp3",0,"");
message("The court is now in session for\nthe trial of Mr. Albert Isaac.");
runscript("pw_hidemessagebox");
placefade("pw_bg","bg",40,"O");
wait(40);
runscript("pw_setnameboxtodamion");
runscript("setlipsynctonoone");
runscript("pw_showmessagebox");
message("This is the judge who will\nbe presiding over my first trial.");
message("Contrary to popular belief, judges\nare not required to wear wigs.\nBeards are also acceptable.");
message("The judge's role is to\nconduct the proceedings and\nmaintain order in the court.");
message("However, he does not decide\nthe verdict in a criminal case\nsuch as this.");
runscript("pw_showcourtroomoverview");
placefade("pw_bg","bg",0,"I");
message("That is the responsibility of\nthe jury observing the trial.");
runscript("pw_hidecourtroomoverview");
runscript("showpwchar");
runscript("pw_showprosecutorstand");
runscript("pw_enablemesonnormal");
runscript("pw_setnameboxtomeson");
runscript("setlipsynctochar");
message("The prosecution is ready,\nYour Honor.");
runscript("pw_hidemessagebox");
placefade("pw_bg","bg",40,"O");
wait(40);
runscript("pw_setnameboxtodamion");
runscript("setlipsynctonoone");
runscript("pw_showmessagebox");
message("This is the prosecuting attorney,\nMeson von Vharnado.");
message("As he will make the case\nagainst my client, he will be\nmy adversary in today's trial.");
placefade("pw_bg","bg",0,"I");

runscript("pw_showjudgetable");
runscript("pw_enablejudgeworthnormal");
runscript("pw_setnameboxtojudge");
runscript("setlipsynctochar");
message("Thank you, Prosecutor\nvon Vharnado.");
message("Mr. Shard, is the defense ready\nto proceed?");

runscript("pw_showattorneystand");
runscript("pw_enabledamionnormal");
runscript("pw_setnameboxtodamion");
messageauto(".");
wait(5);
messageappendauto(".");
wait(5);
messageappend(".");
wait(5);
runscript("pw_enabledamionsheepish");
loadandplaysfx("sfx-explode.wav",0);
placeshake("pw_bg","bg",20,9,19);
placeshake("","msgbox",20,9,19);
placeshake("pwnamebox","genobj",20,9,19);
placeshake("pw_char","char",20,9,19);
messageauto("Oh, sorry!");
wait(10);
messageappend(" The defense is ready,\nYour Honor.");

runscript("pw_showjudgetable");
runscript("pw_enablejudgeworthmad");
runscript("pw_setnameboxtojudge");
message("Mr. Shard, you seem distracted.");
message("I understand that this is your\nfirst case as a defense attorney.");
message("Are you sure that you're ready to\ndefend your client in court, knowing\nthat his life is on the line?");

runscript("pw_hidemessagebox");
runscript("pw_showattorneystand");
runscript("pw_enabledamionnodding");
runscript("pw_showmessagebox");
runscript("pw_setnameboxtodamion");
message("Yes, Your Honor.");

runscript("pw_showjudgetable");
runscript("pw_enablejudgeworthnormal");
runscript("pw_setnameboxtojudge");
messageauto("Very well.");
wait(10);
messageappend(" But before we begin,\nI will ask a few simple questions\nto ascertain your readiness.");
message("Don't worry, it won't take long.");
message("Here is the first question.");
runscript("case1_question1");

runscript("pw_showattorneystand");
runscript("pw_enabledamionnormal");
runscript("pw_setnameboxtodamion");
message("The defendant is Albert Isaac,\nYour Honor.");

runscript("pw_hidemessagebox");
runscript("pw_showjudgetable");
runscript("pw_enablejudgeworthnod");
runscript("pw_showmessagebox");
runscript("pw_setnameboxtojudge");
runscript("pw_showmessagebox");
message("Correct.");
message("Here is the second question:\nWho is the victim in this case?");

runscript("pw_showattorneystand");
runscript("pw_enabledamionnormal");
runscript("pw_setnameboxtodamion");
message("The victim?");
runscript("pw_enabledamionsweating");
runscript("setlipsynctonoone");
runscript("pw_bluemessagebox");
loadandplaysfx("sfx-explode.wav",0);
placeshake("pw_bg","bg",20,9,19);
placeshake("","msgbox",20,9,19);
placeshake("pwnamebox","genobj",20,9,19);
placeshake("pw_char","char",20,9,19);
message("(Oh shoot, I completely forgot\nthe victim's name!)");
runscript("pw_whitemessagebox");
runscript("setlipsynctochar");

setvar([sld_targetcharanim],"pw_enablemesonpointing");
runscript("pw_slideattoneytoprosecutor");
runscript("pw_setnameboxtomeson");
message("Mr. Shard, you amateur.\nJust check the $c{colorpworange}Court Record$c{colorpwwhite}.");
message("If you've been keeping notes\non the case, it should have\nall of the information you need.");
message("Now, hurry up and answer\nthe question.");

runscript("pw_showjudgetable");
runscript("pw_enablejudgeworthnormal");
runscript("pw_setnameboxtojudge");
message("Mr. Shard, I need an answer.");
runscript("case1_question2");

runscript("pw_showattorneystand");
runscript("pw_enabledamionnormal");
runscript("pw_setnameboxtodamion");
message("The victim is Joe Quilla,\nYour Honor.");

runscript("pw_hidemessagebox");
runscript("pw_showjudgetable");
runscript("pw_enablejudgeworthnod");
runscript("pw_showmessagebox");
runscript("pw_setnameboxtojudge");
runscript("pw_showmessagebox");
message("Correct.");
message("You seem to be doing well,\nMr. Shard. I have just one more\nquestion.");
runscript("case1_question3");

runscript("pw_showattorneystand");
runscript("pw_enabledamionnormal");
runscript("pw_setnameboxtodamion");
message("Easy. The defense attorney is \nme, Damion Shard, Your Honor.");

runscript("pw_hidemessagebox");
runscript("pw_showjudgetable");
runscript("pw_enablejudgeworthnod");
runscript("pw_showmessagebox");
runscript("pw_setnameboxtojudge");
runscript("pw_showmessagebox");
message("Correct.");
stopmp3(0);
message("You've answered all of my\nquestions, Mr. Shard. I see no\nreason why we shouldn't proceed.");

runscript("pw_showprosecutorstand");
runscript("pw_enablemesonnormal");
runscript("pw_setnameboxtomeson");
messageauto("Finally.");
wait(10);
messageappend(" Mr. Shard, I must say, you\nare either an expert at stalling\ntactics or a bumbling idiot.");
message("I applaud your skill\nand/or ineptitude.");

runscript("pw_showjudgetable");
runscript("pw_enablejudgeworthnormal");
runscript("pw_setnameboxtojudge");
message("Well, now that that's out of the\nway, we can move on to the case\nat hand.");
message("Prosecutor von Vharnado, you may\nmake your $c{colorpworange}opening statement.");

runscript("pw_showprosecutorstand");
runscript("pw_enablemesonnormal");
runscript("pw_setnameboxtomeson");
message("Yes, Your Honor.");
loadandplaymp3("music/08 - Trick and Reasoning.mp3",0,"");

runscript("pw_hidemessagebox");
placefade("pw_bg","bg",40,"O");
wait(40);
runscript("pw_setnameboxtodamion");
runscript("setlipsynctonoone");
runscript("pw_showmessagebox");
message("At the beginning of the trial,\nthe prosecution makes its\n$c{colorpworange}opening statement.");
message("This is when the prosecutor\noutlines the accusations against\nthe defendant, my client.");
message("After the prosecution, the defense\nmakes its rebuttal with its own\nopening statement.");
runscript("pw_hidemessagebox");
placefade("pw_bg","bg",40,"I");
wait(40);
runscript("pw_setnameboxtomeson");
runscript("setlipsynctochar");
runscript("pw_showmessagebox");

runscript("pw_enablemesondocument");
message("The defendant, Mr. Albert Isaac,\nis accused of the crime of murder.");
messageauto("The victim:");
setvar([pw_evidtoshowinbox],91002);
runscript("pw_showflyingevidboxleft");
messageappend(" Joe Quilla, the owner\nof a local business called\nTaco Dell.");
runscript("pw_hideflyingevidboxleft");
message("On the night of the murder,\nthe defendant, Albert Isaac,\nentered the restaurant.");
message("It was late, and most of the\nemployees had gone home.\nQuilla was manning the register.");
message("Then, a few minutes after Mr. Isaac\nentered the restaurant,\nQuilla was found, dead.");
setvar([pw_evidtoshowinbox],81002);
runscript("pw_showflyingevidboxleft");
message("The murder weapon, a rolling pin,\nwas found lying next to the body.");
runscript("pw_hideflyingevidboxleft");

runscript("pw_showjudgetable");
runscript("pw_enablejudgeworthnormal");
runscript("pw_setnameboxtojudge");
message("The court accepts the rolling pin\ninto evidence.");
setvar([evidencenumber],8003);
runscript("addevidence");
setvar([pw_headeviaddmsg],"");
setvar([pw_taileviaddmsg]," was added\nto the Court Record.");
runscript("pw_startevidenceadd");
runscript("setlipsynctochar");

runscript("pw_showprosecutorstand");
runscript("pw_enablemesonnormal");
runscript("pw_setnameboxtomeson");
message("The defendant was attempting\nto flee the scene when he was\napprehended by the police.");
message("The witness who discovered the\nbody was a local hot dog vendor,\nRobert Wares.");
message("That decisive witness will\nbe appearing in court today\nto testify about the crime.");
stopmp3(0);
wait(60);

runscript("pw_showjudgetable");
runscript("pw_enablejudgeworthnormal");
runscript("pw_setnameboxtojudge");
message("Very good. A clear outlining\nof the facts.");
messageauto("If the prosecution has nothing\nelse to say...");
wait(10);
runscript("pw_raiseholditmeson");
runscript("pw_enablejudgeworthsurprised");
wait(60);

loadandplaymp3("music/17 - Suspense - A Dreadful Development.mp3",0,"");

runscript("pw_showprosecutorstand");
runscript("pw_enablemesonhandondesk");
runscript("pw_setnameboxtomeson");
message("Your Honor, before we proceed,\nI have one more thing to add.");
runscript("pw_enablemesonpointing");
message("Specifically, I wish to say\nsomething to Mr. Shard.");

setvar([sld_targetcharanim],"pw_enabledamionsheepish");
runscript("pw_slideprosecutortoattoney");
runscript("pw_setnameboxtodamion");
message("Who? Me?");

setvar([sld_targetcharanim],"pw_enablemesonhandondesk");
runscript("pw_slideattoneytoprosecutor");
runscript("pw_setnameboxtomeson");
message("Let me tell you this right now,\nShard.");
message("You have no chance of winning\nthis trial.");
runscript("pw_enablemesonpointing");
message("I believe this is your first case,\nis it not?");

setvar([sld_targetcharanim],"pw_enabledamionsheepish");
runscript("pw_slideprosecutortoattoney");
runscript("pw_setnameboxtodamion");
message("Um, yes, that's right.");

setvar([sld_targetcharanim],"pw_enablemesonhandondesk");
runscript("pw_slideattoneytoprosecutor");
runscript("pw_setnameboxtomeson");
message("This happens to be my fiftieth trial.");
message("And of the forty-nine trials\nI have prosecuted in, I have\nnot lost a single one.");
message("Today, your family's perfect record\nwill be marred by your inevitable\nfailure. Of this, I assure you.");
runscript("pw_enablemesonnormal");
stopmp3(0);
message("That is all, Your Honor.");

runscript("pw_showjudgetable");
runscript("pw_enablejudgeworthsurprised");
runscript("pw_setnameboxtojudge");
message("Well, I have no idea what\nthat was all about.");
runscript("pw_enablejudgeworthnormal");
message("Anyway, the defense may now\nproceed with its opening statement.");

runscript("pw_showattorneystand");
runscript("pw_enabledamionnormal");
runscript("pw_setnameboxtodamion");
runscript("pw_bluemessagebox");
message("(Now it's my turn.)");
loadandplaymp3("music/08 - Trick and Reasoning.mp3",0,"");
runscript("pw_whitemessagebox");
runscript("pw_enabledamiondocument");
message("Your Honor, ladies and gentlemen\nof the jury, my client had\nnothing to do with this crime.");
message("My client simply happened to be\neating in the restaurant at\nthe time of the incident.");
message("He witnessed the killing himself,\nbut when he attempted to report it,\nhe was the one accused.");
runscript("pw_enabledamiondeskslam");
message("The fact that his good deed\nhas been so heavily punished\nis a crime against justice.");
message("Hopefully, that wrongdoing\nwill be set right today\nin court.");
runscript("pw_enabledamionnormal");
message("That is all, Your Honor.");

runscript("pw_showjudgetable");
runscript("pw_enablejudgeworthsurprised");
runscript("pw_setnameboxtojudge");
message("Do you have any evidence you\nwould like to present in support\nof your claims, Mr. Shard?");

runscript("pw_showattorneystand");
runscript("pw_enabledamionsweating");
runscript("pw_setnameboxtodamion");
message("Well, not exactly...");

runscript("pw_showjudgetable");
runscript("pw_enablejudgeworthmad");
runscript("pw_setnameboxtojudge");
message("I see.");
message("In that case, the prosecution\nmay call its first witness.");

runscript("pw_showprosecutorstand");
runscript("pw_enablemesonhandondesk");
runscript("pw_setnameboxtomeson");
message("Then let us begin.");
runscript("pw_enablemesonnormal");
message("I call to the stand Mr. Sharpasa\nSpun, the detective in charge of\nthe investigation.");

setvar([sld_targetcharanim],"pw_enabledamionnormal");
runscript("pw_slideprosecutortoattoney");
runscript("pw_setnameboxtodamion");
runscript("pw_bluemessagebox");
runscript("setlipsynctonoone");
message("(What's with this guy?)");
runscript("pw_whitemessagebox");
runscript("setlipsynctochar");
stopmp3(0);
jumptoscript("case1_enterspun");

[case1_enterspun]
runscript("pw_hidemessagebox");
placefadescreen(120,"I");
wait(120);
runscript("hidepwchar");

runscript("showpwchar");
runscript("pw_showwitnessstand");
runscript("pw_enablespungrin");
placefadescreen(80,"O");
wait(80);
setvar([profilenumber],9006);
runscript("addprofile");

runscript("pw_hidemessagebox");
placefade("pw_bg","bg",40,"O");
wait(40);
runscript("pw_setnameboxtodamion");
runscript("setlipsynctonoone");
runscript("pw_showmessagebox");
message("This detective is the prosection's\nfirst $c{colorpworange}witness.");
message("Both the prosecution and defense\ncall $c{colorpworange}witnesses$c{colorpwwhite} to support\ntheir claims.");
message("Witnesses tell the court what\nthey know about the case.\nThis is called $c{colorpworange}testimony.");
message("Witnesses testify under oath,\nmeaning that deliberate lying\nconstitutes the crime of $c{colorpworange}perjury.");
message("Like with the opening statements,\nthe prosecution goes first,\ncalling all of its witnesses.");
message("This advantage is compensated by\n$csomething called the\n$c{colorpworange}burden of proof$c{colorpwwhite}.");
message("In other words, the prosecution\nhas to prove the defendant's guilt,\nor the defense wins.");
runscript("pw_hidemessagebox");
placefade("pw_bg","bg",40,"I");
wait(40);

loadandplaymp3("music/39 - Annoyance.mp3",0,"");
runscript("pw_showmessagebox");
runscript("pw_setnameboxtospun");
runscript("setlipsynctochar");
message("Hey, what do you know?\nIt's Meson!");
message("Good to see you again, bud!");

setvar([sld_targetcharanim],"pw_enablemesonnormal");
runscript("pw_slidewitnesstoprosecutor");
runscript("pw_setnameboxtomeson");
message("Yeah, I have no idea who\nyou are.");
message("Please just state your name\nand occupation for the court.");

setvar([sld_targetcharanim],"pw_enablespungrin");
runscript("pw_slideprosecutortowitness");
runscript("pw_setnameboxtospun");
runscript("pw_enablespunthumbsup");
message("The name's Spun, Sharpasa Spun.\nAce Detective.");
runscript("pw_enablespunhappy");
message("But you can just call me Sharpie.");

setvar([sld_targetcharanim],"pw_enablemesonnormal");
runscript("pw_slidewitnesstoprosecutor");
runscript("pw_setnameboxtomeson");
messageauto("Well, yes, Mr. Spun...");
wait(45);

setvar([sld_targetcharanim],"pw_enablespunsweating");
runscript("pw_slideprosecutortowitness");
runscript("pw_setnameboxtospun");
runscript("pw_enablespunmad");
loadandplaysfx("sfx-explode.wav",0);
placeshake("pw_bg","bg",20,9,19);
placeshake("","msgbox",20,9,19);
placeshake("pwnamebox","genobj",20,9,19);
placeshake("pw_char","char",20,9,19);
messageauto("No, no, no, you're saying\nit all wrong. It's pronounced\n\"spoon,\" not \"spun");
runscript("pw_enablespunsweating");
messageappend("!\"");

setvar([sld_targetcharanim],"pw_enablemesonnormal");
runscript("pw_slidewitnesstoprosecutor");
runscript("pw_setnameboxtomeson");
messageauto("All right then, I apologize.\nNow, Mr. \"Spoon,\" I...");
wait(45);

setvar([sld_targetcharanim],"pw_enablespunhappy");
runscript("pw_slideprosecutortowitness");
runscript("pw_setnameboxtospun");
message("Hey, Meson, remember the last time\nyou asked me that question?");
message("You know, please state your name\nand cooperation for the court, or\nwhatever?");

setvar([sld_targetcharanim],"pw_enablemesonnormal");
runscript("pw_slidewitnesstoprosecutor");
runscript("pw_setnameboxtomeson");
messageauto("I don't recall.");
wait(5);
messageappendauto(".");
wait(5);
messageappendauto(".");
wait(60);
loadandplaysfx("sfx-stab.wav",0);
runscript("pw_enablemesondamage");
messageauto("Urk!");
wait(30);
runscript("pw_enablemesonstrained");
messageappend(" You!");
stopmp3(0);
jumptoscript("case1_mesonflashback");

[case1_mesonflashback]
runscript("pw_hidemessagebox");
placefadescreenex(80,"I",255,255,255,255);
wait(80);
loadandplaysfx("sfx-wipe.wav",0);
runscript("pw_hidemessagebox");
runscript("pw_whitemessagebox");
placefade("pw_bg","bg",0,"I");
replacetexture(4802,"PW/CRO/CROPrPayne.png");
replacetexture(4803,"PW/CRO/CRODfEdgeworth.png");
replacetexture(4804,"PW/CRO/CROJudgeBro.png");
replacetexture(4805,"PW/CRO/CROWtKristoph.png");
runscript("pw_showcourtroomoverview");
placefadescreenex(80,"O",255,255,255,255);
wait(80);
loadandplaysfx("sfx-gallery.wav",0);
wait(144);
runscript("pw_hidecourtroomoverview");

setvar([evidencenumber],8001);
runscript("takeevidence");
setvar([evidencenumber],8002);
runscript("takeevidence");
setvar([evidencenumber],8003);
runscript("takeevidence");
setvar([profilenumber],9000);
runscript("takeprofile");
setvar([profilenumber],9001);
runscript("takeprofile");
setvar([profilenumber],9002);
runscript("takeprofile");
setvar([profilenumber],9003);
runscript("takeprofile");
setvar([profilenumber],9004);
runscript("takeprofile");
setvar([profilenumber],9005);
runscript("takeprofile");
setvar([profilenumber],9006);
runscript("takeprofile");

setvar([evidencenumber],8101);
runscript("addevidence");
setvar([evidencenumber],8102);
runscript("addevidence");
setvar([profilenumber],9100);
runscript("addprofile");
setvar([profilenumber],9101);
runscript("addprofile");
setvar([profilenumber],9102);
runscript("addprofile");
setvar([profilenumber],9103);
runscript("addprofile");
setvar([profilenumber],9104);
runscript("addprofile");

runscript("pw_showgavelhit");
runscript("pw_whitemessagebox");
runscript("pw_showjudgetable");
runscript("showpwchar");
runscript("pw_enableakshentnormal");
placefade("pw_char","char",0,"I");
runscript("pw_setnameboxtojudge");
runscript("setlipsynctochar");
runscript("pw_showmessagebox");
loadandplaymp3("music/42 - Regret - The Trial in the Past.mp3",0,"");
message("Thish court is now in sheshion\nfor the trial of Mishter\nRockshter Ganesh.");
messageauto("Honorable Judge Akshent");
runscript("pw_setnameboxtoakshent");
messageappend("\npreshiding.");
runscript("pw_showprosecutorstand");
runscript("pw_enablemobsonnormal");
runscript("pw_setnameboxtomobson");
message("The prosecution is ready,\nYour Honor.");

setvar([sld_targetcharanim],"pw_enablemesondanormal");
runscript("pw_slideprosecutortoattoney");
runscript("pw_setnameboxtomeson");
message("The defense is ready,\nYour Honor.");

placefadescreenex(80,"I",255,255,255,255);
wait(80);
runscript("pw_hidemessagebox");
loadandplaysfx("sfx-wipe.wav",0);
runscript("pw_enablemesondathinking");
placefadescreenex(80,"O",255,255,255,255);
wait(80);

runscript("pw_showmessagebox");
message("And now, Your Honor, I call\nMs. Totali Didet to the stand.");

setvar([sld_targetcharanim],"pw_enablenoexpression");
runscript("pw_slideattoneytowitness");
runscript("pw_hidemessagebox");
runscript("pw_enablespunnormal");
placefade("pw_char","char",80,"I");
wait(140);
runscript("pw_enablespunscratch");
runscript("pw_showmessagebox");
runscript("pw_setnameboxtospun");
message("Yo, guess this is the place, right?");

setvar([sld_targetcharanim],"pw_enablemesondanormal");
runscript("pw_slidewitnesstoattorney");
runscript("pw_setnameboxtomeson");
runscript("pw_bluemessagebox");
runscript("setlipsynctonoone");
message("(Who's this weirdo?\nIs this Totali Didet?)");
runscript("pw_whitemessagebox");
runscript("setlipsynctochar");
message("Um... sir, could you please\nstate your name and occupation\nfor the court?");

setvar([sld_targetcharanim],"pw_enablespunthumbsup");
runscript("pw_slideattoneytowitness");
runscript("pw_setnameboxtospun");
message("The name's Spun, Sharpasa Spun.\nAce Detective.");
runscript("pw_enablespunhappy");
message("But you can just call me Sharpie.");

setvar([sld_targetcharanim],"pw_enablemesondahandondesk");
runscript("pw_slidewitnesstoattorney");
runscript("pw_setnameboxtomeson");
message("Wait, you aren't Totali Didet,\nthe female cashier who witnessed\nthe crime?");

setvar([sld_targetcharanim],"pw_enablespunmad");
runscript("pw_slideattoneytowitness");
loadandplaysfx("sfx-explode.wav",0);
placeshake("pw_bg","bg",20,9,19);
placeshake("","msgbox",20,9,19);
placeshake("pwnamebox","genobj",20,9,19);
placeshake("pw_char","char",20,9,19);
runscript("pw_setnameboxtospun");
messageauto("Of course not, man!");
runscript("pw_enablespunsweating");
wait(10);
runscript("pw_enablespunmad");
messageappendauto("\nDo I look like a lady, dude");
runscript("pw_enablespunsweating");
messageappend("?");
runscript("pw_enablespunscratch");
message("Um, this is courtroom 123, right?");

setvar([sld_targetcharanim],"pw_enablemesondahandondesk");
runscript("pw_slidewitnesstoattorney");
runscript("pw_setnameboxtomeson");
messageauto("No, this is courtroom 451.");
wait(10);
runscript("pw_enablemesondapointing");
messageappend("\nCourtroom 123 is three halls down.");

runscript("pw_showjudgetable");
runscript("pw_enableakshentsurprised");
runscript("pw_setnameboxtoakshent");
message("Yesh, but if thish ishn't Mish Didet,\nthen where ish she?");

loadandplaymp3("music/08 - Trick and Reasoning.mp3",0,"");
wait(60);
runscript("pw_showprosecutorstand");
runscript("pw_enablemobsonnormal");
runscript("pw_setnameboxtomobson");
message("I think I have an answer,\nYour Honor!");

runscript("pw_showattorneystand");
runscript("pw_enablemesondathinking");
runscript("pw_bluemessagebox");
runscript("setlipsynctonoone");
runscript("pw_setnameboxtomeson");
message("(And Jerk Mobson goes and opens\nhis mouth.)");
runscript("pw_whitemessagebox");
runscript("setlipsynctochar");

runscript("pw_showprosecutorstand");
runscript("pw_enablemobsonnormal");
runscript("pw_setnameboxtomobson");
message("I bet that she was kidnapped\nby a minor who plays those\nPocketmon murder simulators!");
message("Or worse, this kidnapper may be a\nplayer of the evil Grand Theft Motto,\nand a non-Christian to boot!");

runscript("pw_showjudgetable");
runscript("pw_enableakshentsurprised");
runscript("pw_setnameboxtoakshent");
message("Oh my gosh! Thish kidnapper musht\nbe shtopped at any cosht!");

runscript("pw_showprosecutorstand");
runscript("pw_enablemobsonexplain");
runscript("pw_setnameboxtomobson");
message("Surely the defendant, Rockster\nGanes, is directly responsible for\nthis, Your Honor!");
stopmp3(0);

setvar([sld_targetcharanim],"pw_enablenoexpression");
runscript("pw_slideprosecutortowitness");
runscript("pw_hidemessagebox");
runscript("pw_enabletotalinormal");
placefade("pw_char","char",80,"I");
wait(80);
loadandplaymp3("music/36 - Mischief.mp3",0,"");
runscript("pw_setnameboxtototali");
runscript("pw_showmessagebox");
messageauto("Like,");
wait(10);
messageappend(" oh my gosh!");

setvar([sld_targetcharanim],"pw_enablemesondathinking");
runscript("pw_slidewitnesstoattorney");
runscript("pw_setnameboxtomeson");
messageauto("And thish musht be...");
wait(10);
messageappend("\nI mean, this must be Totali Didet.");
messageauto("Kidnapped, Mr. Mobson?");
wait(10);
messageappend("\nHardly.");

setvar([sld_targetcharanim],"pw_enabletotalinormal");
runscript("pw_slideattoneytowitness");
runscript("pw_setnameboxtototali");
message("Oh my gosh, they, like, totally\nmade me sit in the defendant's\nchair and everything.");
runscript("pw_enabletotaliteehee");
messageauto("They made me feel, like.");
wait(5);
messageappendauto(".");
wait(5);
messageappendauto(".");
wait(5);
messageappend("\na criminal!");
message("It was, like, so scary!");

runscript("pw_hidemessagebox");
placefade("pw_char","char",40,"O");
wait(40);
runscript("pw_enablespunscratch");
placefade("pw_char","char",40,"I");
wait(40);
runscript("pw_setnameboxtospun");
runscript("pw_showmessagebox");
message("Whoops. Guess we musta got a bit\nmixed up there.");
message("Why was I even here again?");
messageappend("\nI think I misfiled a tax return\nor something like that.");
runscript("pw_enablespunhappy");
message("Well, I gotta go.");
runscript("pw_enablespunthumbsup");
messageappendauto("\nSmell ya later!");
wait(60);

placefade("pw_char","char",40,"O");
wait(40);
runscript("pw_hidemessagebox");
runscript("pw_enabletotalinormal");
placefade("pw_char","char",40,"I");
runscript("setlipsynctochar");
runscript("pw_showmessagebox");
runscript("pw_setnameboxtototali");
message("Ugh, that guy was, like,\nso weird!");
runscript("pw_enabletotaliteehee");
message("Now people are gonna think\nI, like, hang around with weirdos!");
runscript("pw_enabletotalithinking");
message("This is even worse than going\nto the wrong courtroom and\nlooking like a criminal!");

setvar([sld_targetcharanim],"pw_enablemobsonnormal");
runscript("pw_slidewitnesstoprosecutor");
runscript("pw_setnameboxtomobson");
message("No doubt the defense distracted\nyou with violent BioStock ads to\ncause this confusion.");
message("Nice try, Mr. von Vharnado, but\nI have seen through your evil plan.");

setvar([sld_targetcharanim],"pw_enabletotalithinking");
runscript("pw_slideprosecutortowitness");
runscript("pw_setnameboxtototali");
message("I'm sure it's that evil lawyer's\nfault, too.");
message("I'm, like, usually real good\nwith directions.");
message("He totally must have given me\nthe wrong courtroom number!");

runscript("pw_showjudgetable");
runscript("pw_enableakshentmad");
runscript("pw_setnameboxtoakshent");
message("Mishter von Vharnado, I blame\nyoush for thish!");

runscript("pw_showattorneystand");
runscript("pw_enablemesondadeskslam");
runscript("pw_setnameboxtomeson");
message("This is ridiculous, Your Honor!");
runscript("pw_raiseobjectionmobson");

setvar([sld_targetcharanim],"pw_enablemobsonexplain");
runscript("pw_slideattoneytoprosecutor");
runscript("pw_setnameboxtomobson");
message("One more outburst like that,\nMr. von Vharnado, and I'll have\nyou removed from this court.");

runscript("pw_showjudgetable");
runscript("pw_enableakshentmad");
runscript("pw_setnameboxtoakshent");
message("Yesh, Mishter von Vharnado.");
message("One more outbursht like that,\nand I'll have yoush removed from\nthish court.");

runscript("pw_showattorneystand");
runscript("pw_enablemesondastrained");
runscript("pw_bluemessagebox");
runscript("setlipsynctonoone");
runscript("pw_setnameboxtomeson");
message("(Oh crud.)");
runscript("pw_whitemessagebox");
runscript("setlipsynctochar");

runscript("pw_hidemessagebox");
placefadescreenex(80,"I",255,255,255,255);
wait(80);
stopmp3(0);
loadandplaysfx("sfx-wipe.wav",0);
runscript("pw_showprosecutorstand");
runscript("pw_enablemesonstrained");
placefadescreenex(80,"O",255,255,255,255);
wait(80);

setvar([evidencenumber],8101);
runscript("takeevidence");
setvar([evidencenumber],8102);
runscript("takeevidence");
setvar([profilenumber],9100);
runscript("takeprofile");
setvar([profilenumber],9101);
runscript("takeprofile");
setvar([profilenumber],9102);
runscript("takeprofile");
setvar([profilenumber],9103);
runscript("takeprofile");
setvar([profilenumber],9104);
runscript("takeprofile");

setvar([evidencenumber],8001);
runscript("addevidence");
setvar([evidencenumber],8002);
runscript("addevidence");
setvar([evidencenumber],8003);
runscript("addevidence");
setvar([profilenumber],9000);
runscript("addprofile");
setvar([profilenumber],9001);
runscript("addprofile");
setvar([profilenumber],9002);
runscript("addprofile");
setvar([profilenumber],9003);
runscript("addprofile");
setvar([profilenumber],9004);
runscript("addprofile");
setvar([profilenumber],9005);
runscript("addprofile");
setvar([profilenumber],9006);
runscript("addprofile");

setvar([sld_targetcharanim],"pw_enablespunhappy");
runscript("pw_slideprosecutortowitness");
runscript("pw_setnameboxtospun");
runscript("pw_showmessagebox");
message("Good times, huh?");
runscript("pw_hidemessagebox");
jumptoscript("case1_testimony1");

[case1_testimony1]
placefadescreen(1,"O");
runscript("showpwchar");
runscript("pw_showwitnessstand");
runscript("pw_enablespunthink");
runscript("pw_orangemessagebox");
runscript("pw_showtestimony");
runscript("setlipsynctonoone");
setvar([pw_crossmessage],"\n     -- The Scene of the Crime --");
runscript("pw_showwitnesstestimony");
runscript("setlipsynctochar");
runscript("pw_setnameboxtospun");
runscript("pw_hidemessagebox");
loadandplaymp3("music/06 - Cross Examination - Mystery.mp3",0,"");
runscript("pw_whitemessagebox");
runscript("pw_showmessagebox");
message("All right, so I was making my\nrounds with my cop buds\nwhen we got this call.");
message("Someone had reported a murder\nat the local Taco Dell, so we\nwent to check it out.");
runscript("pw_enablespunnormal");
message("The police apprehended the\nsuspect, and I went down to the\ncrime scene to gather evidence.");
message("The murder weapon,\nfound near the body,\nwas a heavy rolling pin.");
message("The defendant's fingerprints were\non both of its handles.");
runscript("pw_enablespunscratch");
message("A taco was also found on the\nscene, which we believe was the\nkiller's motive for murder.");
runscript("pw_hidemessagebox");
runscript("pw_hidetestimony");
placefadescreen(120,"I");
wait(120);
stopmp3(0);
runscript("pw_enablejudgeworththink");
runscript("pw_showjudgetable");
placefadescreen(120,"O");
wait(150);
runscript("pw_enablejudgeworthsurprised");
runscript("pw_setnameboxtojudge");
runscript("pw_showmessagebox");
runscript("setlipsynctochar");
message("My, that does sound incriminating.");

runscript("pw_showprosecutorstand");
runscript("pw_enablemesondocument");
runscript("pw_setnameboxtomeson");
message("Both the murder weapon and taco\nwere recovered from the crime\nscene.");
runscript("pw_enablemesonnormal");
message("The prosecution submits the\ntaco into evidence.");

runscript("pw_showjudgetable");
runscript("pw_enablejudgeworthnormal");
runscript("pw_setnameboxtojudge");
message("The court accepts this taco\ninto evidence.");

setvar([evidencenumber],8004);
runscript("addevidence");
setvar([pw_headeviaddmsg],"");
setvar([pw_taileviaddmsg]," was added\nto the Court Record.");
runscript("pw_startevidenceadd");

runscript("pw_enablejudgeworthsurprised");
runscript("pw_setnameboxtojudge");
runscript("setlipsynctochar");
message("Hm... Just looking at this\npiece of evidence is making\nmy mouth water.");

runscript("pw_raiseobjectionmeson");
runscript("pw_showprosecutorstand");
runscript("pw_enablemesonobjection");
runscript("pw_setnameboxtomeson");
message("Your Honor, please refrain\nfrom eating the evidence!");
message("Besides, that taco is\nseveral days old!");

runscript("pw_showjudgetable");
runscript("pw_enablejudgeworthmad");
runscript("pw_setnameboxtojudge");
message("Not to worry, Mr. von Vharnado.");
runscript("pw_enablejudgeworthnormal");
messageauto("I am quite capable of showing\nrestraint in the face of a");
runscript("pw_enablejudgeworthsurprised");
wait(10);
messageappendauto(" steaming,");
wait(10);
messageappendauto("\ndelicious,");
wait(10);
messageappend(" mouth-watering taco!");

runscript("pw_showprosecutorstand");
runscript("pw_enablemesonhandondesk");
runscript("pw_setnameboxtomeson");
message("That week-old taco is most\ncertainly not \"steaming,\"\nYour Honor.");

runscript("pw_showjudgetable");
runscript("pw_enablejudgeworthmad");
runscript("pw_setnameboxtojudge");
message("Will you forget about the taco\nalready, Mr. von Vharnado?");
message("Mr. Shard, please proceed with\nyour $c{colorpworange}cross-examination$c{colorpwwhite}.");

runscript("pw_showattorneystand");
runscript("pw_enabledamionnormal");
runscript("pw_setnameboxtodamion");
message("Cross-examination, Your Honor?");
runscript("pw_enabledamionsweating");
runscript("pw_bluemessagebox");
runscript("setlipsynctonoone");
message("(What the heck is that!?)");
runscript("pw_whitemessagebox");
runscript("setlipsynctochar");

setvar([sld_targetcharanim],"pw_enablemesonthinking");
runscript("pw_slideattoneytoprosecutor");
runscript("pw_setnameboxtomeson");
message("What a novice! Do you not even\nknow what a cross-examination is?");
runscript("pw_hidemessagebox");

loadandplaymp3("music/31 - Annette Shard - Hidden Power.mp3",0,"");
runscript("pw_showcocouncilstand");
runscript("pw_enableannettebench");
placefade("pw_char","char",40,"I");
wait(80);
runscript("pw_setnameboxtoannette");
runscript("pw_showmessagebox");
message("Oh, looks like I got here just\nin time.");
message("Sorry I'm late, Mr. Damion.");

runscript("pw_setnameboxtodamion");
runscript("setlipsynctonoone");
message("Uh... who are you?");

runscript("setlipsynctochar");
runscript("pw_setnameboxtoannette");
message("Oh, I'm your cousin, Annette Shard.");
setvar([profilenumber],9007);
runscript("addprofile");
message("Lord Shard instructed me to come\nand make sure your first trial\nwent well.");

runscript("pw_setnameboxtodamion");
runscript("setlipsynctonoone");
message("You're a member of one of the\nbranch families, then?");

runscript("setlipsynctochar");
runscript("pw_setnameboxtoannette");
message("Yes, sir. Branch Luminix,\nif you must know.");
message("Once again, very sorry,\nbut I kind of assumed you were\na prosecutor.");
runscript("pw_enableannettebugh");
message("I couldn't find any records\nof a Prosecutor Shard in trial\ntoday, hence the confusion.");

runscript("pw_setnameboxtodamion");
runscript("setlipsynctonoone");
runscript("pw_enableannettebench");
message("Oh, yeah, I guess I am\nthe only Shard to become\na defense attorney.");
message("Other Shards generally become\nprosecutors, huh?");

runscript("setlipsynctochar");
runscript("pw_setnameboxtoannette");
message("You're not mad that I'm late,\nthen?");
runscript("pw_enableannettebthinking");
message("Old Shard would probably explode\nif I was late to one of his trials.");

runscript("pw_setnameboxtodamion");
runscript("setlipsynctonoone");
message("I wasn't expecting you,\nso why would I be upset\nthat you're late?");
message("Anyway, did you have\nsomething to tell me?");
message("I'm kind of in the middle\nof a trial here, if you\nhaven't noticed.");

stopmp3(0);
runscript("setlipsynctochar");
runscript("pw_setnameboxtoannette");
runscript("pw_enableannettebench");
message("Oh yeah. Right, right.");

loadandplaymp3("music/08 - Trick and Reasoning.mp3",0,"");

message("See, now that the witness has\ntestified, you have to do something\ncalled a cross-examination.");
runscript("pw_enableannettebthinking");
message("They taught you this in\nlaw school, right?");

runscript("pw_setnameboxtodamion");
runscript("setlipsynctonoone");
message("Well, I'm not sure if the Shard\nAcademy for the Legally Gifted\nqualifies as a \"law school,\" per se.");
message("In order to crank out 18 year old\ngenius attorneys year after year,\nit had to shorten its curriculum.");
message("So no, I don't know what a\ncross-examination is.");

runscript("setlipsynctochar");
runscript("pw_setnameboxtoannette");
runscript("pw_enableannettebench");
message("All right, let me explain.");
message("The cross-examination is where you\npick the witness's statements apart\nand expose their inconsistencies.");
runscript("pw_enableannettebthinking");
message("The first thing a defense attorney\nwill try is pressing suspicious\nstatements for more information.");
message("If they find a weak spot, they'll\npresent evidence that contradicts\nthe statement in question.");
message("Although, you're unlikely to find\nany contradictions in the\ndetective's testimony.");
runscript("pw_enableannettebench");
message("What you'll want to do, then, is\npress all of the information\nyou can out of this witness.");

stopmp3(0);
runscript("pw_setnameboxtodamion");
runscript("setlipsynctonoone");
message("All right, thanks a bunch.");

runscript("setlipsynctochar");
runscript("pw_setnameboxtoannette");
message("No problem.");

runscript("pw_showprosecutorstand");
runscript("pw_enablemesonconfident");
runscript("pw_setnameboxtomeson");
message("And then, Your Honor, I said\nto him, \"That statement contradicts\nthe evidence!\"");
messageauto("And so he.");
wait(5);
messageappendauto(".");
wait(5);
messageappendauto(".");
wait(10);
runscript("pw_enablemesonthinking");
messageappend("\nOh, are we ready to start?");

runscript("pw_showjudgetable");
runscript("pw_enablejudgeworthsurprised");
runscript("pw_setnameboxtojudge");
message("Mr. Shard, please save me!\nProsecutor von Vharnado is telling\ntrial stories, and he won't shut up!");
runscript("pw_enablejudgeworthmad");
message("I mean, er, if you are done confering\nwith your aide, proceed with your\ncross-examination, Mr. Shard.");

runscript("pw_showattorneystand");
runscript("pw_enabledamionnormal");
runscript("pw_setnameboxtodamion");
message("Yes, Your Honor.");

runscript("pw_showattorneystand");
runscript("pw_enabledamionnormal");
runscript("pw_setnameboxtodamion");
message("The defense will now begin its\ncross-examination.");
placefadescreen(50,"I");
runscript("pw_hidemessagebox");
wait(50);
jumptoscript("case1_crossexamination1");

[case1_crossexamination1]
definevarglobal([c1ce1pressed1],"int");
definevarglobal([c1ce1pressed2],"int");
definevarglobal([c1ce1pressed3],"int");
definevarglobal([c1ce1pressed4],"int");
definevarglobal([c1ce1pressed5],"int");
definevarglobal([c1ce1pressed6],"int");
definevarglobal([c1ce1allpressed],"int");
setvar([c1ce1pressed1],0);
setvar([c1ce1pressed2],0);
setvar([c1ce1pressed3],0);
setvar([c1ce1pressed4],0);
setvar([c1ce1pressed5],0);
setvar([c1ce1pressed6],0);
setvar([c1ce1allpressed],0);

setvar([pw_crossexamattorneycode],36);
setvar([pw_crossexamprosecutorcode],30);
setvar([pw_examno],1);
setvar([pw_maxstatements],6);
runscript("pw_showwitnessstand");
runscript("pw_enablespunnormal");
runscript("showpwchar");
placefadescreen(1,"O");
runscript("pw_orangemessagebox");
setvar([pw_crossmessage],"\n     -- The Scene of the Crime --");
runscript("pw_showcrossexaminationvs");
runscript("pw_showlifebar");
loadandplaymp3("music/06 - Cross Examination - Mystery.mp3",0,"");
runscript("hidepwmenu");
runscript("begincrossexamination");
runscript("pw_showmessagebox");
jumptoscript("case1_exam1s1");

[case1_exam1s1]
setvar([pw_crossmessage],"All right, so I was making my\nrounds with my cop buds\nwhen we got this call.");
setvar([pw_witness],"pw_enablespunthink");
runscript("pw_setnameboxtospun");
runscript("pw_crossstatement");

[case1_exam1s2]
setvar([pw_crossmessage],"Someone had reported a murder\nat the local Taco Dell, so we\nwent to check it out.");
setvar([pw_witness],"pw_enablespunthink");
runscript("pw_setnameboxtospun");
runscript("pw_crossstatement");

[case1_exam1s3]
setvar([pw_crossmessage],"The police apprehended the\nsuspect, and I went down to the\ncrime scene to gather evidence.");
setvar([pw_witness],"pw_enablespunnormal");
runscript("pw_setnameboxtospun");
runscript("pw_crossstatement");

[case1_exam1s4]
setvar([pw_crossmessage],"The murder weapon,\nfound near the body,\nwas a heavy rolling pin.");
setvar([pw_witness],"pw_enablespunnormal");
runscript("pw_setnameboxtospun");
runscript("pw_crossstatement");

[case1_exam1s5]
setvar([pw_crossmessage],"The defendant's fingerprints were\non both of its handles.");
setvar([pw_witness],"pw_enablespunnormal");
runscript("pw_setnameboxtospun");
runscript("pw_crossstatement");

[case1_exam1s6]
setvar([pw_crossmessage],"A taco was also found on the\nscene, which we believe was the\nkiller's motive for murder.");
setvar([pw_witness],"pw_enablespunscratch");
runscript("pw_setnameboxtospun");
runscript("pw_crossstatement");

[case1_exam1loop]
runscript("hidepwmenu");
runscript("pw_showadvarrowmenu");
runscript("pw_whitemessagebox");
runscript("pw_showcocouncilstand");
runscript("pw_enableannettebstrict");
runscript("pw_setnameboxtoannette");
message("I think there’s more to\nthat testimony.");
message("If you press him on all of\nthe facts, you should have all\nof the information you need.");
runscript("pw_enableannettebugh");
message("Unfortunately, it doesn't look\nlike this testimony contains\nany obvious contradictions.");
runscript("pw_enableannettebstrict");
message("Just make sure you press him\non everything while you have\nthe chance.");
message("You may find information that\nwill be valuable during later\ntestimonies.");
runscript("pw_hidemessagebox");
placefadescreen(25,"I");
wait(25);
runscript("pw_showwitnessstand");
runscript("pw_enablespunthink");
placefadescreen(25,"O");
wait(25);
runscript("hidepwmenu");
runscript("showpwcrossexamination");
runscript("pw_showwitnessstand");
runscript("pw_showmessagebox");
runscript("resumepwcrossexamsimple");
jumptoscript("case1_exam1s1");

[case1_exam1allpressed]
runscript("pw_hidemessagebox");
runscript("pw_hidetestimony");
placefadescreen(120,"I");
wait(120);
stopmp3(0);
runscript("pw_hidelifebar");
runscript("pw_enablejudgeworththink");
runscript("pw_showjudgetable");
placefadescreen(120,"O");
wait(150);
runscript("pw_enablejudgeworthnormal");
runscript("pw_setnameboxtojudge");
runscript("pw_showmessagebox");
runscript("setlipsynctochar");
message("Well, I believe that we have\ngleaned enough information\nfrom this witness.");

runscript("pw_showprosecutorstand");
runscript("pw_enablemesonnormal");
runscript("pw_setnameboxtomeson");
message("I agree, Your Honor.");
message("Mr. Shard, are you quite\ndone with this tiresome\ncross-examination?");

runscript("pw_showattorneystand");
runscript("pw_enabledamionsweating");
runscript("pw_setnameboxtodamion");
runscript("setlipsynctonoone");
runscript("pw_bluemessagebox");
message("(It looks like I'm out of questions,\nand I'm not any closer to proving\nmy client's innocence.)");
runscript("setlipsynctochar");
runscript("pw_whitemessagebox");
message("No further questions, Your Honor.");

runscript("pw_showprosecutorstand");
runscript("pw_enablemesonthinking");
runscript("pw_setnameboxtomeson");
message("As you can see, the evidence in\nthis case paints a clear picture of\nguilt for the defendant.");
message("The murder weapon bears his\nfingerprints, and a possible motive\nhas been outlined.");
runscript("pw_enablemesonnormal");
message("Now, Your Honor, I call\nthe defendant, Albert Isaac,\nto the stand.");

runscript("pw_showattorneystand");
runscript("pw_enabledamionthinking");
runscript("pw_setnameboxtodamion");
runscript("setlipsynctonoone");
runscript("pw_bluemessagebox");
message("(Uh oh. He's up to something.)");
runscript("setlipsynctochar");
runscript("pw_whitemessagebox");

runscript("pw_showcocouncilstand");
runscript("pw_enableannettebstrict");
runscript("pw_setnameboxtoannette");
message("I've got a bad feeling\nabout this.");

jumptoscript("case1_enterisaac");

[case1_enterisaac]
runscript("pw_hidemessagebox");
placefadescreen(120,"I");
wait(120);
runscript("pw_showwitnessstand");
runscript("pw_enablealbertnormal");
placefadescreen(80,"O");
wait(80);
loadandplaymp3("music/05 - Trial - Theme of Judgment.mp3",0,"");
runscript("pw_showmessagebox");
runscript("pw_setnameboxtoalbert");
runscript("setlipsynctonoone");
message("...");
runscript("setlipsynctochar");

setvar([sld_targetcharanim],"pw_enablemesonnormal");
runscript("pw_slidewitnesstoprosecutor");
runscript("pw_setnameboxtomeson");
message("Sir, please state your name\nand occupation for the court.");

setvar([sld_targetcharanim],"pw_enablealbertnormal");
runscript("pw_slideprosecutortowitness");
runscript("pw_setnameboxtoalbert");
message("Um, my name is Albert Isaac.\nI am an inventor.");

setvar([sld_targetcharanim],"pw_enablemesonnormal");
runscript("pw_slidewitnesstoprosecutor");
runscript("pw_setnameboxtomeson");
message("I see.");
message("Mr. Isaac, you say that\nyou are an inventor.");
message("And yet to be honest,\nI have never heard of you.");
runscript("pw_enablemesonobjection");
message("Could you tell the court\nwhat it is exactly that\nyou have created?");
message("Can you name even one thing?");

setvar([sld_targetcharanim],"pw_enablealbertnormal");
runscript("pw_slideprosecutortowitness");
runscript("pw_setnameboxtoalbert");
message("Well, I have invented a number\nof useful devices.");
message("For example, I invented a\nrefrigerator that saves power by\nshutting off when it is closed.");
runscript("pw_enablealbertbored");
message("But for some reason, the idea\nnever really caught on.");
message("The only problem I ever noticed\nwith it was that my milk always\nsmelled kind of funny.");

setvar([sld_targetcharanim],"pw_enablemesonnormal");
runscript("pw_slidewitnesstoprosecutor");
runscript("pw_setnameboxtomeson");
message("Okay...");
runscript("pw_enablemesonthinking");
message("Mr. Isaac, did you go\nto Taco Dell on the day of\nthe murder?");

setvar([sld_targetcharanim],"pw_enablealbertnormal");
runscript("pw_slideprosecutortowitness");
runscript("pw_setnameboxtoalbert");
message("Yes, I did.");
runscript("pw_enablealbertscreaming");
placeflash(5);
messageauto("But I swear that I didn't\nkill that cashier guy!");
messageappend("");
runscript("pw_enablealbertscreaming");
placeflash(5);
messageauto("It was someone else!");
placeflash(5);
messageappend("\nI saw him!");

setvar([sld_targetcharanim],"pw_enablemesonthinking");
runscript("pw_slidewitnesstoprosecutor");
runscript("pw_setnameboxtomeson");
message("Yes, of course you would\nsay something like that.");

setvar([sld_targetcharanim],"pw_enablealbertscreaming");
runscript("pw_slideprosecutortowitness");
runscript("pw_setnameboxtoalbert");
placeflash(5);
messageauto("No, for real!");
runscript("pw_enablealbertsuspenseful");
messageappend("");
runscript("pw_enablealbertnormal");
message("I had plenty of money for a taco.\nThis whole taco motive thing\nis just ridiculous.");
runscript("pw_hidemessagebox");

runscript("pw_showjudgetable");
runscript("pw_enablejudgeworthsurprised");
runscript("pw_setnameboxtojudge");
setvar([pw_evidtoshowinbox],81003);
runscript("pw_showflyingevidboxleft");
loadandplaysfx("sfx-munch1.wav",0);
runscript("pw_showmessagebox");
messageauto("Munch, ");
loadandplaysfx("sfx-munch1.wav",0);
messageappendauto("munch, ");
loadandplaysfx("sfx-munch1.wav",0);
messageappend("munch...");
message("I don't know, Mr. Isaac.\nI might commit murder for a\ntaco this good!");
loadandplaysfx("sfx-munch1.wav",0);
messageauto("Munch, ");
loadandplaysfx("sfx-munch1.wav",0);
messageappendauto("munch, ");
loadandplaysfx("sfx-munch1.wav",0);
messageappend("munch...");
runscript("pw_hideflyingevidboxleft");

runscript("pw_enablealbertdesperate");
runscript("pw_showwitnessstand");
runscript("pw_setnameboxtoalbert");
placeshake("pw_bg","bg",20,9,19);
placeshake("","msgbox",20,9,19);
placeshake("pwnamebox","genobj",20,9,19);
placeshake("pw_char","char",20,9,19);
message("What? No, don't listen to\nhim! Those tacos aren't worth\nkilling for!");
message("Please just let me explain!");
runscript("pw_enablealbertnormal");
message("All right, I went to Taco Dell\nto get out of the rain. It was\nreally pouring down that day.");
message("Then I purchased a taco\nand sat down at a table.");
message("As that detective pointed out,\nI had almost enough change for\nanother.");
runscript("pw_enablealbertbored");
message("A few minutes later, some weirdo\nwalked in, wearing a huge overcoat\nand a hat that covered his face.");
message("He talked to that Quilla guy\nfor a minute while he ordered.");
runscript("pw_enablealbertdesperate");
message("Then, all of a sudden, he\nwalloped the fellow over the\nhead!");
message("I freaked and ran right out\nof the store, looking for\na phone so I could call the police.");

runscript("pw_raiseholditmeson");
setvar([sld_targetcharanim],"pw_enablemesonnormal");
runscript("pw_slidewitnesstoprosecutor");
runscript("pw_setnameboxtomeson");
runscript("pw_enablemesonobjection");
message("So a \"mysterious stranger\" just\nshowed up and killed him? Why\ndo I find that hard to believe?");
message("And besides, there was a phone\nthere at the restaurant. Why\ndidn't you use that one?");

setvar([sld_targetcharanim],"pw_enablealbertbored");
runscript("pw_slideprosecutortowitness");
runscript("pw_setnameboxtoalbert");
message("Well, I didn't know there\nwas one there.");
message("Besides, the murderer was still\nthere at the restaurant. I had\nto get out of there.");

setvar([sld_targetcharanim],"pw_enablemesonhandondesk");
runscript("pw_slidewitnesstoprosecutor");
runscript("pw_setnameboxtomeson");
message("So, this mysterious character\nthat you describe, whose\nappearance you failed to notice,");
message("entered the restaurant while you\nhappened to be there and killed the\nowner with a cooking implement.");
stopmp3(0);
message("Well, then if that's your story,\nthen you've missed a very\nimportant point.");

setvar([sld_targetcharanim],"pw_enablealbertcrying");
runscript("pw_slideprosecutortowitness");
runscript("pw_setnameboxtoalbert");
message("What? No, I didn't.\nThat's exactly what happened.");
runscript("pw_hidemessagebox");

setvar([sld_targetcharanim],"pw_enablemesondocument");
runscript("pw_slidewitnesstoprosecutor");
setvar([pw_evidtoshowinbox],81002);
runscript("pw_showflyingevidboxleft");
runscript("pw_showmessagebox");
runscript("pw_setnameboxtomeson");
message("Mr. Isaac, have you ever\nseen this rolling pin?");

setvar([sld_targetcharanim],"pw_enablealbertbored");
runscript("pw_slideprosecutortowitness");
runscript("pw_setnameboxtoalbert");
message("That looks more like a\nknife to me, actually.");

setvar([sld_targetcharanim],"pw_enablemesondocument");
runscript("pw_slidewitnesstoprosecutor");
runscript("pw_setnameboxtomeson");
runscript("pw_enablemesonhandondesk");
message("It's a rolling pin.");
runscript("pw_hideflyingevidboxleft");
loadandplaymp3("music/23 - Genius Prosecutor.mp3",0,"");
message("Mr. Isaac, much of this alibi rides\non the assertion that you were\nin no way involved in this crime.");
message("However, that is quite impossible.");
runscript("pw_enablemesonobjection");
message("Because this rolling pin has your\nfingerprints on it!");

setvar([sld_targetcharanim],"pw_enablealbertcrying");
runscript("pw_slideprosecutortowitness");
runscript("pw_setnameboxtoalbert");
message("What? That's just not\npossible!");

swapobjecttexturecoordinates("bg","pw_bg","X");
runscript("pw_showspeedlines");
runscript("pw_hidecourtbench");
runscript("pw_enablemesonzoom");
runscript("pw_setnameboxtomeson");
loadandplaysfx("sfx-objection.wav",0);
messageauto("You're lying,");
wait(10);
messageappend(" Mr. Isaac!");
runscript("pw_raiseobjectiondamion");

swapobjecttexturecoordinates("bg","pw_bg","");
runscript("pw_showattorneystand");
runscript("pw_enabledamionpointing");
message("My client is telling the truth,\nMr. von Vharnado!");
message("So what if he can't explain\nwhy his fingerprints are on the\nmurder weapon?");
message("You can't just discount his\nentire testimony because of that!");

runscript("pw_showcocouncilstand");
runscript("pw_enableannettebugh");
runscript("pw_setnameboxtoannette");
message("Well, actually...");

runscript("pw_showprosecutorstand");
runscript("pw_enablemesonhandondesk");
runscript("pw_setnameboxtomeson");
message("You fool! Evidence is\neverything in a court of law!");
runscript("pw_enablemesonobjection");
message("And if the evidence indicates\nthe defendant's guilt, then the\ndefendant is guilty!");

runscript("pw_hidemessagebox");
runscript("pw_showgaveltriplehit");

runscript("showpwchar");
runscript("pw_showjudgetable");
runscript("pw_enablejudgeworthmad");
runscript("pw_setnameboxtojudge");
runscript("pw_showmessagebox");
message("Order! Order in the court!");
message("Mr. von Vharnado, is there\na point to this dramatic\nperformance?");

runscript("pw_showprosecutorstand");
runscript("pw_enablemesonhandondesk");
runscript("pw_setnameboxtomeson");
message("Yes, there is, Your Honor.");
runscript("pw_enablemesonconfident");
message("I have a witness who can\nprove that the defendant is lying.");

runscript("pw_showjudgetable");
runscript("pw_enablejudgeworthsurprised");
runscript("pw_setnameboxtojudge");
stopmp3(0);
messageauto("Oh.");
wait(10);
runscript("pw_enablejudgeworthnormal");
messageappend(" Well, that simplifies\nthings.");
message("Mr. von Vharnado, please call\nthis decisive witness.");

runscript("pw_showprosecutorstand");
runscript("pw_enablemesonnormal");
runscript("pw_setnameboxtomeson");
message("Yes, Your Honor.");
message("The prosecution calls Robert\nWares to the stand.");
jumptoscript("case1_enterwares");

[case1_enterwares]
runscript("pw_hidemessagebox");
placefadescreen(120,"I");
wait(120);
runscript("pw_showwitnessstand");
runscript("pw_enablewaresnormal");
placefadescreen(80,"O");
wait(80);
loadandplaymp3("music/35 - Idiocy.mp3",0,"");
wait(60);
runscript("pw_showmessagebox");
runscript("pw_setnameboxtowares");
message("Ho ho ho!");

setvar([sld_targetcharanim],"pw_enablemesonnormal");
runscript("pw_slidewitnesstoprosecutor");
runscript("pw_setnameboxtomeson");
message("Witness, please state your\nname and occupation for\nthe court.");

setvar([sld_targetcharanim],"pw_enablewaresnormal");
setvar([profilenumber],9008);
runscript("addprofile");
runscript("pw_slideprosecutortowitness");
runscript("pw_setnameboxtowares");
message("My name be Robert Wares,\nthe greatest hot dog vendor\nin all the land.");
runscript("pw_enablewaresside");
message("Wares be descended from a\nlong line of fast food salesmen,\ndatin' back hundreds of years.");

runscript("pw_showjudgetable");
runscript("pw_enablejudgeworthsurprised");
runscript("pw_setnameboxtojudge");
message("...");

runscript("pw_showprosecutorstand");
runscript("pw_enablemesonthinking");
runscript("pw_setnameboxtomeson");
message("Is something wrong, Your Honor?");

runscript("pw_showjudgetable");
runscript("pw_enablejudgeworthsurprised");
runscript("pw_setnameboxtojudge");
messageauto("Um...");
wait(10);
messageappend(" Why is the witness\nreferring to himself in\nthe third person?");

runscript("pw_showwitnessstand");
runscript("pw_enablewareseat");
runscript("pw_setnameboxtowares");
message("Wares don't know watchoo\ntalkin' bout!");

setvar([sld_targetcharanim],"pw_enablemesonthinking");
runscript("pw_slidewitnesstoprosecutor");
runscript("pw_setnameboxtomeson");
message("Yes, I checked his file\nfor an explanation.");
runscript("pw_enablemesondocument");
message("It appears that his high school\nEnglish teacher had to skip the\nlesson on first-person pronouns.");
message("This was due to budget cuts\nresulting from an act which was\npassed about 15 years ago.");
message("This act was repealed by President\nJomama, but the children of America\nhad already felt its effects.");
message("Thanks to the \"Wait for the Crippled\nKid\" Act, our society has intelligent,\neducated people like Mr. Wares.");

setvar([sld_targetcharanim],"pw_enablewaresside");
runscript("pw_slideprosecutortowitness");
runscript("pw_hidemessagebox");
wait(60);
runscript("pw_showmessagebox");
runscript("pw_enablewaresmad");
runscript("pw_setnameboxtowares");
message("Watchoo talkin' bout, Willis!?");
message("Are you tryin' to confuse Wares\nwit' yo fancy talkin'?");
runscript("pw_enablewareseat");
message("Why you use big words like\n\"act\" and \"people\" and \"Wares?\"");

setvar([sld_targetcharanim],"pw_enabledamionsweating");
runscript("pw_slidewitnesstoattorney");
runscript("pw_setnameboxtodamion");
runscript("pw_bluemessagebox");
runscript("setlipsynctonoone");
message("(He used much bigger words\nthan those!)");
runscript("pw_whitemessagebox");
runscript("setlipsynctochar");

runscript("pw_showprosecutorstand");
runscript("pw_enablemesonthinking");
runscript("pw_setnameboxtomeson");
message("That last one is your name,\nMr. Wares.");

setvar([sld_targetcharanim],"pw_enablewaresnormal");
runscript("pw_slideprosecutortowitness");
runscript("pw_setnameboxtowares");
message("Oh.");
runscript("pw_enablewaresside");
message("Wares kind of forgot\nabout that.");
stopmp3(0);

setvar([sld_targetcharanim],"pw_enablemesonhandondesk");
runscript("pw_slidewitnesstoprosecutor");
runscript("pw_setnameboxtomeson");
message("Well, enough of this entertaining\ndiversion.");
message("Mr. Wares, please testify to\nthe court about the homicide\nyou witnessed.");

setvar([sld_targetcharanim],"pw_enablewaresside");
runscript("pw_slideprosecutortowitness");
runscript("pw_setnameboxtowares");
message("All right, then...");
runscript("pw_enablewareseat");
message("Wait, what the heck's\na bonafide?");

setvar([sld_targetcharanim],"pw_enablemesonhandondesk");
runscript("pw_slidewitnesstoprosecutor");
runscript("pw_setnameboxtomeson");
messageauto("That's \"homicide.\"");
wait(10);
messageappend("\nIt means \"murder.\"");

runscript("pw_showjudgetable");
runscript("pw_enablejudgeworthsurprised");
runscript("pw_setnameboxtojudge");
messageauto("Really?");
wait(20);
runscript("pw_enablejudgeworthnormal");
messageappend(" Well, I guess you\nlearn something new every day.");

runscript("pw_showattorneystand");
runscript("pw_enabledamionsweating");
runscript("pw_setnameboxtodamion");
runscript("pw_bluemessagebox");
runscript("setlipsynctonoone");
message("(I'll pretend I didn't\njust hear that.)");
runscript("pw_whitemessagebox");
runscript("setlipsynctochar");

runscript("pw_showwitnessstand");
runscript("pw_enablewaresnormal");
runscript("pw_setnameboxtowares");
message("Oh, Wares sees what you're doin'.");
runscript("pw_enablewareseat");
message("You're trying to use big words to\nconfuse Wares and make him look\nlike a bad witness!");

setvar([sld_targetcharanim],"pw_enablemesonthinking");
runscript("pw_slidewitnesstoprosecutor");
runscript("pw_setnameboxtomeson");
message("Mr. Wares, you're $c{colorpworange}my$c{colorpwwhite} witness.");

runscript("pw_showwitnessstand");
runscript("pw_enablewaresside");
runscript("pw_setnameboxtowares");
messageauto("Oh.");
wait(20);
runscript("pw_enablewaresmad");
messageappend(" Well, um, Wares\nthink it's time for him\nto testify now.");

setvar([sld_targetcharanim],"pw_enablemesonthinking");
runscript("pw_slidewitnesstoprosecutor");
runscript("pw_setnameboxtomeson");
message("Please do. Your blabbering\nis starting to give me\na splitting headache.");
runscript("pw_hidemessagebox");
jumptoscript("case1_testimony2");

[case1_testimony2]
placefadescreen(1,"O");
runscript("showpwchar");
runscript("pw_showwitnessstand");
runscript("pw_enablewaresnormal");
runscript("pw_orangemessagebox");
runscript("pw_showtestimony");
runscript("setlipsynctonoone");
setvar([pw_crossmessage],"\n      -- Wares Saw Everything --");
runscript("pw_showwitnesstestimony");
runscript("setlipsynctochar");
runscript("pw_setnameboxtowares");
runscript("pw_hidemessagebox");
loadandplaymp3("music/06 - Cross Examination - Mystery.mp3",0,"");
runscript("pw_whitemessagebox");
runscript("pw_showmessagebox");
message("At six P.M. that day, Wares was\ncleanin' up his hot dog stand,\npacking away for the night.");
message("That's when Wares heard a\nloud \"bang\" followed by a\ngut-wrenching scream.");
message("Wares was terrified, but overcame\nhis fear and ran to the Taco Dell,\nwhere the noise had come from.");
message("When Wares go there, he found\nthat man, Albert Isaac, standing\nover Quilla's dead form.");
messageauto("He was holding a blood-stained\nrolling pin:");
wait(20);
runscript("pw_enablewareseat");
messageappend(" the murder weapon!");
runscript("pw_hidemessagebox");
runscript("pw_hidetestimony");
placefadescreen(120,"I");
wait(120);
stopmp3(0);
runscript("pw_enablemesonnormal");
runscript("pw_showprosecutorstand");
placefadescreen(120,"O");
wait(150);
runscript("pw_enablemesonpointing");
runscript("pw_setnameboxtomeson");
runscript("pw_showmessagebox");
runscript("setlipsynctochar");
message("There you go. Eyewitness testimony\nproving the defendant's guilt.");
message("If you were unsure about a verdict\nbefore, Your Honor, I'm sure that\nyour doubt has been dispelled.");

runscript("pw_raiseobjectiondamion");
setvar([sld_targetcharanim],"pw_enabledamionpointing");
runscript("pw_slideprosecutortoattoney");
runscript("pw_setnameboxtodamion");
message("The defense still has to\ncross-examine the witness,\nMr. von Vharnado.");
runscript("pw_enabledamionconfident");
message("I wouldn't be so quick to\ndeclare victory just yet,\nif I were you.");

runscript("pw_showcocouncilstand");
runscript("pw_enableannettebench");
runscript("pw_setnameboxtoannette");
loadandplaymp3("music/11 - Unveil the Truth.mp3",0,"");
message("This is it, Mr. Damion. Now you\njust have to find the $c{colorpworange}lies$c{colorpwwhite} in that\ntestimony and expose them.");
message("All you need to do is find evidence\nthat contradicts one of his\nstatements, and $c{colorpworange}present$c{colorpwwhite} it.");
message("If you can accomplish that,\nthen that entire testimony\nwill come crashing down.");
runscript("pw_enableannettebstrict");
message("When someone weaves a fabric\nof lies, all you have to do\nis find a thread and pull it.");
message("Then you'll unravel the deceptions,\nand find the truth hidden\nbehind them.");
runscript("pw_setnameboxtodamion");
runscript("setlipsynctonoone");
message("All right, I'll try.");
runscript("setlipsynctochar");
placefadescreen(50,"I");
runscript("pw_hidemessagebox");
wait(50);
stopmp3(0);
jumptoscript("case1_crossexamination2");

[case1_crossexamination2]
definevarglobal([c1ce2amend],"int");
setvar([c1ce2amend],0);
setvar([pw_crossexamattorneycode],36);
setvar([pw_crossexamprosecutorcode],30);
setvar([pw_rightevi],8003);
setvar([pw_examno],2);
setvar([pw_contradiction],3);
setvar([pw_maxstatements],6);
runscript("pw_showwitnessstand");
runscript("pw_enablewaresnormal");
runscript("showpwchar");
placefadescreen(1,"O");
runscript("pw_orangemessagebox");
setvar([pw_crossmessage],"\n      -- Wares Saw Everything --");
runscript("pw_showcrossexaminationvs");
runscript("pw_showlifebar");
loadandplaymp3("music/06 - Cross Examination - Mystery.mp3",0,"");
runscript("hidepwmenu");
runscript("begincrossexamination");
runscript("pw_showmessagebox");
jumptoscript("case1_exam2s1");

[case1_exam2s1]
setvar([pw_crossmessage],"At six P.M. that day, Wares was\ncleanin' up his hot dog stand,\npacking away for the night.");
setvar([pw_witness],"pw_enablewaresnormal");
runscript("pw_setnameboxtowares");
runscript("pw_crossstatement");

[case1_exam2s2]
setvar([pwcrossexamcurrentstage],2);
setvar([pw_crossmessage],"That's when Wares heard a\nloud \"bang\" followed by a\ngut-wrenching scream.");
setvar([pw_witness],"pw_enablewaresnormal");
runscript("pw_setnameboxtowares");
runscript("pw_crossstatement");

[case1_exam2s3]
if(<compare([c1ce2amend],"equal",1)>,<>,<jumptoscript("case1_exam2s3skip")>);
setvar([pwcrossexamcurrentstage],3);
setvar([pw_crossmessage],"The noise was a gunshot!\nWares is sure of it.");
setvar([pw_witness],"pw_enablewaresmad");
runscript("pw_setnameboxtowares");
runscript("pw_crossstatement");

[case1_exam2s3skip]
if(<compare([pw_qresponse],"equal",3)>,<jumptoscript("case1_exam2s2")>,<jumptoscript("case1_exam2s4")>);

[case1_exam2s4]
setvar([pwcrossexamcurrentstage],4);
setvar([pw_crossmessage],"Wares was terrified, but overcame\nhis fear and ran to the Taco Dell,\nwhere the noise had come from.");
setvar([pw_witness],"pw_enablewaresnormal");
runscript("pw_setnameboxtowares");
runscript("pw_crossstatement");

[case1_exam2s5]
setvar([pw_crossmessage],"When Wares go there, he found\nthat man, Albert Isaac, standing\nover Quilla's dead form.");
setvar([pw_witness],"pw_enablewaresnormal");
runscript("pw_setnameboxtowares");
runscript("pw_crossstatement");

[case1_exam2s6]
setvar([pw_crossmessage],"He was holding a blood-stained\nrolling pin: the murder weapon!");
setvar([pw_witness],"pw_enablewareseat");
runscript("pw_setnameboxtowares");
runscript("pw_crossstatement");

[case1_exam2loop]
runscript("hidepwmenu");
runscript("pw_showadvarrowmenu");
runscript("pw_whitemessagebox");
runscript("pw_showcocouncilstand");
runscript("pw_enableannettebstrict");
runscript("pw_showmessagebox");
runscript("pw_setnameboxtoannette");
message("Do you see what doesn't\nadd up about this old guy's\ntestimony?");
runscript("pw_setnameboxtodamion");
runscript("setlipsynctonoone");
message("I think so.");
runscript("pw_setnameboxtoannette");
runscript("setlipsynctochar");
message("Once you figure it out,\npresent the evidence on the\nstatement it contradicts.");
runscript("pw_enableannettebugh");
message("Just be careful not to\npresent the wrong evidence,\nor you may be penalized.");
runscript("pw_enableannettebstrict");
message("Too many penalties in court\ncould mean a guilty verdict for\nyour client, so be careful.");
runscript("pw_hidemessagebox");
placefadescreen(25,"I");
wait(25);
runscript("pw_showwitnessstand");
runscript("pw_enablewaresnormal");
placefadescreen(25,"O");
wait(25);
runscript("hidepwmenu");
runscript("showpwcrossexamination");
runscript("pw_showwitnessstand");
runscript("pw_showmessagebox");
runscript("resumepwcrossexamsimple");
jumptoscript("case1_exam2s1");

[case1_truth2]
stopmp3(0);
runscript("pw_raiseobjectiondamion");
runscript("hidepwmenu");
runscript("pw_hidelifebar");
setvar([sld_targetcharanim],"pw_enabledamionpointing");
runscript("pw_whitemessagebox");
runscript("pw_showadvarrowmenu");
runscript("pw_slidewitnesstoattorney");
runscript("pw_setnameboxtodamion");
runscript("pw_hidemessagebox");
runscript("pw_showmessagebox");
runscript("setlipsynctochar");
message("Mr. Wares, did you just say\nthat you heard a gunshot at the\nscene of the crime?");

setvar([sld_targetcharanim],"pw_enablewaresmad");
runscript("pw_slideattoneytowitness");
runscript("pw_setnameboxtowares");
message("Well, duh, dummy!");
message("You havin' trouble understandin'\nwhat Wares be sayin'?");

runscript("pw_showjudgetable");
runscript("pw_enablejudgeworthmad");
runscript("pw_setnameboxtojudge");
message("Are you trying to mock the witness\nbecause of his manner of speaking,\nMr. Shard?");
message("I warn you, such behavior is\nintolerable in a court of law.");

runscript("pw_showattorneystand");
runscript("pw_enabledamionsheepish");
runscript("pw_setnameboxtodamion");
message("Oh no, Your Honor.\nThat isn't my intention.");
runscript("pw_enabledamiondocument");
messageauto("If you want to see my point,\njust look at the murder weapon.");
setvar([pw_evidtoshowinbox],81002);
runscript("pw_showflyingevidboxright");
messageappend("");

runscript("pw_showjudgetable");
runscript("pw_enablejudgeworthsurprised");
runscript("pw_setnameboxtojudge");
message("Well, that certainly is a\nnice rolling pin.");
runscript("pw_enablejudgeworthnormal");
message("Except for the bloodstains,\nof course.");
runscript("pw_hideflyingevidboxright");

runscript("pw_showprosecutorstand");
runscript("pw_enablemesonpointing");
runscript("pw_setnameboxtomeson");
message("What are you driving at, Shard?");

setvar([sld_targetcharanim],"pw_enabledamiondocument");
runscript("pw_slideprosecutortoattoney");
runscript("pw_setnameboxtodamion");
message("Tell me, Your Honor, if the\nmurder weapon was a rolling pin...");
runscript("pw_enabledamiondeskslam");
loadandplaymp3("music/07 - Damion Shard - Objection!.mp3",0,"");
runscript("pw_hidecourtbench");
runscript("pw_showspeedlines");
runscript("pw_enabledamionzoom");
loadandplaysfx("sfx-objection.wav",0);
message("Then how could Mr. Wares have\nheard a gunshot?");

runscript("pw_showwitnessstand");
runscript("pw_enablewaresmad");
runscript("pw_setnameboxtowares");
message("What!?");

setvar([sld_targetcharanim],"pw_enablemesonnormal");
runscript("pw_slidewitnesstoprosecutor");
runscript("pw_setnameboxtomeson");
runscript("pw_hidemessagebox");
loadandplaysfx("sfx-stab.wav",0);
runscript("pw_enablemesondamage2");
runscript("pw_showmessagebox");
message("Inconceivable!");
message("There can't have been\na flaw I overlooked!");

setvar([sld_targetcharanim],"pw_enabledamiondocument");
runscript("pw_slideprosecutortoattoney");
runscript("pw_setnameboxtodamion");
message("Well, there was, Mr. von Vharnado.");
runscript("pw_enabledamiondeskslam");
message("And it begs the question:");
runscript("pw_enabledamionpointing");
message("If there wasn't a gunshot, then\nwhat drew Robert Wares to the\nrestaurant that day?");

runscript("pw_raiseobjectionmeson");
setvar([sld_targetcharanim],"pw_enablemesonhandondesk");
runscript("pw_slideattoneytoprosecutor");
runscript("pw_setnameboxtomeson");
message("He must have heard the struggle\noccuring in the restaurant,\nobviously.");

runscript("pw_raiseobjectiondamion");
setvar([sld_targetcharanim],"pw_enabledamionpointing");
runscript("pw_slideprosecutortoattoney");
runscript("pw_setnameboxtodamion");
message("I find it quite unlikely that the\nwitness would be able to hear such\na noise from across the street.");
message("Especially because, as Mr. Isaac\ninformed us during his testimony,\nit was raining that day!");
message("Short of a gunshot, I doubt it\nwould be possible to hear anything\noccuring in the restaurant!");

setvar([sld_targetcharanim],"pw_enablewaresnormal");
runscript("pw_slideattoneytowitness");
runscript("pw_setnameboxtowares");
messageauto("N...");
wait(60);
runscript("pw_enablewareseat");
loadandplaysfx("sfx-explode.wav",0);
placeshake("pw_bg","bg",20,9,19);
placeshake("","msgbox",20,9,19);
placeshake("pwnamebox","genobj",20,9,19);
placeshake("pw_char","char",20,9,19);
messageappend(" No!!!");

runscript("pw_raiseobjectionmeson");
setvar([sld_targetcharanim],"pw_enablemesonpointing");
runscript("pw_slidewitnesstoprosecutor");
runscript("pw_setnameboxtomeson");
message("I strongly doubt that you can prove\nthat the witness couldn't hear the\nsound of the struggle.");
runscript("pw_enablemesondocument");
message("Let me remind you that evidence\nis everything in a court of law,\nMr. Shard.");

runscript("pw_raiseobjectiondamion");
setvar([sld_targetcharanim],"pw_enabledamionconfident");
runscript("pw_slideprosecutortoattoney");
runscript("pw_setnameboxtodamion");
message("Ah, but I'm afraid the evidence\nis now on my side, Mr. von\nVharnado.");
message("Mr. Wares lied about the reason\nthat he stumbled upon the\ncrime scene.");
runscript("pw_enabledamiondocument");
message("Therefore, we can only assume\nthat he must have been trying\nto hide something.");

runscript("pw_showjudgetable");
runscript("pw_enablejudgeworthnormal");
runscript("pw_setnameboxtojudge");
message("Well, what could this man\npossibly be trying to conceal\nfrom the court?");

stopmp3(0);
runscript("pw_showattorneystand");
runscript("pw_enabledamiondocument");
runscript("pw_setnameboxtodamion");
message("There is only one explanation.");

runscript("case1_question5");

stopmp3(0);
runscript("pw_showattorneystand");
runscript("pw_enabledamionpointing");
runscript("pw_setnameboxtodamion");
loadandplaymp3("music/13 - Pursuit - Shattered Deception.mp3",0,"");
message("The witness must already have\nbeen at the crime scene,\nYour Honor!");

setvar([sld_targetcharanim],"pw_enablewaresmad");
runscript("pw_slideattoneytowitness");
runscript("pw_setnameboxtowares");
loadandplaysfx("sfx-dramapound.wav",0);
messageauto("No!!!");
runscript("pw_enablewareseat");
messageappend("");

setvar([sld_targetcharanim],"pw_enabledamionpointing");
runscript("pw_slidewitnesstoattorney");
runscript("pw_setnameboxtodamion");
message("And there's only one reason\nfor that to be the case.");
message("The defense believes that\nit is possible...");
runscript("pw_enabledamiondeskslam");
runscript("pw_enabledamionzoom");
runscript("pw_showspeedlines");
runscript("pw_hidecourtbench");
loadandplaysfx("sfx-objection.wav",0);
message("...that Robert Wares is the\ntrue murderer!");

runscript("pw_raiseobjectionmeson");
runscript("pw_showprosecutorstand");
runscript("pw_enablemesonobjection");
runscript("pw_setnameboxtomeson");
message("Impossible!");
message("You can't possibly provide the\nproof to indict this witness for\nthe crime of murder!");

setvar([sld_targetcharanim],"pw_enablewaresmad");
runscript("pw_slideprosecutortowitness");
runscript("pw_setnameboxtowares");
message("Yeah! You can't pin this all\non me, you little whippersnapper!");

setvar([sld_targetcharanim],"pw_enabledamionconfident");
runscript("pw_slidewitnesstoattorney");
runscript("pw_setnameboxtodamion");
message("Oh, but I think I can.");
message("You see, if Mr. Wares really was\nthe murderer, that would explain\nwhy he was at the crime scene.");
message("And it also happens to match\nAlbert Isaac's story.");
runscript("pw_enabledamiondeskslam");
message("Of course, he must have left\nhis mark on the crime scene\nsomehow.");
runscript("pw_enabledamionpointing");
message("Or more accurately,\nhis fingerprints!");

setvar([sld_targetcharanim],"pw_enablemesonpointing");
runscript("pw_slideattoneytoprosecutor");
runscript("pw_setnameboxtomeson");
message("What are you...");

runscript("pw_hidecourtbench");
runscript("pw_showspeedlines");
runscript("pw_enabledamionzoom");
runscript("pw_setnameboxtodamion");
loadandplaysfx("sfx-objection.wav",0);
message("Your Honor, the defense requests\nthat the weapon be retested for\nthis witness's fingerprints!");

runscript("pw_showjudgetable");
runscript("pw_enablejudgeworthsurprised");
runscript("pw_setnameboxtojudge");
message("Of course! There were other sets\nof fingerprints on the weapon\nbesides the defendant's.");
runscript("pw_enablejudgeworthnormal");
message("These were verified as belonging to\nemployees of the restaurant, but\nconsidering the circumstances...");
runscript("pw_enablejudgeworthmad");
message("Bailiff, have the murder weapon\nchecked for fingerprints again!");
message("This time, check for the witness's\nfingerprints, which were taken\nbefore he testified.");
message("It is crucial that we know if\nthe fingerprints of Robert Wares\nare on this rolling pin!");

runscript("pw_raiseobjectionmeson");
runscript("pw_showprosecutorstand");
runscript("pw_enablemesonhandondesk");
runscript("pw_setnameboxtomeson");
message("Surely you don't believe the\ndefense's claim, Your Honor.");
message("We have no reason to doubt the\nwork of the forensic scientists who\ncarefully examine our evidence.");
runscript("pw_enablemesonpointing");
message("It would be a terrible waste of their\ntime and effort to arbitrarily retest\nevidence for new fingerprints.");
runscript("pw_enablemesonobjection");
message("Besides, this is all just unsupported\nconjecture made up by a shoddy\ndefense attorney on the fly.");
message("You can't possibly believe that\nhis story is a plausible explanation\nof the facts.");

stopmp3(0);
runscript("pw_showjudgetable");
runscript("pw_enablejudgeworthnormal");
runscript("pw_setnameboxtojudge");
message("And yet Mr. Shard has raised\na possibility.");
message("Unless there is insufficient\nroom for doubt remaining in a case,\nI cannot declare a verdict.");
message("I will call a twenty-minute recess\nwhile the evidence is retested.");
runscript("pw_enablejudgeworthmad");
message("Court is adjourned.");

runscript("pw_showgavelhit");
placefadescreen(60,"I");
wait(60);
jumptoscript("case1_recess1");

[case1_recess1]
placefade("pw_bg","bg",0,"O");
placefadescreen(0,"O");
runscript("pw_showadvarrowmenu");
runscript("pw_settypewritermsgbox");
runscript("pw_greenmessagebox");
runscript("pw_showmessagebox");
messageauto("August 10, 11:00 AM");
wait(10);
messageappendauto("\nDistrict Court");
wait(10);
messageappend("\nDefendant Lobby No. 1");
runscript("pw_hidemessagebox");
runscript("pw_whitemessagebox");
runscript("pw_usepwbgcourthall");
placefade("pw_bg","bg",160,"I");
wait(160);
loadandplaymp3("music/04 - Courtroom Lobby - Diamond Symphony.mp3",0,"");

runscript("pw_setnameboxtodamion");
runscript("pw_showmessagebox");
message("Phew. That was a close one.");
message("That prosecutor almost had the\nwhole trial wrapped up.");
message("If I hadn't found that one\ncontradiction, the trial could have\nended right then and there.");

runscript("setlipsynctochar");
runscript("pw_enablealbertnormal");
placefade("pw_char","char",40,"I");
wait(40);
runscript("pw_setnameboxtoalbert");
runscript("pw_showmessagebox");
message("So, did you do it?");
message("Am I off the hook yet?");

runscript("setlipsynctonoone");
runscript("pw_setnameboxtodamion");
message("Sorry, Mr. Isaac, but\nI don't think so.");
message("The evidence is being retested\nas we speak.");
runscript("pw_enablealbertbored");
message("Our whole case is riding on the\npossibility that the witness's\nfingerprints are on that rolling pin.");
message("But even if his prints are there,\nit doesn't mean we'll be guranteed\nvictory.");
message("It just proves that our explanation\nis plausible. It's a step, but\nwe'll need more than just that.");

placefade("pw_char","char",40,"O");
wait(40);
runscript("pw_enableannettenormal");
placefade("pw_char","char",40,"I");
wait(40);
message("Oh, it's you again.");

runscript("pw_setnameboxtoannette");
runscript("setlipsynctochar");
message("Damion, I retrieved some records\nfrom the evidence file for\nthis case.");
runscript("pw_enableannetteconfident");
message("It looks like these were records\nfrom the $c{colorpworange}cash register$c{colorpwwhite} on the\nday of the crime.");

runscript("setlipsynctonoone");
runscript("pw_setnameboxtodamion");
message("Records? On a cash register?");

runscript("pw_setnameboxtoannette");
runscript("setlipsynctochar");
message("Well you see, the cash registers in\nfast food restaurants aren't just\nfor calculating totals.");
message("They're connected to computers to\nelectronically track sales.");
runscript("pw_enableannettethinking");
message("It says that $c{colorpworange}two purchases$c{colorpwwhite}\nwere made around 6:00 P.M., right\nbefore the murder occured.");
message("I sure hope this can help our case.");

setvar([evidencenumber],8005);
runscript("addevidence");
setvar([pw_headeviaddmsg],"");
setvar([pw_taileviaddmsg]," was added\nto the Court Record.");
runscript("pw_startevidenceadd");

runscript("setlipsynctonoone");
runscript("pw_setnameboxtodamion");
message("Maybe this is just the break\nthat we need.");

stopmp3(0);

runscript("pw_setnameboxtoannette");
runscript("setlipsynctochar");
runscript("pw_enableannettethinking");
messageauto("Oh, by the way, I also picked up\na brochure from Taco Dell while I\nwas, er...");
wait(10);
runscript("pw_enableannetteconfident");
messageappend(" taking a lunch break.");

runscript("pw_enableannettethinking");
runscript("setlipsynctonoone");
runscript("pw_setnameboxtodamion");
message("Well, I guess that can't hurt either.");

setvar([evidencenumber],8006);
runscript("addevidence");
setvar([pw_headeviaddmsg],"");
setvar([pw_taileviaddmsg]," was added\nto the Court Record.");
runscript("pw_startevidenceadd");
runscript("pw_hidemessagebox");

loadandplaymp3("music/32 - Lord Shard - Powerful Footsteps.mp3",0,"");
wait(120);
runscript("pw_enableannettedown");
placefade("pw_char","char",40,"O");
wait(40);
runscript("pw_enableshardfrontnormal");
placefade("pw_char","char",40,"I");
runscript("setlipsynctochar");
wait(80);
runscript("pw_setnameboxtoshard");
runscript("pw_showmessagebox");
message("Your performance in today's trial\nwas rather... unorthodox,\nDamion.");

runscript("setlipsynctonoone");
runscript("pw_setnameboxtodamion");
message("Lord Shard! I thought you had\npressing business to attend to.");

runscript("pw_setnameboxtoshard");
runscript("setlipsynctochar");
message("It didn't take long. Merely a\nroutine business matter.");
message("An assistant kept me informed\nabout the proceedings of the trial.");
message("With your wild theatrics, the\nhonorable court of law appeared to\nbe a stage for a drama.");
message("Making such bold accusations\nwithout definite proof can be a\ndangerous and unnecessary risk.");
message("Keep in mind that a blunder on\nyour part could easily soil the\nShard name.");

runscript("setlipsynctonoone");
runscript("pw_setnameboxtodamion");
message("Sir, I apologize. It was not\nmy intention to put the Shard\nfamily's honor in jeopardy.");

runscript("pw_setnameboxtoshard");
runscript("pw_showmessagebox");
runscript("setlipsynctochar");
message("Still, I suppose that your methods\ncarried some merit.");
runscript("pw_enableshardfrontsmirk");
message("It amused me to see that foolish\nprosecutor's flimsy case cleaved in\ntwo with simple conjecture.");
runscript("pw_enableshardfrontnormal");
message("However, your leap of faith required\nyou to take a concerning gamble\non the outcome of the evidence.");
message("Do not become complacent! The\nprosecutor may be a fool, but he is\nfar from stupid.");
message("I suspect that he may be\nplanning something. Remain\nvigilant at all times.");
message("And don't make me look\nfoolish, boy.");

placefade("pw_char","char",80,"O");
wait(80);
runscript("pw_hidemessagebox");
stopmp3(0);
runscript("pw_enableannettedown");
placefade("pw_char","char",40,"I");
wait(40);

runscript("setlipsynctonoone");
runscript("pw_setnameboxtodamion");
runscript("pw_showmessagebox");
message("Well, he certainly seems to be\nin a good mood today.");

runscript("pw_enableannetteshock");
loadandplaysfx("sfx-smack.wav",0);
placeflash(5);
runscript("setlipsynctochar");
runscript("pw_setnameboxtoannette");
message("What are you talking about?");
runscript("pw_enableannettemad");
message("He's the grumpiest, angriest\nbulldog I've ever seen!");
runscript("pw_enableannettethinking");
message("Although, he's kind of always\nlike that.");

runscript("setlipsynctonoone");
runscript("pw_setnameboxtodamion");
message("Indeed.");

placefade("pw_char","char",20,"O");
wait(20);
runscript("pw_setnameboxtoofficer");
message("Mr. Shard, the court is ready\nto reconvene.");
placefade("pw_char","char",20,"I");
wait(20);

runscript("setlipsynctonoone");
runscript("pw_setnameboxtodamion");
message("Let's go then, and find out\nif Robert Wares really is our killer.");
jumptoscript("case1_courtoverview2");

[case1_courtoverview2]
placefade("pw_bg","bg",40,"O");
placefade("pw_char","char",40,"O");
wait(40);
runscript("pw_showadvarrowmenu");
runscript("pw_settypewritermsgbox");
runscript("pw_greenmessagebox");
runscript("pw_showmessagebox");
messageauto("August 10, 11:20 AM");
wait(10);
messageappendauto("\nDistrict Court");
wait(10);
messageappend("\nCourtroom No. 101");
runscript("pw_hidemessagebox");
runscript("pw_whitemessagebox");
placefade("pw_bg","bg",0,"I");
replacetexture(4802,"damionshard/CROPrMeson.png");
replacetexture(4803,"damionshard/CRODfDamionAnnette.png");
replacetexture(4804,"damionshard/CROJudgeworth.png");
replacetexture(4805,"damionshard/CROWtWares.png");
runscript("pw_showcourtroomoverview");
loadandplaysfx("sfx-gallery.wav",0);
wait(144);
runscript("pw_hidecourtroomoverview");
jumptoscript("case1_court2");

[case1_court2]
runscript("pw_showgavelhit");
runscript("pw_whitemessagebox");
runscript("pw_showjudgetable");
runscript("showpwchar");
runscript("pw_enablejudgeworthnormal");
placefade("pw_char","char",0,"I");
runscript("pw_setnameboxtojudge");
runscript("setlipsynctochar");
runscript("pw_showmessagebox");
loadandplaymp3("music/05 - Trial - Theme of Judgment.mp3",0,"");
message("Court will now reconvene for\nthe trial of Albert Isaac.");
message("When the court adjourned for\nrecess, a piece of evidence was\nsent to the lab for reevaluation.");
message("Twenty minutes were allowed for\nthe evidence to be reexamined for\nthe prints of Mr. Wares.");
runscript("pw_enablejudgeworthmad");
message("The cases of both the prosecution\nand the defense depend on the\nresults of this test.");
message("Is the reexamination complete,\nProsecutor von Vharnado?");

stopmp3(0);
runscript("pw_showprosecutorstand");
runscript("pw_enablemesonnormal");
runscript("pw_setnameboxtomeson");
messageauto("Yes, Your Honor.");
wait(10);
loadandplaymp3("music/16 - Suspense - Feeling of Dread.mp3",0,"");
runscript("pw_enablemesondocument");
setvar([pw_evidtoshowinbox],81006);
runscript("pw_showflyingevidboxleft");
messageappend(" I have just\nreceived the results.");
message("I believe that the examination\nrecord contained inside\nthis file...");
runscript("pw_enablemesonpointing");
message("...will prove once and for all that\nthis witness was not at all involved\nin this murder!");
runscript("pw_hideflyingevidbox");

runscript("pw_raiseobjectiondamion");
setvar([sld_targetcharanim],"pw_enabledamionnormal");
runscript("pw_slideprosecutortoattoney");
runscript("pw_hidemessagebox");
runscript("pw_enabledamiondeskslam");
runscript("pw_setnameboxtodamion");
runscript("pw_showmessagebox");
message("The only proof in that folder will\nbe the fingerprints of the witness,\nYour Honor!");

runscript("pw_showjudgetable");
runscript("pw_enablejudgeworthsurprised");
runscript("pw_setnameboxtojudge");
message("My, the suspense is killing me!");
runscript("pw_enablejudgeworthmad");
message("Mr. von Vharnado, please read\nthe results of the test.");

showgenobj("pw_flyingevidbox");
runscript("pw_showprosecutorstand");
runscript("pw_enablemesondocument");
runscript("pw_setnameboxtomeson");
message("Very well, Your Honor.");
setvar([pw_evidtoshowinbox],81007);
loadandplaysfx("sfx-shooop.wav",2);
setgenobjgraphic("pw_flyingevidbox",[pw_evidtoshowinbox]);
message("This test finds that the fingerprints\nof Mr. Robert Wares...");
stopmp3(0);
loadandplaysfx("sfx-stab.wav",0);
loadandplaymp3("music/13 - Pursuit - Shattered Deception.mp3",0,"");
runscript("pw_enablemesondamage");
message("...were indeed found on the handle\nof the murder weapon!?");
setvar([evidencenumber],8003);
setvar([evidencegfs],81002);
setvar([evidencegfl],81002);
setvar([evidencesup],0);
setvar([evidencename],"Rolling Pin");
setvar([evidencesdesc],"Type: Weapons\nSubmitted as evidence by\nProsecutor von Vharnado.");
setvar([evidenceldesc],"Has the defendant's fingerprints on it. Also\nbears the fingerprints of Robert Wares, which\nare upside-down on one of the handles.");
runscript("editevidence");
runscript("pw_enablemesonstrained");
message("Inconceivable!");
runscript("pw_hideflyingevidbox");

runscript("pw_raisetakethatdamion");
setvar([sld_targetcharanim],"pw_enabledamionnormal");
runscript("pw_slideprosecutortoattoney");
runscript("pw_enabledamionpointing");
runscript("pw_setnameboxtodamion");
messageauto("There you go, Your Honor!");
runscript("pw_enabledamionpointing");
messageappend(" Proof\nthat Robert Wares is\nour murderer!");
message("Why else would he have gripped\nthe handle of the murder weapon?");

runscript("pw_raiseobjectionmeson");
setvar([sld_targetcharanim],"pw_enablemesonstrained");
runscript("pw_slideattoneytoprosecutor");
runscript("pw_setnameboxtomeson");
message("You... you can't prove that!");
message("No witnesses saw Mr. Wares\ncommit this crime!");

runscript("pw_raiseobjectiondamion");
setvar([sld_targetcharanim],"pw_enabledamionpointing");
runscript("pw_slideprosecutortoattoney");
runscript("pw_hidemessagebox");
runscript("pw_enabledamiondeskslam");
runscript("pw_setnameboxtodamion");
runscript("pw_showmessagebox");
message("I'm afraid that is quite inaccurate,\nMr. von Vharnado!");
message("Or have you forgotten the\ntestimony of my client,\nAlbert Isaac?");
runscript("pw_enabledamionpointing");
message("It is quite possible that the man\nhe described as the killer was\nnone other than Robert Wares!");
message("Mr. Isaac is the witness to this\ncrime, not the perpetrator!");

runscript("pw_raiseobjectionmeson");
setvar([sld_targetcharanim],"pw_enablemesonhandondesk");
runscript("pw_slideattoneytoprosecutor");
runscript("pw_setnameboxtomeson");
message("Then explain how Mr. Isaac's\nfingerprints ended up on the\nmurder weapon.");

setvar([sld_targetcharanim],"pw_enabledamionhandsondesk");
runscript("pw_slideprosecutortoattoney");
runscript("pw_setnameboxtodamion");
message("I don't know!");
runscript("pw_enabledamionpointing");
message("But surely it is clear that Mr. Wares\nis now more suspicious than\nthe defendant.");

stopmp3(0);
runscript("pw_raiseobjectiongeneric");
setvar([sld_targetcharanim],"pw_enablewaresside");
runscript("pw_slideattoneytowitness");
runscript("pw_hidemessagebox");
wait(60);
loadandplaymp3("music/35 - Idiocy.mp3",0,"");
runscript("pw_enablewaresnormal");
runscript("pw_showmessagebox");
runscript("pw_setnameboxtowares");
message("Heh heh heh...");

runscript("pw_showjudgetable");
runscript("pw_enablejudgeworthsurprised");
runscript("pw_setnameboxtojudge");
message("Mr. Wares?");

runscript("pw_showwitnessstand");
runscript("pw_enablewaresnormal");
runscript("pw_setnameboxtowares");
message("Mr. Attorney, do you really think\nWares is that foolish?");
runscript("pw_enablewareseat");
message("Even Wares can see how dumb\nyour theory is!");

setvar([sld_targetcharanim],"pw_enabledamionhandsondesk");
runscript("pw_slidewitnesstoattorney");
runscript("pw_setnameboxtodamion");
message("Come again? It makes perfect\nsense.");

setvar([sld_targetcharanim],"pw_enablewaresnormal");
runscript("pw_slideattoneytowitness");
runscript("pw_setnameboxtowares");
message("...");
wait(60);
stopmp3(0);
message("Fine, Mr. Attorney. You win.\nWares admits it.");

setvar([sld_targetcharanim],"pw_enabledamionhandsondesk");
runscript("pw_slidewitnesstoattorney");
runscript("pw_setnameboxtodamion");
runscript("pw_bluemessagebox");
runscript("setlipsynctonoone");
message("(What!? He's confessing already?)");
runscript("pw_whitemessagebox");
runscript("setlipsynctochar");

setvar([sld_targetcharanim],"pw_enablewaresnormal");
runscript("pw_slideattoneytowitness");
runscript("pw_setnameboxtowares");
messageauto("Wares admits.");
wait(10);
messageappendauto(".");
wait(10);
messageappendauto(".");
wait(60);
loadandplaymp3("music/17 - Suspense - A Dreadful Development.mp3",0,"");
messageappend(" that he is a former\nemployee of Taco Dell!");

setvar([sld_targetcharanim],"pw_enabledamionnormal");
runscript("pw_slidewitnesstoattorney");
runscript("pw_enabledamionohshit");
runscript("pw_setnameboxtodamion");
loadandplaysfx("sfx-stab2.wav",0);
placeflash(5);
message("Whaaaaaaaaaaaaaaaaaaaaaaaat!?");

setvar([sld_targetcharanim],"pw_enablemesonthinking");
runscript("pw_slideattoneytoprosecutor");
runscript("setlipsynctochar");
runscript("pw_setnameboxtomeson");
message("Perfect. I underestimated you,\nMr. Wares.");

setvar([sld_targetcharanim],"pw_enabledamionsheepish");
runscript("pw_slideprosecutortoattoney");
runscript("pw_setnameboxtodamion");
message("Wait, doesn't that just make this\nwitness even more suspicious?");

setvar([sld_targetcharanim],"pw_enablemesonthinking");
runscript("pw_slideattoneytoprosecutor");
runscript("pw_setnameboxtomeson");
message("Wrong, Mr. Shard.");
message("You see, this is something that\nyou have failed to account for.");
message("This explains away your conjectures\neasily, and once again casts the\nshadow of guilt on your client.");
stopmp3(0);
runscript("pw_enablemesonobjection");
message("You see, if Wares is a former\nemployee of Taco Dell...");

runscript("pw_hidecourtbench");
swapobjecttexturecoordinates("bg","pw_bg","X");
runscript("pw_showspeedlines");
runscript("pw_enablemesonzoom");
runscript("pw_setnameboxtomeson");
loadandplaysfx("sfx-objection.wav",0);
message("Then that explains why his\nfingerprints were on the\nmurder weapon!");
message("What employee of a restaurant\nwouldn't have used a rolling pin\nat least once?");

runscript("pw_raiseobjectiondamion");
runscript("pw_enabledamionhandsondesk");
swapobjecttexturecoordinates("bg","pw_bg","");
runscript("pw_showattorneystand");
runscript("pw_setnameboxtodamion");
message("But Taco Dell sells $c{colorpworange}tacos,$c{colorpwwhite}\nMr. von Vharnado!");
message("Why would a rolling pin be needed\nto make tacos?");
runscript("pw_enabledamionpointing");
message("And besides, the witness can't\nprove he was a Taco Dell\nemployee!");

setvar([sld_targetcharanim],"pw_enablemesonconfident");
runscript("pw_slideattoneytoprosecutor");
runscript("pw_setnameboxtomeson");
message("He doesn't need to. The evidence\nhas proven that.");
message("Or were you wondering why his\nfingerprints were not caught when\nthe evidence was first checked?");
message("He was excluded from the results\nbecause he had been identified as\nan employee of Taco Dell!");

setvar([sld_targetcharanim],"pw_enabledamionnormal");
runscript("pw_slideprosecutortoattoney");
runscript("pw_enabledamionohshit");
runscript("pw_setnameboxtodamion");
loadandplaysfx("sfx-stab.wav",0);
placeflash(5);
message("Gah!");

setvar([sld_targetcharanim],"pw_enablemesonconfident");
runscript("pw_slideattoneytoprosecutor");
runscript("pw_setnameboxtomeson");
message("What's more, Albert Isaac's\nfingerprints were still found on\nthe weapon.");
message("And why else would they be there,\nunless Mr. Isaac had used the\nrolling pin to kill Joe Quilla?");

runscript("pw_raiseobjectiondamion");
runscript("pw_showattorneystand");
runscript("pw_enabledamiondeskslam");
runscript("pw_setnameboxtodamion");
message("That circumstance is easily\nexplainable, Your Honor!");
runscript("pw_enabledamionsheepish");
message("There could have been, um...\na sale on rolling pins at Taco Dell.");
message("Perhaps Mr. Isaac tried out the\nproduct, but decided he didn't\nwant it.");
message("And then Mr. Wares came along\nand used that pin to commit the\nmurder!");

runscript("pw_raiseobjectionmeson");
setvar([sld_targetcharanim],"pw_enablemesonnormal");
runscript("pw_slideattoneytoprosecutor");
runscript("pw_enablemesonobjection");
runscript("pw_setnameboxtomeson");
message("Mr. Shard, no offense, but that\nis the most ridiculous explanation\nthat I have ever heard.");
message("I think we can all agree, based\non common knowledge, that\nTaco Dell sells tacos.");
message("But I am fairly sure, Your Honor,\nthat Taco Dell does not sell\nrolling pins!");

setvar([sld_targetcharanim],"pw_enabledamionsweating");
runscript("pw_slideprosecutortoattoney");
runscript("pw_setnameboxtodamion");
messageauto("N...");
wait(60);
runscript("pw_enabledamionohshit");
messageappend(" Nooooooooooooooo!");

setvar([sld_targetcharanim],"pw_enablemesonconfident");
runscript("pw_slideattoneytoprosecutor");
runscript("pw_setnameboxtomeson");
runscript("setlipsynctochar");
message("I'd say Mr. Shard sees my point.");

stopmp3(0);
runscript("pw_hidemessagebox");
runscript("pw_showgavelhit");
runscript("pw_whitemessagebox");
runscript("pw_showjudgetable");
runscript("showpwchar");
runscript("pw_enablejudgeworthnormal");
runscript("pw_setnameboxtojudge");
runscript("setlipsynctochar");
runscript("pw_showmessagebox");
message("In that case, I believe that this\nline of questioning has come to\nan end.");

loadandplaymp3("music/05 - Trial - Theme of Judgment.mp3",0,"");

runscript("pw_enablejudgeworthmad");
message("It appears that the defense and\nthe prosecution have reached a\nstalemate on this issue.");
message("The presence of the witness's\nfingerprints certainly arouses\nsuspicion.");
message("But the defense has been unable to\nexplain the presence of Mr. Isaac's\nown fingerprints on the weapon.");
message("I apologize, Mr. Shard, but I'm afraid\nthat Albert Isaac is still our\nprime suspect.");
runscript("pw_enablejudgeworthnormal");
message("As for the prosecution, I would like\nto request additional testimony from\nthis witness.");
message("Mr. Wares, please explain to the\ncourt about your employment at\nTaco Dell.");

runscript("pw_showwitnessstand");
runscript("pw_enablewaresnervous");
runscript("pw_setnameboxtowares");
message("Um, does Wares have to?");
messageauto("Wares have a really important,");
runscript("pw_enablewaresnormal");
messageappendauto(" uh...\n");
wait(20);
messageappend("haircut to get to right now.");

setvar([sld_targetcharanim],"pw_enabledamionhandsondesk");
runscript("pw_slidewitnesstoattorney");
runscript("pw_setnameboxtodamion");
runscript("pw_bluemessagebox");
runscript("setlipsynctonoone");
message("(He's nervous! He must still\nbe hiding something.)");
runscript("pw_whitemessagebox");
runscript("setlipsynctochar");

setvar([sld_targetcharanim],"pw_enablemesonhandondesk");
runscript("pw_slideattoneytoprosecutor");
runscript("pw_setnameboxtomeson");
message("Your hair does not seem to be\nin dire need of cutting, Mr. Wares.");
message("I am sure that you will be able\nto reschedule your appointment\nwith your barber.");
message("After you testify to the court\nabout your employment at\nTaco Dell.");

setvar([sld_targetcharanim],"pw_enablewaresnormal");
runscript("pw_slideprosecutortowitness");
runscript("pw_setnameboxtomeson");
message("Oh, fine.");
runscript("pw_hidemessagebox");
stopmp3(0);
jumptoscript("case1_testimony3");

[case1_testimony3]
placefadescreen(1,"O");
runscript("showpwchar");
runscript("pw_showwitnessstand");
runscript("pw_enablewaresside");
runscript("pw_orangemessagebox");
runscript("pw_showtestimony");
runscript("setlipsynctonoone");
setvar([pw_crossmessage],"\n        -- Wares's Former Job --");
runscript("pw_showwitnesstestimony");
runscript("setlipsynctochar");
runscript("pw_setnameboxtowares");
runscript("pw_hidemessagebox");
loadandplaymp3("music/06 - Cross Examination - Mystery.mp3",0,"");
runscript("pw_whitemessagebox");
runscript("pw_showmessagebox");
message("Alright, Wares did work at Taco Dell\na few years ago.");
runscript("pw_enablewaresnormal");
message("Well, he didn't just work there.\nWares actually helped the business\nget started in the first place.");
message("Old Joe Quilla and Wares used to be\nbusiness partners back in the day.");
message("One day, Wares decided to go into\nthe hot dog industry, leaving his\nold friend Quilla behind.");
runscript("pw_enablewaresside");
message("Wares is greatly saddened to have\nlost his beloved business\npartner.");
runscript("pw_hidemessagebox");
runscript("pw_hidetestimony");
placefadescreen(120,"I");
wait(120);
stopmp3(0);
runscript("pw_enablejudgeworththink");
runscript("pw_showjudgetable");
placefadescreen(120,"O");
wait(150);
runscript("pw_enablejudgeworthmad");
runscript("pw_setnameboxtojudge");
runscript("pw_showmessagebox");
runscript("setlipsynctochar");
message("So the witness knew the victim\nafter all.");

runscript("pw_showprosecutorstand");
runscript("pw_enablemesonnormal");
runscript("pw_setnameboxtomeson");
message("Yes, but these men were good\nfriends, as well as business\npartners.");
message("The prosecution finds it unlikely\nthat Mr. Wares would want to\nmurder his old friend.");

runscript("pw_showjudgetable");
runscript("pw_enablejudgeworthnormal");
runscript("pw_setnameboxtojudge");
message("Well, at any rate, the defense\nmay cross-examine the witness.");

loadandplaymp3("music/11 - Unveil the Truth.mp3",0,"");
runscript("pw_showcocouncilstand");
runscript("pw_enableannettebstrict");
runscript("pw_setnameboxtoannette");
message("So, the truth comes out.");
runscript("pw_enableannettebprofile");
message("That creepy old guy knew the\nvictim, and was trying to\nhide it.");
runscript("pw_enableannettebench");
message("I bet there's some loose thread in\nthat testimony just waiting to be\npulled, right?");
runscript("pw_bluemessagebox");
runscript("setlipsynctonoone");
message("(And when that string is pulled,\nhis whole story will be unraveled.)");
runscript("pw_hidemessagebox");
runscript("pw_whitemessagebox");
runscript("setlipsynctochar");
stopmp3(0);
runscript("case1_crossexamination3");

[case1_crossexamination3]
definevarglobal([c1ce3amend],"int");
setvar([c1ce3amend],0);
setvar([pw_crossexamattorneycode],36);
setvar([pw_crossexamprosecutorcode],30);
setvar([pw_rightevi],8006);
setvar([pw_examno],3);
setvar([pw_contradiction],5);
setvar([pw_maxstatements],6);
runscript("pw_showwitnessstand");
runscript("pw_enablewaresnormal");
runscript("showpwchar");
placefadescreen(1,"O");
runscript("pw_orangemessagebox");
setvar([pw_crossmessage],"\n        -- Wares's Former Job --");
runscript("pw_showcrossexaminationvs");
runscript("pw_showlifebar");
loadandplaymp3("music/06 - Cross Examination - Mystery.mp3",0,"");
runscript("hidepwmenu");
runscript("begincrossexamination");
runscript("pw_showmessagebox");
jumptoscript("case1_exam3s1");

[case1_exam3s1]
setvar([pw_crossmessage],"Alright, Wares did work at Taco Dell\na few years ago.");
setvar([pw_witness],"pw_enablewaresside");
runscript("pw_setnameboxtowares");
runscript("pw_crossstatement");

[case1_exam3s2]
setvar([pw_crossmessage],"Well, he didn't just work there.\nWares actually helped the business\nget started in the first place.");
setvar([pw_witness],"pw_enablewaresnormal");
runscript("pw_setnameboxtowares");
runscript("pw_crossstatement");

[case1_exam3s3]
setvar([pw_crossmessage],"Old Joe Quilla and Wares used to be\nbusiness partners back in the day.");
setvar([pw_witness],"pw_enablewaresnormal");
runscript("pw_setnameboxtowares");
runscript("pw_crossstatement");

[case1_exam3s4]
setvar([pwcrossexamcurrentstage],4);
setvar([pw_crossmessage],"One day, Wares decided to go into\nthe hot dog industry, leaving his\nold friend Quilla behind.");
setvar([pw_witness],"pw_enablewaresnormal");
runscript("pw_setnameboxtowares");
runscript("pw_crossstatement");

[case1_exam3s5]
if(<compare([c1ce3amend],"equal",1)>,<>,<jumptoscript("case1_exam3s5skip")>);
setvar([pwcrossexamcurrentstage],5);
setvar([pw_crossmessage],"All they sell at Taco Dell is tacos!\nWhy would Wares want to keep on\nworkin' there?");
setvar([pw_witness],"pw_enablewareseat");
runscript("pw_setnameboxtowares");
runscript("pw_crossstatement");

[case1_exam3s5skip]
if(<compare([pw_qresponse],"equal",3)>,<jumptoscript("case1_exam3s4")>,<jumptoscript("case1_exam3s6")>);

[case1_exam3s6]
setvar([pwcrossexamcurrentstage],6);
setvar([pw_crossmessage],"Wares is greatly saddened to have\nlost his beloved business\npartner.");
setvar([pw_witness],"pw_enablewaresside");
runscript("pw_setnameboxtowares");
runscript("pw_crossstatement");

[case1_exam3loop]
runscript("hidepwmenu");
runscript("pw_showadvarrowmenu");
runscript("pw_whitemessagebox");
runscript("pw_showcocouncilstand");
runscript("pw_enableannettebthinking");
runscript("pw_showmessagebox");
runscript("pw_setnameboxtoannette");
message("For a crazy old guy who claims to\nbe friends with a guy who\nloves tacos...");
message("This guy doesn't seem to like tacos\nvery much.");
runscript("pw_setnameboxtodamion");
runscript("setlipsynctonoone");
message("And Taco Dell sells nothing\nbut tacos.");
runscript("pw_setnameboxtoannette");
runscript("setlipsynctochar");
message("Well, tacos are the only $c{colorpworange}food\nproducts$c{colorpwwhite} sold at Taco Dell.");
runscript("pw_enableannettebench");
message("But don't they sell something\nelse, as well?");
runscript("pw_setnameboxtodamion");
runscript("setlipsynctonoone");
runscript("pw_bluemessagebox");
message("(I'd better take a look at my\nevidence to see what she's\ntalking about.)");
runscript("setlipsynctochar");
runscript("pw_whitemessagebox");

runscript("pw_hidemessagebox");
placefadescreen(25,"I");
wait(25);
runscript("pw_showwitnessstand");
runscript("pw_enablewaresnormal");
placefadescreen(25,"O");
wait(25);
runscript("hidepwmenu");
runscript("showpwcrossexamination");
runscript("pw_showwitnessstand");
runscript("pw_showmessagebox");
runscript("resumepwcrossexamsimple");
jumptoscript("case1_exam3s1");

[case1_truth3]
stopmp3(0);
runscript("pw_raiseobjectiondamion");
runscript("hidepwmenu");
runscript("pw_hidelifebar");
setvar([sld_targetcharanim],"pw_enabledamionpointing");
runscript("pw_whitemessagebox");
runscript("pw_showadvarrowmenu");
runscript("pw_slidewitnesstoattorney");
runscript("pw_setnameboxtodamion");
runscript("pw_hidemessagebox");
runscript("pw_showmessagebox");
runscript("setlipsynctochar");
setvar([pw_evidtoshowinbox],81005);
runscript("pw_showflyingevidboxright");
message("Mr. Wares, have you ever read\nthe brochures at Taco Dell?");

setvar([sld_targetcharanim],"pw_enablewaresmad");
runscript("pw_slideattoneytowitness");
runscript("pw_setnameboxtowares");
message("Of course Wares has!");
runscript("pw_enablewaresnormal");
messageauto("Well, maybe he hasn't really...");
wait(20);
runscript("pw_enablewaressideshake");
messageappend("\never read one of them.");
message("But he's seen them sitting on a\nshelf in the store!");

setvar([sld_targetcharanim],"pw_enabledamionhandsondesk");
runscript("pw_slidewitnesstoattorney");
runscript("pw_setnameboxtodamion");
message("Well, I don't doubt that statement,\nMr. Wares.");
message("But if you had read the brochures,\nyou might have noticed something\nabout the company you founded.");
runscript("pw_hideflyingevidboxright");
loadandplaymp3("music/07 - Damion Shard - Objection!.mp3",0,"");
runscript("pw_enabledamionpointing");
message("You might have noticed that Taco\nDell sells computers as well!");

setvar([sld_targetcharanim],"pw_enablemesonnormal");
runscript("pw_slideattoneytoprosecutor");
loadandplaysfx("sfx-stab.wav",0);
runscript("pw_enablemesondamage");
runscript("pw_setnameboxtomeson");
message("Wares, you idiot.");

setvar([sld_targetcharanim],"pw_enablewaresnervous");
runscript("pw_slideprosecutortowitness");
runscript("pw_setnameboxtowares");
runscript("setlipsynctochar");
message("Oh yeah.");
runscript("pw_enablewaresside");
message("Wares might have forgotten about\nthat little detail.");

setvar([sld_targetcharanim],"pw_enabledamionhandsondesk");
runscript("pw_slidewitnesstoattorney");
runscript("pw_setnameboxtodamion");
message("Mr. Wares, when you left Taco Dell,\nyou weren't just leaving behind a\nsuccessful fast food chain.");
runscript("pw_enabledamionpointing");
loadandplaysfx("sfx-objection.wav",0);
placeflash(5);
message("You left behind a company with a\nfuture in technology as well!");

setvar([sld_targetcharanim],"pw_enablewareseat");
runscript("pw_slideattoneytowitness");
runscript("pw_setnameboxtowares");
message("What are you sayin'? So what?");

setvar([sld_targetcharanim],"pw_enabledamionpointing");
runscript("pw_slidewitnesstoattorney");
runscript("pw_setnameboxtodamion");
message("Mr. Wares, I can accept the notion\nthat you left behind a powerful\nposition in the fast food industry.");
message("But considering that this same\ncompany also held a position in the\nworld of computer techonology...");
runscript("pw_enabledamiondeskslam");
message("Mr. Wares, even you aren't dumb\nenough to make that mistake!");
message("And look where you are now: selling\nundercooked hot dogs from an old\ncart just across the street.");
message("I think that you would never have\nleft that successful company...");
runscript("pw_hidecourtbench");
runscript("pw_showspeedlines");
runscript("pw_enabledamionzoom");
loadandplaysfx("sfx-objection.wav",0);
message("...unless there was tension between\nyou and your business partner,\nJoe Quilla!");

setvar([sld_targetcharanim],"pw_enablewareseat");
runscript("pw_slideattoneytowitness");
runscript("pw_setnameboxtowares");
message("Grrr...");

setvar([sld_targetcharanim],"pw_enablemesonconfident");
runscript("pw_slidewitnesstoprosecutor");
runscript("pw_setnameboxtomeson");
message("That's all very nice, Mr. Shard.");
runscript("pw_enablemesonshrug");
message("But may I remind you that\nyour allegations are not\nconclusively proven.");
message("What proof do you have that there\nwas a disagreement between\nMr. Wares and the victim?");

setvar([sld_targetcharanim],"pw_enabledamiondocument");
runscript("pw_slideprosecutortoattoney");
runscript("pw_setnameboxtodamion");
message("Well, as you've noticed, the witness\nhas commented several times about\na specific matter.");
runscript("pw_enabledamiondeskslam");
message("About the fact that he wanted\nTaco Dell to sell hot dogs,\nnot tacos!");
message("His vision for the company\nclashed with Joe Quilla's.");
runscript("pw_enabledamionpointing");
message("Is this not a disagreement that\ncould divide the company in two?");

setvar([sld_targetcharanim],"pw_enablemesonnormal");
runscript("pw_slideattoneytoprosecutor");
runscript("pw_setnameboxtomeson");
messageauto("Well...");
messageappend(" that's...");

stopmp3(0);
runscript("pw_raiseholditgeneric");
setvar([sld_targetcharanim],"pw_enablewaresmad");
runscript("pw_slideprosecutortowitness");
runscript("pw_setnameboxtowares");
message("Hold it right there,\nyou little whippersnapper!");
loadandplaymp3("music/17 - Suspense - A Dreadful Development.mp3",0,"");
message("Mr. Prosecutor, stop lookin' like\nyou're agreeing with that dummy!");
message("Big deal if Wares and Quilla had\na falling out!");
message("You got no proof that Wares\ncommitted this crime!");

runscript("pw_showjudgetable");
runscript("pw_enablejudgeworthnormal");
runscript("pw_setnameboxtojudge");
message("Well, I suppose that the witness\nis technically right.");
message("As long as there's no evidence to\nindicate that this witness\nis the murderer of Joe Quilla...");
message("The defendant, Albert Isaac, will\nlikely be found guilty of this crime.");

runscript("pw_showwitnessstand");
runscript("pw_enablewaresnormal");
runscript("pw_setnameboxtowares");
messageauto("That's right.");
runscript("pw_enablewaresside");
messageappend(" It's thanks to\nthat law book I read in the lobby,\n\"Trial and Error.\"");
message("It told me everything I need\nto know about evidence.");
messageauto("And like that prosecutor says,\nevidence is everything in\na court of");
runscript("pw_raiseobjectionmeson");
runscript("pw_enablewaresnervous");
messageappendauto("...");
wait(60);

setvar([sld_targetcharanim],"pw_enablemesonnormal");
runscript("pw_slidewitnesstoprosecutor");
runscript("pw_setnameboxtomeson");
runscript("pw_enablemesonobjection");
loadandplaymp3("music\23 - Genius Prosecutor.mp3",0,"");
message("Not so fast, Mr. Wares.");
message("In light of Mr. Shard's allegations,\nthe prosecution would like to\nrequest additional testimony.");
message("Specifically, I would like to request\ntestimony from the witness about\nthe murder itself.");
runscript("pw_enablemesonthinking");
message("There are numerous things\nwhich still have yet\nto be cleared up.");

setvar([sld_targetcharanim],"pw_enablewaresnervous");
runscript("pw_slideprosecutortowitness");
runscript("pw_setnameboxtowares");
messageauto("What? No!");
runscript("pw_enablewareseat");
messageappend(" What are you doing,\nMr. Prosecutor!?");

setvar([sld_targetcharanim],"pw_enablemesonhandondesk");
runscript("pw_slidewitnesstoprosecutor");
runscript("pw_setnameboxtomeson");
message("My job, Mr. Wares.");
runscript("pw_enablemesonpointing");
message("You see, unless you testify again\nabout the crime, I'm afraid your\nwhole testimony is discredited.");
message("Thanks to the multiple obvious\ncontradictions that Mr. Shard\npointed out.");

setvar([sld_targetcharanim],"pw_enablewareseat");
runscript("pw_slideprosecutortowitness");
runscript("pw_setnameboxtowares");
messageauto("But you covered those up...");
wait(10);
runscript("pw_enablewaresnormal");
messageappend(" er,\ndisproved them.");

setvar([sld_targetcharanim],"pw_enablemesonnormal");
runscript("pw_slidewitnesstoprosecutor");
runscript("pw_setnameboxtomeson");
runscript("pw_enablemesonsmirk");
runscript("pw_enablemesonnormal");
runscript("setlipsynctochar");
message("That was before you explained that\nyour job was merely in management,\nand not actually preparing food.");
runscript("pw_enablemesonconfident");
message("I find it unlikely that a Taco Dell\nbusinessman would have used one\nof the cooking utensils.");
runscript("pw_enablemesonshrug");
message("Especially one that isn't even used\nto make tacos!");
message("And on top of that, you have yet\nto explain why you were at Taco Dell\non the night of the murder.");

setvar([sld_targetcharanim],"pw_enablewaresnervous");
runscript("pw_slideprosecutortowitness");
runscript("pw_setnameboxtowares");
messageauto("Easy! Wares heard a...");
wait(30);

setvar([sld_targetcharanim],"pw_enablemesondocument");
runscript("pw_slidewitnesstoprosecutor");
runscript("pw_setnameboxtomeson");
messageauto("Gunshot?");
wait(20);
setvar([pw_evidtoshowinbox],81002);
runscript("pw_showflyingevidboxleft");
messageappend(" From this rolling pin here?");
message("Mr. Wares, this wooden apparatus\nhas been carefully examined...");
message("...and I am fairly sure\nthat it is incapable of\nfiring bullets.");
setvar([pw_evidtoshowinbox],81001);
runscript("pw_showflyingevidboxleft");
message("Even if it was, I'm sure you recall\nthat Quilla died due to blunt trauma\nto the head.");
runscript("pw_hideflyingevidboxleft");
runscript("pw_enablemesonobjection");
message("No gunshots involved!");

setvar([sld_targetcharanim],"pw_enablewaresmad");
runscript("pw_slideprosecutortowitness");
runscript("pw_setnameboxtowares");
message("You... you're supposed to be\non Wares's side, Mr. Prosecutor!");

setvar([sld_targetcharanim],"pw_enablemesonthinking");
runscript("pw_slidewitnesstoprosecutor");
runscript("pw_setnameboxtomeson");
message("I believe you're mistaken,\nMr. Wares.");
message("I'm on the side of the law.");
runscript("pw_enablemesonnormal");
message("Your Honor, the prosecutor could\nmake a case with the evidence\nit already has.");
message("But as it stands, the testimony\nis clearly too sketchy to admit, and\nthat places doubt on my case.");
message("Now, Mr. Wares, please testify\nabout the night of the crime.");
runscript("pw_enablemesonthinking");
message("And this time, try to do so\naccurately.");

runscript("pw_showjudgetable");
runscript("pw_enablejudgeworthnormal");
runscript("pw_setnameboxtojudge");
message("Yes, that should clear up the\ninconsistencies in the testimony.");
message("Good thinking, Mr. von Vharnado.");
runscript("pw_enablejudgeworthsurprised");
message("But, um, I was expecting to\nhear something like that from\nthe defense.");
runscript("pw_enablejudgeworthnormal");
message("Anyway, please testify to the court\nabout the night of the crime again.");

runscript("pw_showwitnessstand");
runscript("pw_enablewaressideshake");
runscript("pw_setnameboxtowares");
message("Hmph!");
runscript("pw_enablewaresside");
message("Fine, if Wares have to.");

setvar([sld_targetcharanim],"pw_enabledamionsweating");
runscript("pw_slidewitnesstoattorney");
runscript("pw_setnameboxtodamion");
runscript("pw_bluemessagebox");
runscript("setlipsynctonoone");
message("(Did.. did the prosecutor just\nsave me?)");
runscript("pw_whitemessagebox");
runscript("setlipsynctochar");

runscript("pw_showcocouncilstand");
runscript("pw_enableannettebench");
runscript("pw_setnameboxtoannette");
message("Well, that was sure nice of him,\nI guess.");
runscript("pw_enableannettebthinking");
message("But judging from the Shard\nprosecutors, I don't think that's\nreally what he's supposed to do.");
message("I guess he really doesn't like\nthat Mr. Wares.");
runscript("pw_setnameboxtodamion");
runscript("setlipsynctonoone");
message("Well, we can't let this break\ngo to waste.");
message("I'm sure that there's something else\nWares missed when formulating his\nlie of a testimony.");
message("This part of his testimony will be\ncritical; if he makes an error here,\nhe's finished.");
runscript("pw_enableannettebench");
runscript("pw_setnameboxtoannette");
runscript("setlipsynctochar");
message("Let's make this last round\ncount then, Damion.");
runscript("pw_hidemessagebox");
stopmp3(0);
jumptoscript("case1_testimony4");

[case1_testimony4]
placefadescreen(1,"O");
runscript("showpwchar");
runscript("pw_showwitnessstand");
runscript("pw_enablewareseat");
runscript("pw_orangemessagebox");
runscript("pw_showtestimony");
runscript("setlipsynctonoone");
setvar([pw_crossmessage],"\n      -- What Really Happened --");
runscript("pw_showwitnesstestimony");
runscript("setlipsynctochar");
runscript("pw_setnameboxtowares");
runscript("pw_hidemessagebox");
loadandplaymp3("music/10 - Cross Examination - Confrontation.mp3",0,"");
runscript("pw_whitemessagebox");
runscript("pw_showmessagebox");
message("Okay, so Wares didn't get all\nthe facts right. Big deal!");
runscript("pw_enablewaresnormal");
message("Wares was sitting in the restaurant\neating a taco.");
message("Just as Wares finished, that kid\nAlbert Isaac came in, acting all\ndark and mysterious.");
message("He ordered a taco, and old Joe\nwent to fetch one from under\na heat lamp.");
runscript("pw_enablewaresmad");
message("Joe asked how he'd pay; that lad\njust laughed wickedly and hit him\nupside the head with a rolling pin.");
runscript("pw_hidemessagebox");
runscript("pw_hidetestimony");
placefadescreen(120,"I");
wait(120);
stopmp3(0);
runscript("pw_enablejudgeworththink");
runscript("pw_showjudgetable");
placefadescreen(120,"O");
wait(150);
runscript("pw_enablejudgeworthmad");
runscript("pw_setnameboxtojudge");
runscript("pw_showmessagebox");
runscript("setlipsynctochar");
message("Well, it seems that the witness\nhas explained the issues in\nhis testimony.");
runscript("pw_enablejudgeworthmad");
setvar([pw_evidtoshowinbox],81003);
runscript("pw_showflyingevidboxleft");
message("Despite the fact that his memory of\nthe crime is about as consistent as\nthe watery sauce of this taco.");
setvar([pw_evidtoshowinbox],81003);
runscript("pw_hideflyingevidboxleft");
message("Mr. Shard, you may now\ncross-examine the witness.");
runscript("pw_hidemessagebox");
jumptoscript("case1_crossexamination4");

[case1_crossexamination4]
setvar([pw_crossexamattorneycode],36);
setvar([pw_crossexamprosecutorcode],30);
setvar([pw_rightevi],8005);
setvar([pw_examno],4);
setvar([pw_contradiction],5);
setvar([pw_maxstatements],5);
runscript("pw_showwitnessstand");
runscript("pw_enablewaresnormal");
runscript("showpwchar");
placefadescreen(1,"O");
runscript("pw_orangemessagebox");
setvar([pw_crossmessage],"\n      -- What Really Happened --");
runscript("pw_showcrossexaminationvs");
runscript("pw_showlifebar");
loadandplaymp3("music/10 - Cross Examination - Confrontation.mp3",0,"");
runscript("hidepwmenu");
runscript("begincrossexamination");
runscript("pw_showmessagebox");
jumptoscript("case1_exam4s1");

[case1_exam4s1]
setvar([pw_crossmessage],"Okay, so Wares didn't get all\nthe facts right. Big deal!");
setvar([pw_witness],"pw_enablewareseat");
runscript("pw_setnameboxtowares");
runscript("pw_crossstatement");

[case1_exam4s2]
setvar([pw_crossmessage],"Wares was sitting in the restaurant\neating a taco.");
setvar([pw_witness],"pw_enablewaresnormal");
runscript("pw_setnameboxtowares");
runscript("pw_crossstatement");

[case1_exam4s3]
setvar([pw_crossmessage],"Just as Wares finished, that kid\nAlbert Isaac came in, acting all\ndark and mysterious.");
setvar([pw_witness],"pw_enablewaresnormal");
runscript("pw_setnameboxtowares");
runscript("pw_crossstatement");

[case1_exam4s4]
setvar([pw_crossmessage],"He ordered a taco, and old Joe\nwent to fetch one from under\na heat lamp.");
setvar([pw_witness],"pw_enablewaresnormal");
runscript("pw_setnameboxtowares");
runscript("pw_crossstatement");

[case1_exam4s5]
setvar([pw_crossmessage],"Joe asked how he'd pay; that lad\njust laughed wickedly and hit him\nupside the head with a rolling pin.");
setvar([pw_witness],"pw_enablewareseat");
runscript("pw_setnameboxtowares");
runscript("pw_crossstatement");

[case1_exam4loop]
runscript("hidepwmenu");
runscript("pw_showadvarrowmenu");
runscript("pw_whitemessagebox");
runscript("pw_showcocouncilstand");
runscript("pw_enableannettebstrict");
runscript("pw_showmessagebox");
runscript("pw_setnameboxtoannette");
message("We've almost got this guy.");
message("We just have to find one more\ncontradiction.");
runscript("pw_setnameboxtodamion");
runscript("setlipsynctonoone");
message("Easier said than done.");
runscript("pw_enableannettebench");
runscript("pw_setnameboxtoannette");
runscript("setlipsynctochar");
message("True.");
message("But see if what he's saying\ncontradicts the evidence\nwe've dug up.");
message("There has to be something\nthat doesn't quite fit.");
runscript("pw_hidemessagebox");
placefadescreen(25,"I");
wait(25);
runscript("pw_showwitnessstand");
runscript("pw_enablewaresnormal");
placefadescreen(25,"O");
wait(25);
runscript("hidepwmenu");
runscript("showpwcrossexamination");
runscript("pw_showwitnessstand");
runscript("pw_showmessagebox");
runscript("resumepwcrossexamsimple");
jumptoscript("case1_exam4s1");

[case1_truth4]
stopmp3(0);
runscript("pw_raiseobjectiondamion");
runscript("hidepwmenu");
runscript("pw_hidelifebar");
setvar([sld_targetcharanim],"pw_enabledamionconfident");
runscript("pw_whitemessagebox");
runscript("pw_showadvarrowmenu");
runscript("pw_slidewitnesstoattorney");
runscript("pw_setnameboxtodamion");
runscript("pw_hidemessagebox");
runscript("pw_showmessagebox");
runscript("setlipsynctochar");
message("Now I've got you, Mr. Wares.");

setvar([sld_targetcharanim],"pw_enablewaresnervous");
runscript("pw_slideattoneytowitness");
runscript("pw_setnameboxtowares");
messageauto("Wha...");
wait(30);
messageappend(" What?");

setvar([sld_targetcharanim],"pw_enabledamiondocument");
runscript("pw_slidewitnesstoattorney");
runscript("pw_setnameboxtodamion");
setvar([pw_evidtoshowinbox],81004);
runscript("pw_showflyingevidboxright");
message("Mr. Wares, have you ever seen\nthis cash register?");

setvar([sld_targetcharanim],"pw_enablewaresnormal");
runscript("pw_slideattoneytowitness");
runscript("pw_setnameboxtowares");
message("Wares can't say he has.");

setvar([sld_targetcharanim],"pw_enabledamiondocument");
runscript("pw_slidewitnesstoattorney");
runscript("pw_setnameboxtodamion");
message("Mr. Wares, this was the cash\nregister present on the night of\nthe murder.");

setvar([sld_targetcharanim],"pw_enablewaresnormal");
runscript("pw_slideattoneytowitness");
runscript("pw_setnameboxtowares");
messageauto("What? Oh, yes, yes, ");
runscript("pw_enablewaresside");
messageappend("Wares\nhas seen it.");

setvar([sld_targetcharanim],"pw_enabledamiondocument");
runscript("pw_slidewitnesstoattorney");
runscript("pw_setnameboxtodamion");
message("Well then, I'm sure you know that\nthis register keeps a record of all\nsales made at Taco Dell.");

setvar([sld_targetcharanim],"pw_enablewaresside");
runscript("pw_slideattoneytowitness");
runscript("pw_setnameboxtowares");
messageauto("Uh...");
wait(10);
messageappend(" so?");

setvar([sld_targetcharanim],"pw_enabledamiondocument");
runscript("pw_slidewitnesstoattorney");
runscript("pw_setnameboxtodamion");
message("You don't follow?");
runscript("pw_hideflyingevidboxright");
runscript("pw_enabledamionhandsondesk");
message("Mr. Wares, this readout shows that\ntwo purchases were made after\n5:00 P.M. on the day of the crime.");
runscript("pw_hidecourtbench");
runscript("pw_showspeedlines");
runscript("pw_enabledamionzoom");
loadandplaysfx("sfx-objection.wav",0);
placeflash(5);
messageauto("If your testimony is to be believed,");
loadandplaymp3("music/13 - Pursuit - Shattered Deception.mp3",0,"");
messageappend("\nthere should only have been one\npurchase made!");

setvar([sld_targetcharanim],"pw_enablewaresmad");
runscript("pw_slideattoneytowitness");
runscript("pw_setnameboxtowares");
message("What are you talking about,\ndummy?");
message("Of course there'd be two: Wares\nand that Isaac guy, right?");

setvar([sld_targetcharanim],"pw_enabledamionpointing");
runscript("pw_slidewitnesstoattorney");
runscript("pw_setnameboxtodamion");
message("Wrong, Mr. Wares. You say that\nIsaac killed Joe Quilla to avoid\nhaving to pay for a taco.");
message("But if that were the case, the\ndefendant would never have made\na purchase!");
message("There would only be one purchase\non the record: yours.");

setvar([sld_targetcharanim],"pw_enablewareseat");
runscript("pw_slideattoneytowitness");
runscript("pw_setnameboxtowares");
message("But, there could have been\nsomebody else!");
message("What if someone else made\nthat other purchase?");

setvar([sld_targetcharanim],"pw_enabledamionpointing");
runscript("pw_slidewitnesstoattorney");
runscript("pw_setnameboxtodamion");
message("Then they would have had to do so\njust a minute before the crime,\nat 5:59 P.M.!");
message("Neither you nor Mr. Isaac has given\ntestimony to lead us to believe\nthat a third suspect was present.");

runscript("pw_raiseobjectionmeson");
setvar([sld_targetcharanim],"pw_enablemesonstrained");
runscript("pw_slideattoneytoprosecutor");
runscript("pw_setnameboxtomeson");
message("It can't be...");
runscript("pw_enablemesonpointing");
message("What... what if the defendant\nmade a purchase after all?");

setvar([sld_targetcharanim],"pw_enabledamionpointing");
runscript("pw_slideprosecutortoattoney");
runscript("pw_setnameboxtodamion");
message("Then the motive for murder\nis bogus, Your Honor!");
message("Either way, there's a giant hole\nin your case, Prosecutor\nvon Vharnado!");

setvar([sld_targetcharanim],"pw_enablemesonnormal");
runscript("pw_slideattoneytoprosecutor");
runscript("pw_setnameboxtomeson");
loadandplaysfx("sfx-stab2.wav",0);
runscript("pw_enablemesondamage2");
message("This can't be happening.");
message("Then what's your explanation,\nMr. Shard? Tell the court what\ncould possibly have transpired!");

setvar([sld_targetcharanim],"pw_enabledamionthinking");
runscript("pw_slideprosecutortoattoney");
runscript("pw_setnameboxtodamion");
message("All right. If you insist.");

stopmp3(0);

runscript("pw_showjudgetable");
runscript("pw_enablejudgeworthsurprised");
runscript("pw_setnameboxtojudge");
setvar([pw_evidtoshowinbox],81003);
runscript("pw_showflyingevidboxleft");
loadandplaysfx("sfx-munch1.wav",0);
runscript("pw_showmessagebox");
messageauto("Munch, ");
loadandplaysfx("sfx-munch1.wav",0);
messageappendauto("munch, ");
loadandplaysfx("sfx-munch1.wav",0);
messageappend("munch...");
runscript("pw_hideflyingevidboxleft");
message("Mmm... all done.");
runscript("pw_enablejudgeworthmad");
message("Now, Mr. Shard, please clarify\nthe circumstances of the crime.");

runscript("case1_question7");

stopmp3(0);
runscript("pw_raisetakethatdamion");
runscript("pw_showattorneystand");
runscript("pw_enabledamionpointing");
runscript("pw_setnameboxtodamion");
loadandplaymp3("music/13 - Pursuit - Shattered Deception.mp3",0,"");
message("The motive was revenge,\nYour Honor!");

runscript("pw_showjudgetable");
runscript("pw_enablejudgeworthsurprised");
runscript("pw_setnameboxtojudge");
message("Really? But why would Mr. Wares\nwant to take revenge out\non the victim?");
runscript("pw_showwitnessstand");
runscript("pw_enablewaresnervous");
runscript("pw_setnameboxtowares");
message("Y-Yeah! Good luck explainin'\nthat one, Mr. Attorney!");

setvar([sld_targetcharanim],"pw_enabledamionconfident");
runscript("pw_slidewitnesstoattorney");
runscript("pw_setnameboxtodamion");
message("It's simple, Your Honor.");
message("I doubt that the past between\nWares and Quilla is as pleasant\nas he'd have us think.");
message("Let us think back to Wares's\nprevious testimony.");
message("He said that he left Taco Dell\nin search of more profitable\nbusiness.");
runscript("pw_enabledamiondeskslam");
message("But it quickly became clear that\nthis was not the case.");
message("Wares didn't choose to leave\nTaco Dell at all.");
runscript("pw_hidecourtbench");
runscript("pw_showspeedlines");
runscript("pw_enabledamionzoom");
loadandplaysfx("sfx-objection.wav",0);
placeflash(5);
message("He was fired!");
runscript("pw_hidemessagebox");

stopmp3(0);

runscript("pw_showwitnessstand");
runscript("pw_enablewaresmad");
wait(120);
runscript("pw_enablewaresseedthrow");
loadandplaysfx("sfx-smack.wav",0);
placeflash(5);
runscript("pw_showmessagebox");
runscript("pw_setnameboxtowares");
messageauto("Noooooooooooooooooooooooooooo");
replacetexture(4805,"damionshard/CROWtWares.png");
runscript("pw_showcourtroomoverview");
loadandplaysfx("sfx-smack.wav",0);
placeflash(5);
messageappendauto("\nooooooooooooooooooooooooooooo");
loadandplaysfx("sfx-smack.wav",0);
placeflash(5);
messageappend("\noooooooooooooooooooooooooooo!");

placefadescreen(120,"I");
wait(120);
runscript("pw_hidecourtroomoverview");
runscript("pw_hidemessagebox");
placefade("pw_bg","bg",0,"O");
placefadescreen(0,"O");
wait(60);
loadandplaysfx("sfx-bell.wav",0);
wait(20);
loadandplaysfx("sfx-bell.wav",0);
wait(120);
runscript("pw_setnameboxtoquilla");
runscript("pw_showmessagebox");
message("Hello there. Welcome to\nTaco Dell. May I take\nyour order?");
runscript("pw_setnameboxtowares");
messageauto("Yes, um... one taco please.");
wait(30);
messageappend("\nUh, Super Grande size.");
runscript("pw_setnameboxtoquilla");
message("All right, sir. Coming right up.");
messageauto("Okay, there you go. That'll be\n$5.95");
wait(10);
messageappendauto(".");
wait(10);
messageappendauto(".");
wait(10);
messageappend(".");
message("Wait a minute, do I know you\nfrom somewhere?");
runscript("pw_setnameboxtowares");
message("Yes.");
message("You're talking to the one\nyou stole everything from.");
messageauto("And he's here to see that\nyou pay it all back...");
runscript("pw_disableticking");
wait(100);
loadandplaysfx("sfx-dramapound.wav",0);
messageappend("\n$c{colorpworange}in blood.");

runscript("pw_setnameboxtoquilla");
message("Robert Wares! Is that you?");

runscript("pw_setnameboxtowares");
message("Yes, old man, it's Wares.\nThe one responsible for this\ngreat setup you got here.");
message("And how you repay him? By\nfiring him and kicking him\nout on the street!");

runscript("pw_setnameboxtoquilla");
message("Rob, I had no choice! You were\nembezzling the company's money!");
message("And you were spending it on\nthose sesame seeds of yours,\nof all things.");

runscript("pw_setnameboxtowares");
message("And how do you think Wares feel!?\nYou humiliated Wares, and he\nnever forgot it!");

setvar([pw_evidtoshowinbox],81002);
runscript("pw_showflyingevidboxright");
message("Hm... what's this rolling pin\ndoing here?");
runscript("pw_hideflyingevidboxright");

runscript("pw_setnameboxtoquilla");
message("Wares, you gotta listen to me!\nI wanted to keep you on, but\nthe stockholders felt differently.");
message("They saw you as a huge idiot\nwho would ruin the company.");
message("I had no choice but to fire you!");
runscript("pw_hidemessagebox");
wait(30);
loadandplaysfx("sfx-weakgunshot.wav",0);
wait(60);
runscript("pw_setnameboxtowares");
runscript("pw_showmessagebox");
message("Goodbye, ya old coot.");

runscript("pw_setnameboxtoalbert");
loadandplaysfx("sfx-realization.wav",0);
message("Oh my God, is he dead?");
loadandplaysfx("sfx-dramapound.wav",0);
message("Ahhh! Murder! Murder!");
loadandplaysfx("sfx-footsteps.wav",0);
wait(150);
loadandplaysfx("sfx-bell.wav",0);
wait(15);
loadandplaysfx("sfx-bell.wav",0);
wait(60);

runscript("pw_setnameboxtowares");
message("What!? There was\nsomeone else here?");
setvar([pw_evidtoshowinbox],81008);
runscript("pw_showflyingevidboxright");
message("Heh, that dummy didn't even notice\nthis here phone.");
runscript("pw_hideflyingevidboxright");
loadandplaysfx("sfx-realization.wav",0);
messageauto("Wait, Wares got it! Wares'll just\nmake it look like...");
wait(20);
loadandplaysfx("sfx-dramapound.wav",0);
messageappend(" he did it!");
message("Wares, you're a genius.");
wait(20);
loadandplaysfx("sfx-phone5.wav",0);
wait(20);
loadandplaysfx("sfx-phone1.wav",0);
wait(20);
loadandplaysfx("sfx-phone1.wav",0);
wait(45);
loadandplaysfx("sfx-phonebeep.wav",0);
wait(120);

setvar([pw_evidtoshowinbox],91014);
runscript("pw_showflyingevidboxleft");
runscript("pw_setnameboxtoofficerf");
message("Hello. Thank you for calling 911,\nwhere we buy and sell used...\nuh, whoops. Never mind.");
message("What is your emergency?");

runscript("pw_setnameboxtowares");
message("Yeah, uh... this is Robert Wares.\nThere's been a terrible murder\nat the Taco Dell!");
message("Some young feller killed the cashier\nwit' a rolling pin, and then\nhe ran off.");
message("You gotta catch him, before he\nkills again!");

runscript("pw_setnameboxtoofficerf");
message("All right, sir. Don't worry, the\ncity police force is on the job.");
runscript("pw_hideflyingevidboxleft");

runscript("pw_setnameboxtowares");
message("Heh heh heh...");
runscript("pw_hidemessagebox");

wait(60);
loadandplaysfx("sfx-sirens.wav",0);
wait(180);

runscript("pw_showmessagebox");
runscript("pw_setnameboxtoofficer");
message("Hold it right there, son.");

runscript("pw_setnameboxtoalbert");
message("Please, sir, you gotta help me!\nThere's been a terrible murder!");

runscript("pw_setnameboxtoofficer");
message("We already know, son.");
message("You're under arrest for\nthe murder of Joe Quilla.");
runscript("pw_hidemessagebox");
wait(60);
jumptoscript("case1_courtend");

[case1_courtend]
placefadescreen(1,"I");
placefade("pw_bg","bg",0,"I");
placefade("pw_char","char",0,"I");
runscript("pw_hidemessagebox");
runscript("pw_showwitnessstand");
runscript("pw_enablewaresmad");
placefadescreen(120,"O");
wait(120);
loadandplaymp3("music/35 - Idiocy.mp3",0,"");
runscript("pw_showmessagebox");
runscript("pw_setnameboxtowares");
messageauto("This... is impossible!");
runscript("pw_enablewareseat");
messageappend("\nHow did you figure out\nWare's perfect plan!?");

setvar([sld_targetcharanim],"pw_enabledamionconfident");
runscript("pw_slidewitnesstoattorney");
runscript("pw_setnameboxtodamion");
message("Well, to be honest, it was\npretty obvious.");
message("By revealing that you were once\na Taco Dell employee, you saved\nyourself in the moment...");
runscript("pw_enabledamiondeskslam");
message("...but in the long run, you\nended up incriminating yourself.");
messageauto("Admit it, Wares.");
wait(10);
runscript("pw_enabledamionpointing");
loadandplaysfx("sfx-objection.wav",0);
messageappend(" You killed\nJoe Quilla!");

setvar([sld_targetcharanim],"pw_enablewareseat");
runscript("pw_slideattoneytowitness");
runscript("pw_setnameboxtowares");
message("Curse you, you tricky attorney!");
runscript("pw_enablewaresmad");
loadandplaysfx("sfx-dramapound.wav",0);
placeshake("pw_bg","bg",20,9,19);
placeshake("","msgbox",20,9,19);
placeshake("pwnamebox","genobj",20,9,19);
placeshake("pw_char","char",20,9,19);
message("Wares killed that fool Quilla alright!");
message("And he would have gotten away with\nit too, if it weren't for that meddling\nattorney and his dumb evidence!");

runscript("pw_showjudgetable");
runscript("pw_enablejudgeworthmad");
runscript("pw_setnameboxtojudge");
message("I think I've heard enough.");
message("Bailiff, take this madman away!");

runscript("pw_showwitnessstand");
runscript("pw_enablewareseat");
runscript("pw_setnameboxtowares");
message("Wares will be the greatest hot dog\ntycoon in the world if it kills him,\nand anyone else in his way!");
runscript("pw_enablewaresseedthrow");
message("When Wares get out of prison,\nyou're gonna get what coming\nto ya, Mr. Attorney!");
runscript("pw_enablewareseat");
message("The great Wares family will\nrise once more!");
runscript("pw_enablewaresmad");
message("The Wares hot dog empire will be\nthe greatest fast food chain\nin the world!");

runscript("pw_setnameboxtobailiff");
runscript("setlipsynctonoone");
message("All right, buddy. Let's go.");

runscript("setlipsynctochar");
runscript("pw_setnameboxtowares");
message("Get your hands of Wares!");
runscript("pw_enablewareseat");
message("You're gonna be hearing from\nWares's lawyer!");
placefade("pw_char","char",40,"O");
wait(100);
stopmp3(0);

runscript("pw_hidemessagebox");
placefadescreen(60,"I");
wait(80);
placefade("pw_char","char",0,"I");
runscript("pw_showjudgetable");
runscript("pw_enablejudgeworththink");
placefadescreen(60,"O");
wait(60);
loadandplaymp3("music/05 - Trial - Theme of Judgment.mp3",0,"");
runscript("pw_enablejudgeworthnormal");
runscript("pw_showmessagebox");
runscript("pw_setnameboxtojudge");
message("Well, that was quite a surprising\nturn of events.");
runscript("pw_enablejudgeworthsurprised");
message("I was sure that Mr. Isaac was\nguilty the entire time!");

runscript("pw_showattorneystand");
runscript("pw_enabledamionsweating");
runscript("pw_setnameboxtodamion");
runscript("pw_bluemessagebox");
runscript("setlipsynctonoone");
message("(So much for judicial impartiality.)");
runscript("pw_whitemessagebox");
runscript("setlipsynctochar");

runscript("pw_showjudgetable");
runscript("pw_enablejudgeworthmad");
runscript("pw_setnameboxtojudge");
message("I think the prosecution's case\nis pretty much... well, there's\nnothing left of it.");

runscript("pw_showprosecutorstand");
runscript("pw_enablemesonstrained");
runscript("pw_setnameboxtomeson");
message("Just shut up, Your Honor.");

runscript("pw_showjudgetable");
runscript("pw_enablejudgeworthnormal");
runscript("pw_setnameboxtojudge");
message("Mr. Shard, you are clearly\na very talented lawyer.");
runscript("pw_enablejudgeworthsurprised");
message("When you came into court today,\nI thought you were a bumbling idiot\nunable to defend a jaywalker.");
runscript("pw_enablejudgeworthnormal");
message("Clearly the Shard family is as adept\nat defense as at prosecution.");
message("At this point, this is merely\na technicality, but...");
message("This court finds the\ndefendant, Mr. Albert Isaac...");
stopmp3(0);
runscript("pw_enablejudgeworthmad");
runscript("pw_shownotguilty");
replacetexture(4805,"damionshard/CROWtAlbertIsaac.png");
runscript("pw_showcourtroomoverview");
loadandplaysfx("sfx-gallerycheer.wav",0);
wait(144);
runscript("pw_hidecourtroomoverview");
runscript("pw_showgavelhit");
runscript("pw_showjudgetable");
runscript("showpwchar");
runscript("pw_enablejudgeworthnormal");
runscript("pw_setnameboxtojudge");
runscript("setlipsynctochar");
runscript("pw_showmessagebox");
message("The court is adjourned.");
message("Now if you'll excuse me, I have\nto use the little judge's room.");
placefade("pw_char","char",40,"O");
wait(100);
runscript("pw_hidemessagebox");
placefade("pw_bg","bg",50,"O");
wait(100);
jumptoscript("case1_victory");

[case1_victory]
runscript("pw_settypewritermsgbox");
runscript("pw_greenmessagebox");
runscript("pw_showmessagebox");
messageauto("August 10, 1:00 PM");
wait(10);
messageappendauto("\nDistrict Court");
wait(10);
messageappend("\nDefendant Lobby No. 2");
loadandplaymp3("music/15 - Won the Trial! Dawn of a New Day.mp3",0,"");
placefade("pw_bg","bg",1,"I");
runscript("pw_usepwbgcourthall");
runscript("pw_bluemessagebox");
runscript("pw_showmessagebox");
runscript("pw_setnameboxtodamion");
runscript("setlipsynctonoone");
message("(Wow... I won.)");
message("(I, a greenhorn defense attorney,\ndefeated Meson von Vharnado,\nprosecuting prodigy.)");
runscript("pw_hidemessagebox");
runscript("pw_whitemessagebox");
runscript("pw_enableannettecheerful");
runscript("setlipsynctochar");
placefade("pw_char","char",10,"I");
wait(10);
placeflash(5);
loadandplaysfx("sfx-lightbulb.wav",0);
runscript("pw_setnameboxtoannette");
runscript("pw_showmessagebox");
message("Mr. Damion, you kicked\nthat prosecutor's butt!\nAnd you won too.");
message("Congratulations!");
runscript("setlipsynctonoone");
runscript("pw_setnameboxtodamion");
message("Well, I couldn't have done it\nwithout your help.");
message("That evidence you dug up was what\nmade my case.");
runscript("setlipsynctochar");
runscript("pw_setnameboxtoannette");
message("Don't be modest, Mr. Damion.\nYou did a great job.");
runscript("pw_bluemessagebox");
runscript("pw_setnameboxtodamion");
runscript("setlipsynctonoone");
message("(Well, she seems excited.)");
message("(Speaking of excited people,\nwhere's my client?)");
runscript("pw_whitemessagebox");
runscript("pw_hidemessagebox");
placefade("pw_char","char",20,"O");
wait(20);
runscript("pw_enablealbertnormal");
placefade("pw_char","char",20,"I");
wait(20);
runscript("setlipsynctochar");
runscript("pw_setnameboxtoalbert");
runscript("pw_showmessagebox");
message("Thank you, Mr. Shard!");
message("I knew you'd figure it all out,\nand prove my innocence!");
runscript("pw_enablealbertbored");
message("But still, I can't help but\nfeel that we've forgotten\nsomething.");
message("It was something that was $c{colorpworange}never\nreally explained.");
message("Ah, I'm a wee bit absent-minded.\nDo you remember, Mr. Shard?");
runscript("setlipsynctonoone");
runscript("pw_bluemessagebox");
runscript("case1_question8");
placefade("pw_char","char",20,"O");
wait(20);

stopmp3(0);
runscript("pw_enablemesonemo");
placefade("pw_char","char",20,"I");
wait(20);
runscript("pw_whitemessagebox");
runscript("pw_setnameboxtomeson");
runscript("setlipsynctochar");
message("Hello, Shard.");
runscript("setlipsynctonoone");
runscript("pw_setnameboxtodamion");
message("Prosecutor von Vharnado? What\nare you doing here?");
runscript("setlipsynctochar");
runscript("pw_setnameboxtomeson");
message("It's not every day that I lose\nmy first trial in my prosecuting\ncareer, Mr. Shard.");
message("Especially not to a dog\nlike you.");
runscript("setlipsynctonoone");
runscript("pw_setnameboxtodamion");
message("Is this going somewhere?");
runscript("setlipsynctochar");
runscript("pw_setnameboxtomeson");
message("Well, I just thought I'd say...\n");
runscript("pw_enablemesonnervous");
loadandplaymp3("music/15 - Won the Trial! Dawn of a New Day.mp3",0,"");
message("Congratulations, Mr. Shard.");
runscript("pw_enablemesonsidelook");
message("I think you earned this victory.");
runscript("pw_enablemesonmad");
message("But know this: one day, I will\nreturn to face you in court again.");
message("And then, Mr. Shard,\nit will be your turn\nto lose your perfect record.");
runscript("pw_enablemesonsidelook");
message("So whatever you do, don't lose\nbefore then.");
runscript("setlipsynctonoone");
runscript("pw_setnameboxtodamion");
message("Well actually, Mr. von Vharnado,\nI had something to ask you.");
message("Why did you save me in\nthe trial today?");
runscript("setlipsynctochar");
runscript("pw_setnameboxtomeson");
message("What?");
runscript("setlipsynctonoone");
runscript("pw_setnameboxtodamion");
message("In court today, you asked Wares\nto testify again, even though you\nwere about to win.");
message("If you hadn't done that,\nthere was no way I\ncould have beaten you.");
runscript("setlipsynctochar");
runscript("pw_setnameboxtomeson");
messageauto("I did it because...");
wait(10);
runscript("pw_enablemesonforward");
messageappend(" it was just\nthe right thing to do.");
runscript("pw_enablemesonmad");
message("Not that a Shard would know\nanything about that.");
placefade("pw_char","char",20,"O");
wait(20);
runscript("pw_setnameboxtodamion");
message("Wait! Mr. von Vharnado!");
runscript("pw_enableannettecheerful");
placefade("pw_char","char",20,"I");
wait(20);
runscript("pw_setnameboxtoannette");
message("Oh, don't worry about him, Damion.\nWhat matters is that we won!");
runscript("pw_enableannettenormal");
message("By the way, Lord Shard called.\nHe wasn't able to return in time\nto see the end of the trial.");
message("But he sounded a bit happier\nwhen he heard that you had won.");
runscript("pw_enableannettethinking");
message("Didn't ask about the trial\nat all, though.");
runscript("pw_enableannettecheerful");
message("Anyway, let's go grab some tacos!\nI'm starving.");
runscript("setlipsynctonoone");
runscript("pw_setnameboxtodamion");
message("I thought you just ate!");
runscript("setlipsynctochar");
runscript("pw_enableannetteconfident");
runscript("pw_setnameboxtoannette");
messageauto("Well,");
wait(10);
messageappend(" I have a second stomach\nfor tacos.");
runscript("pw_hidemessagebox");
placefade("pw_char","char",80,"O");
placefade("pw_bg","bg",80,"O");
wait(80);
jumptoscript("case1_caseend");

[case1_caseend]
runscript("pw_setnameboxtodamion");
runscript("setlipsynctonoone");
runscript("pw_showmessagebox");
message("And so, my first case ended\non a surprisingly happy note.");
runscript("pw_enablemesonemo");
placefade("pw_char","char",10,"I");
message("I defeated Meson von Vharnado,\nthe son of my father's archrival.");
runscript("pw_enablealbertnormal");
messageauto("I proved an innocent man's case,\nand found the");
runscript("pw_enablewaresmad");
messageappend(" real murderer\nat the same time.");
placefade("pw_char","char",10,"O");
message("Little did I know, my troubles\nwere only just beginning.");
wait(60);
runscript("hidepwchar");
runscript("pw_hidemessagebox");
setbg(51000);
setbgsizefromtexture();
placefade("pw_bg","bg",50,"I");
wait(200);
placefade("pw_bg","bg",100,"O");
wait(100);
stopmp3(0);
runscript("hidepwmenu");
changetitle("Damion Shard - Ace Attorney");
runscript("ds_endcase");