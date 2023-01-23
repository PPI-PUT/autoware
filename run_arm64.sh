rocker --network host --privileged --nvidia --group-add video --x11 --user --name autoware \
  	--env="USER" \
	--volume /dev \
	--volume $HOME/autoware:$HOME/autoware \
	-- ghcr.io/autowarefoundation/autoware-universe:humble-latest-arm64
