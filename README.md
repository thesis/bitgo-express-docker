Dockerfile for [BitGo Express](https://github.com/BitGo/BitGoJS) signing server.

Example usage:

To build:
```
docker build . -t testrepo573/bitgo-express-docker
```

Run in test env:
```bash
docker run -p 3080:3080 --restart always testrepo573/bitgo-express-docker
```
Run in prod env:
```bash
docker run -p 3080:3080 -e prod=true --restart always testrepo573/bitgo-express-docker
```
