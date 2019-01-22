import * as PIXI from 'pixi.js'

{
  Sprite
  # Texture
  Rectangle
} = PIXI

spriterImgUrl = 'https://raw.githubusercontent.com/Zainking/LearningPixi/master/examples/images/screenshots/09.png'

# plane = new Sprite Texture.from spriterImgUrl

getPlane = (texture) =>
  new Sprite(
    ( ->
      @frame = new Rectangle(
        32 * 3
        32 * 2
        32
        32
      )
      @
    )
    .call texture
  )

getButton = (texture) =>
  new Sprite(
    ( ->
      @frame = new Rectangle(
        32 * 4
        32 * 5
        32
        32
      )
      @
    )
    .call texture
  )

export {
  spriterImgUrl
  getPlane
  getButton
}
