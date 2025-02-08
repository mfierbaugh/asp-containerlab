#!/bin/bash

# Script to update the clab version

containerlab version upgrade
echo "Containerlab version updated to $(containerlab version)" >> update_clab.log