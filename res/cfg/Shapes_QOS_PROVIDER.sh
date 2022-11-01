#!/bin/sh
#******************************************************************************
# (C) Copyright 2020-2022 Real-Time Innovations, Inc.  All rights reserved.
#
# The use of this software is governed by the terms specified in the 
# RTI Labs License Agreement, available at https://www.rti.com/terms/RTILabs. 
#
# By accessing, downloading, or otherwise using this software, you agree to 
# be bound by those terms.
#*****************************************************************************
# USAGE:
#   Source the environment variables into the current shell
#     . Shapes_QOS_PROVIDER.sh
#*****************************************************************************

# --- Project Directory ---
if [ "${DATABUSHOME}" = "" ]; then echo "DATABUSHOME Undefined!" ; return; fi

# -- Base Environment ---
[ -f $DATABUSHOME/res/cfg/QOS_PROVIDER.sh ] && 
. $DATABUSHOME/res/cfg/QOS_PROVIDER.sh || NDDS_QOS_PROFILES=""


# --- QoS Profiles ---

# QoS: Services
NDDS_QOS_PROFILES+=";$DATABUSHOME/res/qos/services/Shapes_qos.xml"


# --- Data-Oriented Interfaces ---

# Interfaces: Services
NDDS_QOS_PROFILES+=";$DATABUSHOME/if/Shapes_svc.xml"


# --- Show Environment --- 
echo NDDS_QOS_PROFILES=$NDDS_QOS_PROFILES
