#!/usr/bin/env bash

hugo && rsync -av public/ debian@91.92.155.156:/home/m426.frickelbude.ch/public/
