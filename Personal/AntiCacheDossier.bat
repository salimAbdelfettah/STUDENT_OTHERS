echo off
echo ------------------------------------------------------------
echo Etape 1 : Recuperation des dossiers chaches
echo ------------------------------------------------------------
echo ...
attrib -s -h /s /d
echo ------------------------------------------------------------
echo Etape 1 Ok
echo ------------------------------------------------------------
echo Etape 2 : Suppression des racourcis
echo ------------------------------------------------------------
echo ...
del *.lnk
echo ------------------------------------------------------------
echo Etape 2 Ok
echo ------------------------------------------------------------
echo Etape 3 : Suppression de la corbeille (Dossiers RECYCLE)
echo ------------------------------------------------------------
echo ...
rmdir /s /q RECYCLE
echo ...
rmdir /s /q $RECYCLE.BIN
echo ------------------------------------------------------------
echo Etape 3 Ok
echo ------------------------------------------------------------
echo ** Toutes les etapes ont ete effectuees avec succes
echo ** Merci d'avoir utilise AntiCacheDossier (By Sa Li Mo)
pause
echo on