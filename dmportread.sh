#!/system/bin/sh

# Fix dmportread to prevent rild crash(aka undead call fix) - bftb0
_DIR='/data/data/com.android.dmportread'
_HIST="$_DIR"'/history'

# create dmportread directory if it doesn't exist
log -p i -t dmportread "checking if dmportread directory exists";
if [ ! -d $_DIR ]; then
  log -p i -t dmportread "directory does NOT exist...creating";
  mkdir $_DIR
  chown radio:radio $_DIR
  chmod 755 $_DIR
fi

log -p i -t dmportread "making a new and empty history file";
# if the history file exists already, clobber it
cp /dev/null $_HIST
chown radio:radio $_HIST
chmod 666 $_HIST
log -p i -t dmportread "done with dmportread fix";
