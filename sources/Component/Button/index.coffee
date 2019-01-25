import * as PIXI from 'pixi.js'
{ BaseTexture } = PIXI

import { cfxify } from '../../lib/cfx'
import { createComponent } from '../../lib/component'

import { spriterImgUrl } from '../../Texture'
import btn from './button'

Btn = [
  'fst'
  'mid'
  'lst'
].reduce (r, c) =>
  {
    r...
    [c]: cfxify btn[c]
  }
, {}

export default ({
  midCount = 1
}) =>

  bTexture = new BaseTexture spriterImgUrl

  [
    Btn.fst
      baseTexture: bTexture
      position: [ 0, 0 ]
    (
      [1..midCount].reduce (r, c, i) =>
        [
          r...
          Btn.mid
            baseTexture: bTexture
            position: [
              16 * i + 8
              0
            ]
        ]
      , []
    )...
    Btn.lst
      baseTexture: bTexture
      position: [
        16 * midCount + 8
        0
      ]
  ]
