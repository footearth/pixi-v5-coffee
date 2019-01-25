import * as PIXI from 'pixi.js'
{ Texture } = PIXI
import { cfxify } from '../../lib/cfx'
import Button from './texture'

Btn = [
  'fst'
  'mid'
  'lst'
].reduce (r, c) =>
  {
    r...
    [c]: cfxify Button[c]
  }
, {}

Buttons = [
  'fst'
  'mid'
  'lst'
].reduce (r, c) =>
  {
    r...  
    [c]: ({
      baseTexture
      position
    }) =>

      rs = Btn[c]
        texture: new Texture baseTexture

      if ( Array.isArray position ) and (
        position.length is 2
      )
        rs.position.set position[0], position[1]

      rs
  }
, {}

export default Buttons
