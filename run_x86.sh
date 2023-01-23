rocker --network host --privileged --nvidia --x11 --user --name autoware \
  	--env="USER" \
	--volume /dev \
	--volume $HOME/autoware:$HOME/autoware \
	-- ghcr.io/autowarefoundation/autoware-universe:latest-cuda
