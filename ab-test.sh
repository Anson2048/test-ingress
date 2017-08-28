#!/bin/bash

set -x
ab -n 1000000 -c 5 http://anson2049.com:32080/
