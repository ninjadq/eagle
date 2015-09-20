# This is a way to run shadowsocks server on docker

1. build the images
    docker build .

2. replace the password on file `shadowsocksserver.json`

3. copy file `ssserver.service` to peroper location, ep. in coreos `/etc/systemd/system/`

  ```bash
  cp ssserver.service /etc/systemd/system/
  ```

4. run ssserver everytime you restart your machine
    ```bash
    systemctl enable server.service
    ```
    
5. start shadowsocks server
    ```bash
    systemctl start server
    ```
    
6. client side using `sslocal` to connect server
    ```bash
    pip install shadowsocks
    sslocal -s fuck.ninjadq.com -p 8080 -b 127.0.0.1 -l 1080 -k <PASSWORD> -t 3600 -m aes-256-cfb
    ```
