REM VERSION 2.0 25/03/2020
set username=ilan
C:
CD C:\321_BACKUP\

REM BACKUP 2: LOCAL FS BACKUP
rclone.exe --skip-links --log-file 321_backup.log  --filter-from  .\filter_pic.txt  copy c:\Users\%username%\  d:\BACKUP\PICTURES
rclone.exe  --skip-links --log-file 321_backup.log  --filter-from  .\filter_doc.txt  copy c:\Users\%username%\  d:\BACKUP\DOCUMENTS
rclone.exe  --skip-links --log-file 321_backup.log  --filter-from  .\filter_mus.txt  copy c:\Users\%username%\  d:\BACKUP\MUSIC
rclone.exe  --skip-links --log-file 321_backup.log  --filter-from  .\filter_vid.txt  copy c:\Users\%username%\  d:\BACKUP\VIDEOS

REM BACKUP 3: CLOUD BACKUP
rclone.exe  --skip-links --log-file 321_backup.log  --filter-from  .\filter_pic.txt  copy c:\Users\%username%\  remote:/BACKUP/PICTURES
rclone.exe  --skip-links --log-file 321_backup.log  --filter-from  .\filter_doc.txt  copy c:\Users\%username%\  remote:/BACKUP/DOCUMENTS
rclone.exe  --skip-links --log-file 321_backup.log  --filter-from  .\filter_mus.txt  copy c:\Users\%username%\  remote:/BACKUP/MUSIC
rclone.exe  --skip-links --log-file 321_backup.log  --filter-from  .\filter_vid.txt  copy c:\Users\%username%\  remote:/BACKUP/VIDEOS

