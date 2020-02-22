#!/bin/bash
# -------------------------------------------------------
#Rsync System Snapshot Script
# -------------------------------------------------------
#Basic script to backup / to external NAS

unset PATH
# --------------- system commands -----------------------
ID=/usr/bin/id;
ECHO=/bin/echo;

RM=/bin/rm;
MV=/bin/mv;
CP=/bin/cp;
TOUCH=/bin/touch;
RSYNC=/usr/bin/rsync;

# --------------- file locations ------------------------
SNAPSHOT=/home/cabe/Nas_Docs/Backup/GentooSnap;
EXCLUDES=/home/cabe/bin/backup_exclude;

# --------------- script functions ----------------------
# check if running as root
if (( `$ID -u` != 0 )); then { $ECHO "Sorry, must be root.  Exiting..."; exit; } fi

# rotating snapshots of /

# delete the oldest snapshot, if it exists
if [ -d $SNAPSHOT/daily.3 ] ; then			\
$RM -rf $SNAPSHOT/daily.3 ;				\
fi ;

# rename middle snapshots back by one, if they exist
if [ -d $SNAPSHOT/daily.2 ] ; then			\
$MV $SNAPSHOT/daily.2 $SNAPSHOT/daily.3 ; 		\
fi;
if [ -d $SNAPSHOT/daily.1 ] ; then			\
$MV $SNAPSHOT/daily.1 $SNAPSHOT/daily.2 ; 		\
fi;

# make a hard-link-only copy of the latest snapshot, if that exists
if [ -d $SNAPSHOT/daily.0 ] ; then			\
$CP -al $SNAPSHOT/daily.0 $SNAPSHOT/daily.1 ;		\
fi;

# rsync from the system into the latest snapshot
$RSYNC								\
	-aHAXv --delete --delete-excluded				\
	--exclude-from="$EXCLUDES"				\
	/ $SNAPSHOT/daily.0 ;

# update the time of daily.0 to reflect the snapshot time
$TOUCH $SNAPSHOT/daily.0 ;

