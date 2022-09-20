#!/bin/bash

set -xe

#Variables
PROJECT_NAME="jillsmulti/.scripts"

WP_DEV_SSH="jillsmultidev@jillsmultidev.ssh.wpengine.net"
WP_DEV_INSTALL="jillsmultidev"
WP_DEV_URL="jillsmultidev.wpengine.com"

WP_STG_SSH="jillsmultistg@jillsmultistg.ssh.wpengine.net"
WP_STG_INSTALL="jillsmultistg"
WP_STG_URL="jillsmultistg.wpengine.com"

WP_PRD_SSH="jillsmulti@jillsmulti.ssh.wpengine.net"
WP_PRD_INSTALL="jillsmulti"
WP_PRD_URL="multi.jillions.nyc"
WP_PRD_WWW_URL="multi.jillions.nyc"

#DO NOT CHANGE - DYNAMICALLY SOURCED FROM GITHUB ACTIONS
pwd="pwd"
REPO_NAME="gitRepoName"
BRANCH="gitBranchName"