rocker --network host --privileged --nvidia runtime --group-add video --x11 --user --name autoware \
  	--env="USER" \
	--env="RMW_IMPLEMENTATION=rmw_cyclonedds_cpp" \
	--env="ROS_DOMAIN_ID=0" \
	--env="ROS_LOCALHOST_ONLY=0" \
	--env="VEHICLE_ID=default" \
	--volume /dev \
	--volume $HOME/autoware:$HOME/autoware \
	--volume $HOME/autoware_map:$HOME/autoware_map \
	-- ghcr.io/autowarefoundation/autoware-universe:humble-latest-cuda-arm64
