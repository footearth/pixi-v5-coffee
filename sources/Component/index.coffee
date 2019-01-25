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
  cfxify
} from '../lib/cfx'

import {
  extendComponent
  createComponent
} from '../lib/component'

Button = (n = 1) =>

  bTexture = new BaseTexture spriterImgUrl

  Btn = [
    'fst'
    'mid'
    'lst'
  ].reduce (r, c) =>
    {
      r...  
      [c]: cfxify ({
        baseTexture
        position
      }) =>
        rs = ( cfxify getButton[c]
        ) texture: new Texture bTexture
        if ( Array.isArray position ) and (
          position.length is 2
        )
          rs.position.set position[0], position[1]
        rs
    }
  , {}

  createComponent.apply null, [
    {}
    Btn.fst
      baseTexture: bTexture
      position: [ 0, 0 ]
    (
      [1..n].reduce (r, c, i) =>
        [
          r...
          Btn.mid
            position: [
              16 * i + 8
              0
            ]
        ]
      , []
    )...
    Btn.lst
      position: [
        16 * n + 8
        0
      ]
    null
  ]

export {
  Button
}
