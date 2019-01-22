import * as PIXI from 'pixi.js'

{
  Container
  Texture
  BaseTexture
} = PIXI

import {
  spriterImgUrl
  getPlane
  getButton
} from '../Texture'

Button = =>
  bTexture = new BaseTexture spriterImgUrl

  result = new Container()

  plane = getPlane new Texture bTexture
  plane.position.set 0, 0
  btn = getButton new Texture bTexture
  btn.position.set 32, 0

  result.addChild plane
  result.addChild btn

  result

export {
  Button
}
