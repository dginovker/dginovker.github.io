See website: https://dginovker.github.io/

Inspiration: https://github.com/LantaoYu/lantaoyu.github.io

## Running

Building Docker image
```
docker build . -t academicpages -f Dockerfile
```

Running Docker container
```
docker run -it -p 4000:4000 --mount type=bind,src=$(pwd),dst=/app academicpages:latest bash
```

```
bundle clean
bundle install
bundle exec jekyll liveserve --host 0.0.0.0
```

## Todo

* Make about.md images smaller
* Make any dcress01@uoguelph.ca become danielginovker@gmail.com
* Make Docker file run the bundle commands automatically
* Change desc to "Projects solving real problems"