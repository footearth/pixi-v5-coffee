import { skipHello } from '@pixi/utils'
do skipHello

import * as PIXI from 'pixi.js'
{
  Application
  Sprite
  Texture
} = PIXI

export render = =>

  app = new Application(
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

  catImg = 'https://raw.githubusercontent.com/Zainking/LearningPixi/master/examples/images/cat.png'

  cat = new Sprite Texture.from catImg

  # cat = Sprite.from catImg
  cat.anchor.set 0.5
  cat.x = window.innerWidth / 2
  cat.y = window.innerHeight / 4

  app.ticker.add (delta) =>
    cat.rotation += 0.1 * delta

  # Add the cat to the stage
  app.stage.addChild cat

  app.view
