Dockerfile for [BitGo Express](https://github.com/BitGo/BitGoJS) signing server.

Example usage:

For test env:
```bash
docker run -d -p 3080:3080 -e test --restart always cardforcoin/bitgo-express
```
For prod env:
```bash
docker run -d -p 3080:3080 -e prod --restart always cardforcoin/bitgo-express
```
