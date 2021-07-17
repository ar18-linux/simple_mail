#!/usr/bin/env bash

template="${1}"
template_text="$(cat "/home/{{USER_NAME}}/.config/ar18/simple_mail/${template}")"
template_text=${template_text//{{HOST_NAME}}/${HOST}}

echo -e "${template_text}" | sendmail -v alexander.remus@googlemail.com
