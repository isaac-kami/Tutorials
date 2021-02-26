#!/bin/bash

terraform output | sed 's/"//g' | awk {'print $3,$1'} >> /etc/hosts