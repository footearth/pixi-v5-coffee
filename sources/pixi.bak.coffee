import * as PIXI from 'pixi.js'

ProjectEcho = 'Hello, World'

render = =>
  app = new PIXI.Application(
    window.innerWidth
    window.innerHeight
    backgroundColor: 0x007BA7
  )

  bunnyImgURL = 'https://pixijs.io/examples/required/assets/basics/bunny.png'
  bunny = PIXI.Sprite.from bunnyImgURL

  bunny.anchor.set 0.5
  bunny.x = window.innerWidth / 2
  bunny.y = window.innerHeight / 4
  app.stage.addChild bunny

  app.ticker.add (delta) =>
    bunny.rotation += 0.1 * delta

  app.view

export {
  ProjectEcho
  render
}
