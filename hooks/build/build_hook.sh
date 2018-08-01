#!/usr/bin/env bash
############################################################################
#
# AVI CONFIDENTIAL
# __________________
#
# [2013] - [2018] Avi Networks Incorporated
# All Rights Reserved.
#
# NOTICE: All information contained herein is, and remains the property
# of Avi Networks Incorporated and its suppliers, if any. The intellectual
# and technical concepts contained herein are proprietary to Avi Networks
# Incorporated, and its suppliers and are covered by U.S. and Foreign
# Patents, patents in process, and are protected by trade secret or
# copyright law, and other laws. Dissemination of this information or
# reproduction of this material is strictly forbidden unless prior written
# permission is obtained from Avi Networks Incorporated.
###
{
    if [ $CACHE_TAG ]; then
        AVI_VERSION=$CACHE_TAG
        AVI_SDK_VERSION=$CACHE_TAG
    else
        AVI_VERSION=18.1.3
        AVI_SDK_VERSION=18.1.3
    fi

    docker build -t smarunich/avitools:$AVI_VERSION --build-arg avi_sdk_version=$AVI_SDK_VERSION --build-arg avi_version=$AVI_VERSION .
}
