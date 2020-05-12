# text-2-chromecast

Simple container app to convert text to speech played on chromecast devices

```
./docker/make_container.sh
./docker/run.sh

#From another terminal
echo "Say something" | nc 127.0.0.1 22223
```
