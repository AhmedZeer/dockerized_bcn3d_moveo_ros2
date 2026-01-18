```sh
# nvidia deps
sudo apt-get install -y nvidia-container-toolkit
sudo nvidia-ctk runtime configure --runtime=docker
sudo systemctl restart docker

# enable gui
xhost +local:docker

# compose docker
docker compose up -d

# run docker
docker exec -it ros2_humble_sim bash
```
