#!/bin/sh
SERVER_SCRIPT=/opt/codebox/bin/codebox.js
exec ${SERVER_SCRIPT} run "$@" -p 8000 -o
