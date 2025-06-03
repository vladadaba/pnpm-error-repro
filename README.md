# Reproduction

Run:

```
docker build --build-arg PROJECT_DIR=apps/example-app -t my-service .
```

fails with

```
 > [builder 9/9] RUN pnpm --filter "$(node -e "console.log(require('./package.json').name)")" --prod deploy /deploy:
0.353 Packages are copied from the content-addressable store to the virtual store.
0.353   Content-addressable store is at: /deploy/.pnpm-store/v10
0.353   Virtual store is at:             ../../../deploy/node_modules/.pnpm
0.355  WARN  Deployment with a shared lockfile has failed. If this is a bug, please report it at <https://github.com/pnpm/pnpm/issues>.
0.355 As a workaround, add the following to pnpm-workspace.yaml:
0.355
0.355   forceLegacyDeploy: true
0.390  ERR_PNPM_OUTDATED_LOCKFILE  Cannot install with "frozen-lockfile" because pnpm-lock.yaml is not up to date with <ROOT>/package.json
0.390
0.390 Note that in CI environments this setting is true by default. If you still need to run install in such cases, use "pnpm install --no-frozen-lockfile"
0.390
0.390   Failure reason:
0.390   specifiers in the lockfile ({"@nestjs/common":"11.1.2(reflect-metadata@0.2.2)(rxjs@7.8.2)","@nestjs/core":"11.1.2(@nestjs/common@11.1.2(reflect-metadata@0.2.2)(rxjs@7.8.2))(@nestjs/platform-express@11.1.2)(reflect-metadata@0.2.2)(rxjs@7.8.2)","@nestjs/platform-express":"11.1.2(@nestjs/common@11.1.2(reflect-metadata@0.2.2)(rxjs@7.8.2))(@nestjs/core@11.1.2)","axios":"1.9.0","babel-loader":"9.1.3(@babel/core@7.27.4)(webpack@5.99.6(@swc/core@1.11.29))","reflect-metadata":"0.2.2","rxjs":"7.8.2","@eslint/eslintrc":"3.3.1","@eslint/js":"9.28.0","@nestjs/cli":"11.0.7(@swc/cli@0.6.0(@swc/core@1.11.29)(chokidar@4.0.3))(@swc/core@1.11.29)(@types/node@22.15.29)","@nestjs/schematics":"11.0.5(chokidar@4.0.3)(typescript@5.8.3)","@nestjs/testing":"11.1.2(@nestjs/common@11.1.2(reflect-metadata@0.2.2)(rxjs@7.8.2))(@nestjs/core@11.1.2)(@nestjs/platform-express@11.1.2)","@swc/cli":"0.6.0(@swc/core@1.11.29)(chokidar@4.0.3)","@swc/core":"1.11.29","@types/express":"5.0.2","@types/jest":"29.5.14","@types/node":"22.15.29","@types/supertest":"6.0.3","eslint":"9.28.0","eslint-config-prettier":"10.1.5(eslint@9.28.0)","eslint-plugin-prettier":"5.4.1(@types/eslint@9.6.1)(eslint-config-prettier@10.1.5(eslint@9.28.0))(eslint@9.28.0)(prettier@3.5.3)","globals":"16.2.0","jest":"29.7.0(@types/node@22.15.29)(ts-node@10.9.2(@swc/core@1.11.29)(@types/node@22.15.29)(typescript@5.8.3))","prettier":"3.5.3","source-map-support":"0.5.21","supertest":"7.1.1","ts-jest":"29.3.4(@babel/core@7.27.4)(@jest/transform@29.7.0)(@jest/types@29.6.3)(babel-jest@29.7.0(@babel/core@7.27.4))(jest@29.7.0(@types/node@22.15.29)(ts-node@10.9.2(@swc/core@1.11.29)(@types/node@22.15.29)(typescript@5.8.3)))(typescript@5.8.3)","ts-loader":"9.5.2(typescript@5.8.3)(webpack@5.99.6(@swc/core@1.11.29))","ts-node":"10.9.2(@swc/core@1.11.29)(@types/node@22.15.29)(typescript@5.8.3)","tsconfig-paths":"4.2.0","typescript":"5.8.3","typescript-eslint":"8.33.1(eslint@9.28.0)(typescript@5.8.3)"}) don't match specs in package.json ({"@eslint/eslintrc":"3.3.1","@eslint/js":"9.28.0","@nestjs/cli":"11.0.7(@swc/cli@0.6.0(@swc/core@1.11.29)(chokidar@4.0.3))(@swc/core@1.11.29)(@types/node@22.15.29)","@nestjs/schematics":"11.0.5(chokidar@4.0.3)(typescript@5.8.3)","@nestjs/testing":"11.1.2(@nestjs/common@11.1.2(reflect-metadata@0.2.2)(rxjs@7.8.2))(@nestjs/core@11.1.2)(@nestjs/platform-express@11.1.2)","@swc/cli":"0.6.0(@swc/core@1.11.29)(chokidar@4.0.3)","@swc/core":"1.11.29","@types/express":"5.0.2","@types/jest":"29.5.14","@types/node":"22.15.29","@types/supertest":"6.0.3","eslint":"9.28.0","eslint-config-prettier":"10.1.5(eslint@9.28.0)","eslint-plugin-prettier":"5.4.1(@types/eslint@9.6.1)(eslint-config-prettier@10.1.5(eslint@9.28.0))(eslint@9.28.0)(prettier@3.5.3)","globals":"16.2.0","jest":"29.7.0(@types/node@22.15.29)(ts-node@10.9.2(@swc/core@1.11.29)(@types/node@22.15.29)(typescript@5.8.3))","prettier":"3.5.3","source-map-support":"0.5.21","supertest":"7.1.1","ts-jest":"29.3.4(@babel/core@7.27.4)(@jest/transform@29.7.0)(@jest/types@29.6.3)(babel-jest@29.7.0(@babel/core@7.27.4))(jest@29.7.0(@types/node@22.15.29)(ts-node@10.9.2(@swc/core@1.11.29)(@types/node@22.15.29)(typescript@5.8.3)))(typescript@5.8.3)","ts-loader":"9.5.2(typescript@5.8.3)(webpack@5.99.6(@swc/core@1.11.29))","ts-node":"10.9.2(@swc/core@1.11.29)(@types/node@22.15.29)(typescript@5.8.3)","tsconfig-paths":"4.2.0","typescript":"5.8.3","typescript-eslint":"8.33.1(eslint@9.28.0)(typescript@5.8.3)","@nestjs/common":"11.1.2(reflect-metadata@0.2.2)(rxjs@7.8.2)","@nestjs/core":"11.1.2(@nestjs/common@11.1.2(reflect-metadata@0.2.2)(rxjs@7.8.2))(@nestjs/platform-express@11.1.2)(reflect-metadata@0.2.2)(rxjs@7.8.2)","@nestjs/platform-express":"11.1.2(@nestjs/common@11.1.2(reflect-metadata@0.2.2)(rxjs@7.8.2))(@nestjs/core@11.1.2)","axios":"1.9.0","babel-loader":"9.1.3","reflect-metadata":"0.2.2","rxjs":"7.8.2"})
```

# Other behaviors

## Comment out `overrides` in `pnpm-lock.yaml`

Re-run `pnpm install` to update `pnpm-lock.yaml`. Docker build is successful.

## add `--legacy` flag to `pnpm deploy` in `Dockerfile`

Docker build is successful, but `node_modules` in final container is empty, so the app does not start (`docker run --rm my-service`) with this error:

```
node:internal/modules/cjs/loader:1228
  throw err;
  ^

Error: Cannot find module '@nestjs/core'
Require stack:
- /app/build/main.js
    at Function._resolveFilename (node:internal/modules/cjs/loader:1225:15)
    at Function._load (node:internal/modules/cjs/loader:1055:27)
    at TracingChannel.traceSync (node:diagnostics_channel:322:14)
    at wrapModuleLoad (node:internal/modules/cjs/loader:220:24)
    at Module.require (node:internal/modules/cjs/loader:1311:12)
    at require (node:internal/modules/helpers:136:16)
    at Object.<anonymous> (/app/build/main.js:3:16)
    at Module._compile (node:internal/modules/cjs/loader:1554:14)
    at Object..js (node:internal/modules/cjs/loader:1706:10)
    at Module.load (node:internal/modules/cjs/loader:1289:32) {
  code: 'MODULE_NOT_FOUND',
  requireStack: [ '/app/build/main.js' ]
}
```

## Downgrade pnpm version and keep `--legacy` flag

10.11.0 is the last version where docker build is successful and the final container starts without error.

## Running same commands on the host machine (MacOS)

```
rm -rf **/node_modules
rm -rf **/build
cd apps/example-app
pnpm --filter "$(node -e "console.log(require('./package.json').name)")" install --frozen-lockfile
pnpm build

# use `deploy` folder in monorepo root
pnpm --legacy --filter "$(node -e "console.log(require('./package.json').name)")" --prod deploy ../../deploy
cd ../..
node deploy/build/main.js
```

Build and application start work, but only with `--legacy` flag. Without it, same `ERR_PNPM_OUTDATED_LOCKFILE` error as before.