mkdir gamedata
mkdir gamedata\configs
mkdir gamedata\scripts
mkdir gamedata\configs\igi_tasks
mkdir gamedata\configs\igi_tasks\tasks
mkdir gamedata\configs\igi_tasks\pack_meta
mkdir gamedata\configs\misc
mkdir gamedata\configs\misc\task
mkdir gamedata\configs\text
mkdir gamedata\configs\text\eng
mkdir gamedata\configs\text\rus

IF "%1"=="" ( GOTO Label )

SET meta_file="gamedata\configs\igi_tasks\pack_meta\meta_%1.ltx"
echo [%1] > %meta_file%
echo prefix              = %1 >> %meta_file%
echo name                = %1 >> %meta_file%
echo author              = unknown >> %meta_file%
echo builder             = unknown >> %meta_file%
echo description_prefix  = %1 >> %meta_file%

mkdir "gamedata\configs\igi_tasks\tasks\%1"

:Label
DEL %0
