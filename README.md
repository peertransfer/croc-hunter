# croc-hunter

[![wercker status](https://app.wercker.com/status/68de0e8f25dd85bd453a98b711ec41e3/s/master "wercker status")](https://app.wercker.com/project/byKey/68de0e8f25dd85bd453a98b711ec41e3)

[![](https://images.microbadger.com/badges/image/lachlanevenson/croc-hunter.svg)](http://microbadger.com/images/lachlanevenson/croc-hunter "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/lachlanevenson/croc-hunter.svg)](http://microbadger.com/images/lachlanevenson/croc-hunter "Get your own version badge on microbadger.com")
[![](https://images.microbadger.com/badges/commit/lachlanevenson/croc-hunter.svg)](http://microbadger.com/images/lachlanevenson/croc-hunter "Get your own commit badge on microbadger.com")


# Deploy using Deis Workflow
## Dockerfile
Add Dockerfile to your repo
```
cd <repo-path>
deis create
git push deis master
```
## Docker images
```
deis create --no-remote
deis pull <repo>/<image-name> -a <app-name>
```
