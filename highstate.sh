#!/bin/bash
sudo salt-call --local --file-root srv/salt/ state.highstate
