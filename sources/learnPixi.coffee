import { skipHello } from '@pixi/utils'
do skipHello

import * as PIXI from 'pixi.js'
{
  Application
  Sprite
  Texture
  Rectangle
} = PIXI

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
  spriterImgUrl = 'https://raw.githubusercontent.com/Zainking/LearningPixi/master/examples/images/screenshots/09.png'

  app.loader
  .add spriterImgUrl
  .load =>

    # plane = new Sprite Texture.from spriterImgUrl

    plane = new Sprite(
      ( -> 
        @frame = new Rectangle 96, 64, 32, 32
        @
      )
      # .call Texture.from spriterImgUrl
      .call app.loader.resources[spriterImgUrl].texture
    )

    plane.anchor.set 0.5
    plane.x = window.innerWidth / 2
    plane.y = window.innerHeight / 4

    # app.ticker.add (delta) =>
    #   cat.rotation += 0.1 * delta

    # Add the cat to the stage
    app.stage.addChild plane

  app.view
