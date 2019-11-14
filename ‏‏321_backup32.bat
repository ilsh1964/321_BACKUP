REM VERSION 1.4 14/11/2019
set username=ilan
C:
CD C:\321_BACKUP\

REM BACKUP 2: LOCAL FS BACKUP
rclone32.exe --skip-links --log-file 321_backup.log  --filter-from  .\filter_pic.txt  copy c:\Users\%username%\  d:\BACKUP\PICTURES
rclone32.exe  --skip-links --log-file 321_backup.log  --filter-from  .\filter_doc.txt  copy c:\Users\%username%\  d:\BACKUP\DOCUMENTS
rclone32.exe  --skip-links --log-file 321_backup.log  --filter-from  .\filter_mus.txt  copy c:\Users\%username%\  d:\BACKUP\MUSIC
rclone32.exe  --skip-links --log-file 321_backup.log  --filter-from  .\filter_vid.txt  copy c:\Users\%username%\  d:\BACKUP\VIDEOS

REM BACKUP 3: CLOUD BACKUP
rclone32.exe  --skip-links --log-file 321_backup.log  --filter-from  .\filter_pic.txt  copy c:\Users\%username%\  remote:/BACKUP/PICTURES
rclone32.exe  --skip-links --log-file 321_backup.log  --filter-from  .\filter_doc.txt  copy c:\Users\%username%\  remote:/BACKUP/DOCUMENTS
rclone32.exe  --skip-links --log-file 321_backup.log  --filter-from  .\filter_mus.txt  copy c:\Users\%username%\  remote:/BACKUP/MUSIC
rclone32.exe  --skip-links --log-file 321_backup.log  --filter-from  .\filter_vid.txt  copy c:\Users\%username%\  remote:/BACKUP/VIDEOS

