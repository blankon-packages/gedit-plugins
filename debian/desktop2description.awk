# converts *.desktop and *.desktop.in files with "_Name=" and "_Description"
# to "* $name: $description" entries for the Description: control field

BEGIN { FS="="; name = ""; description = ""; }

/^[_]?Name=/ { name = $2;}
/^[_]?Description=/ { description = $2; }

END { print "* " name ": " description; }
