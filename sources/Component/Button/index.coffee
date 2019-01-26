import * as PIXI from 'pixi.js'
{ BaseTexture } = PIXI

import { cfxify } from '../../lib/cfx'
import { createComponent } from '../../lib/component'
import { Container } from '../../lib/defaultComps'

c = 
  Container: cfxify Container

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
  baseTextureUrl
  midCount = 1
  attrs...
}) =>

  baseTexture = new BaseTexture baseTextureUrl

  c.Container.apply null, [

    attrs

    Btn.fst {
      baseTexture
      position: [ 0, 0 ]
    }

    (
      [1..midCount].reduce (r, c, i) =>
        [
          r...
          Btn.mid {
            baseTexture
            position: [
              16 * i + 8
              0
            ]
          }
        ]
      , []
    )...

    Btn.lst {
      baseTexture
      position: [
        16 * midCount + 8
        0
      ]
    }
  ]
