rocker --network host --privileged --nvidia --x11 --user --name autoware \
  	--env="USER" \
	--volume /dev \
	--volume $HOME/autoware:$HOME/autoware \
	--volume $HOME/svl \
	--volume $HOME/.config/unity3d/LGElectronics \
	-- ghcr.io/autowarefoundation/autoware-universe:latest-cuda
