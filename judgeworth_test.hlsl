#include(pwlib/pwlib.hlsl)
#includeinfolder(damionshard/dsaascripts)

[game]
jumptoscript("setup");

[setup]
runscript("pw_initpwlib");
runscript("pw_initpwbgs");
changetitle("Judge's Brother Test");
jumptoscript("run");

[run]
runscript("showpwchar");
runscript("pw_initpwbg_gs4_judgestand");
runscript("pw_usepwbg_gs4_judgestand");
runscript("pw_showjudgetable");
runscript("pw_showadvarrowmenu");
runscript("pw_showmessagebox");
runscript("pw_createjudgeworth");
runscript("pw_enablejudgeworthnormal");
runscript("setlipsynctochar");
runscript("pw_setnameboxtojudge");
message("This is a test script for Judge\nJudgeworth's Animations.");
message("This is Judge Judgeworth's\nNormal Animation.");
runscript("pw_enablejudgeworthsurprised");
message("This is Judge Judgeworth's\nSurprised Animation.");
runscript("pw_enablejudgeworthmad");
message("This is Judge Judgeworth's\nMad Animation.");
runscript("pw_enablejudgeworththink");
message("This is Judge Judgeworth's\nThinking Animation.");
runscript("pw_enablejudgeworthnod");
message("This is Judge Judgeworth's\nNodding Animation.");
runscript("pw_enablejudgeworthno");
message("This is Judge Judgeworth's\nNegating Animation.");
runscript("pw_enablejudgeworthnormal");
message("This is the end of Judge\nJudgeworth's Animation Test.");
message("Let the Force be with you.");