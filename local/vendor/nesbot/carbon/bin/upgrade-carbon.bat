@ECHO OFF
setlocal DISABLEDELAYEDEXPANSION
SET BIN_TARGET=%~dp0/upgrade-carbon
php "%BIN_TARGET%" %*
