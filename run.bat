set /a check = 0
for %%l in (60,61,62,63,64) do call:a %%l

pause&goto:eof

:a



cd C:\Users\hm\Desktop\fake
cd.>%1

git add %1




git commit --date="%1 day ago" -m "%1"
git push fake master

set /a check = 1



goto:eof




pause

cd.>heart

if  %check% == 0 (
  git add heart
) else (
  git rm heart
)