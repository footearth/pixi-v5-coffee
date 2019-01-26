import { skipHello } from '@pixi/utils'
do skipHello

import * as PIXI from 'pixi.js'
{ Application } = PIXI

import { cfxify } from './lib/cfx'

import {
  baseTextureUrl
  Button
} from './Component'

c =
  Button: cfxify Button

export render = =>

  app = new Application(
    # window.innerWidth
    # window.innerHeight
    # width: 256
    # height: 256
    antialias: true
    transparent: false
    resolution: 1
    backgroundColor: 0x007BA7
  )

  app.renderer.view.style.position = 'absolute'
  app.renderer.view.style.display = 'block'
  app.renderer.autoDensity = true
  app.renderer.resize(
    window.innerWidth
    window.innerHeight
  )

  app.loader
  .add baseTextureUrl
  .load =>

    c.Stage = cfxify app.stage

    # c.Button.anchor.set 0.5

    c.Stage {}
    ,
      c.Button {
        baseTextureUrl
        midCount: 8
        x: window.innerWidth / 2
        y: window.innerHeight / 4
      }

    # app.ticker.add (delta) =>
    #   c.Button.rotation += 0.1 * delta

    # Add the cat to the stage
    # app.stage.addChild btn

  app.view
