# ubuntu_heroes

The first command you need to type to get started:

```bash
sudo apt update && sudo apt upgrade -y ; sudo apt install wget git -y;
cd ;
git clone https://github.com/paul-goodall/ubuntu_heroes.git;
cd ubuntu_heroes;
```

Once done, you can set-up the ssh-tunnel from the host-side like so:

```bash
ssh -L 5901:127.0.0.1:5901 -N -f -l server_user server_ip_address
```

Then connect to the VNC with:

```bash
vncviewer localhost:1
```


