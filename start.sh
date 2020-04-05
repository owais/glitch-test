#! /usr/bin/env bash

setsid sh -c 'python main.py & ./otelcol --config col-config.yaml' &
pgid=$!
echo "Background tasks are running in process group $pgid, kill with kill -TERM -$pgid"
