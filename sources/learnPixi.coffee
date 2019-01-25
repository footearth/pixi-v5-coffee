import { skipHello } from '@pixi/utils'
do skipHello

import * as PIXI from 'pixi.js'
{ Application } = PIXI

import { cfxify } from './lib/cfx'

import { Button } from './Component'
import { spriterImgUrl } from './Texture'

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
  .add spriterImgUrl
  .load =>

    # c.Button.anchor.set 0.5
    btn = c.Button
      midCount: 8

    btn.x = window.innerWidth / 2
    btn.y = window.innerHeight / 4

    # app.ticker.add (delta) =>
    #   c.Button.rotation += 0.1 * delta

    # Add the cat to the stage
    app.stage.addChild btn

  app.view
