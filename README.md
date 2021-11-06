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
