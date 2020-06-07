# rocker_tidyvese_jpeg_cairo
docker file to extend rocker tidyverse

The original `rocker/tidyverse:3.6.3` gives error when installing the following
packages:

```r
installation of package 'jpeg' had non-zero exit status
installation of package ‘Cairo’ had non-zero exit status
```

### build the container

```bash
$ cd 
$ docker build -t rocker-with-jpeg:3.6.3 .

$ docker run -it rocker-with-jpeg:3.6.3 bash

$ docker tag rocker-with-jpeg:3.6.3 crazyhottommy/rocker-with-jpeg:3.6.3
$ docker push crazyhottommy/rocker-with-jpeg:3.6.3
$ R 
> install.package(c("jpeg", "Cario"))

```