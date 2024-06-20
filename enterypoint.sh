#!/bin/bash
wget https://github.com/eooce/choreo-2go/raw/main/files/server
sleep 2
chmod +x server
sleep 2
nohup ./server tunnel --edge-ip-version auto --no-autoupdate --protocol http2 run --token eyJhIjoiZmM5YWQ3MmI4ZTYyZGZkMzMxZTk1MjY3MjA1YjhmZGUiLCJ0IjoiZmViMGQ3ZGYtZDU0Yi00OTRlLTlkM2YtMTM3Mzc3OTUzY2Q3IiwicyI6Ik1EZGpOVGt3TlRZdFlqVXpZUzAwTXpSa0xUazRNVE10TkdNelltWXpaVFJqWlRWaiJ9 >/dev/null 2>&1 &
npm start
