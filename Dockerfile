FROM rocker/tidyverse:3.6.3
RUN apt update && apt install -y --no-install-recommends libjpeg62-turbo-dev zlib1g-dev libpng-dev \
	&& apt install -y --no-install-recommends libx11-dev libcairo2-dev libxt-dev \
	&& apt install -y libgsl-dev \
 	&& rm -rf /var/lib/apt/lists/*
