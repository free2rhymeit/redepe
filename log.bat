echo get ip address VPS
echo IP:
tasklist | find /i "ngrok.exe" >Nul && curl -s localhost:4040/api/tunnels | jq -r .tunnels[0].public_url || echo "Error get IP, please go to address: https://dashboard.ngrok.com/status/tunnels"
echo User: runneradmin
echo Pass: a*C'UZ4Gf^9!\6gG
