export default
  write: true
  registry: 'https://registry.npm.taobao.org'
  prefix: '~'
  devprefix: '^'
  plugin: ''
  test: []
  keep: []
  devdep: [
    'autod'
    'cfx.simple-build-tool'
  ]
  dep: [
    # 'babel-loader'
    # '@babel/runtime'

    # 'normalize.css'
    # 'reset-css'
    'cfx.require-plugin-coffee'
    'ddeyes'

    'pixi.js'
    '@pixi/utils'

    # 'del'
    # 'gulp'
    # 'gulp-better-rollup'
    # 'gulp-rename'
    # 'cfx.rollup-plugin-coffee2'
    # 'rollup'
    # 'rollup-plugin-cleanup'
    # 'rollup-plugin-image'
    # 'rollup-plugin-babel'
    # 'rollup-plugin-node-resolve'

    # 'emotion'
  ]
  semver: [
    'pixi.js@5.0.0-alpha.3'
  ]
  exclude: [
    './dist'
    './src'
    './publish'
    './.autod.conf.js'
  ]
