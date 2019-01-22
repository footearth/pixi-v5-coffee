import * as PIXI from 'pixi.js'

{
  Container
  Texture
  BaseTexture
} = PIXI

import {
  spriterImgUrl
  # getPlane
  getButton
} from '../Texture'

Button = (n = 1) =>
  bTexture = new BaseTexture spriterImgUrl

  result = new Container()

  btnFst = getButton.fst new Texture bTexture
  btnFst.position.set 0, 0

  btnMid = [1..n].reduce (r, c, i) =>
    [
      r...
      ( ->
        @position.set(
          16 * i + 8
          0
        )
        @
      ).call getButton.mid new Texture bTexture
    ]
  , []

  # btnMid = getButton.mid new Texture bTexture
  # btnMid.position.set 8, 0

  btnLst = getButton.lst new Texture bTexture
  btnLst.position.set(
    16 * n + 8
    # 16 + 8
    0
  )

  result.addChild btnFst
  [1..n].forEach (c) =>
    result.addChild btnMid[(c - 1)]
  # result.addChild btnMid
  result.addChild btnLst

  result

export {
  Button
}
