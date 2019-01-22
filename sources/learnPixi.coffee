import { skipHello } from '@pixi/utils'
do skipHello

import * as PIXI from 'pixi.js'
{
  Application
  Container
  Texture
  BaseTexture
  # TextureCache
} = PIXI

import {
  spriterImgUrl
  getPlane
  getButton
} from './Texture'

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

    bTexture = new BaseTexture spriterImgUrl

    animals = new Container()

    plane = getPlane new Texture bTexture
    plane.position.set 0, 0
    btn = getButton new Texture bTexture
    btn.position.set 32, 0

    animals.addChild plane
    animals.addChild btn

    # animals.anchor.set 0.5
    animals.x = window.innerWidth / 2
    animals.y = window.innerHeight / 4

    # app.ticker.add (delta) =>
    #   cat.rotation += 0.1 * delta

    # Add the cat to the stage
    app.stage.addChild animals

  app.view
