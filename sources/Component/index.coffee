import * as PIXI from 'pixi.js'

{
  Texture
  BaseTexture
} = PIXI

import {
  spriterImgUrl
  # getPlane
  getButton
} from '../Texture'

import {
  createComponent
} from '../lib/component'

Button = (n = 1) =>

  bTexture = new BaseTexture spriterImgUrl

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

  createComponent.apply null, [
    {}
    btnFst
    (
      [1..n].reduce (r, c) =>
        [
          r...
          btnMid[(c - 1)]
        ]
      , []
    )...
    btnLst
  ]

export {
  Button
}
