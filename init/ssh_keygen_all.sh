#!/bin/bash

echo "generating ssh keys"
ssh-keygen -t rsa -b 4096 -f ~/.ssh/id_rsa -N -I -v
echo ""
ssh-keygen -t dsa -f ~/.ssh/id_dsa -N -I -v
echo ""
ssh-keygen -t ecdsa -b 521 -f ~/.ssh/id_ecdsa -N -I -v
echo ""
ssh-keygen -t ed25519 -f ~/.ssh/ed25519 -N -I -v
