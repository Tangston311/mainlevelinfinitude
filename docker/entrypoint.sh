#!/bin/bash

# Generate the config file from environment variables
echo "{\"app_secret\":\"$APP_SECRET\",\"pass_reqs\":$PASS_REQS,\"serial_tty\":\"$SERIAL_TTY\",\"serial_socket\":\"$SERIAL_SOCKET\"}" > /mainlevelinfinitude/infinitude.json

if [ -z ${MODE+x} ]; then 
	echo "MODE is not set.  Defaulting to Production";
	MODE=Production
else 
	echo "MODE is set to $MODE"; 
fi

cd /mainlevelinfinitude && ./infinitude daemon -l http://:8000
