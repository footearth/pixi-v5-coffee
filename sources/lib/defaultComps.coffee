import * as PIXI from 'pixi.js'

{
  Container
  Graphics
  Sprite
} = PIXI

_Default = [
  'Container'
  'Graphics'
].reduce (r, c) =>
  {
    r...
    [c]: (props) =>

      {
        children
        attrs...
      } = props

      Comp = new PIXI[c]()

      if children? and (
        Array.isArray children
      ) and (
        children.length >= 1
      )
        children.forEach (e) =>

          if ( e instanceof Container ) or (
            e instanceof Sprite
          )
            Comp.addChild e

      if c is 'Graphics'

        unless attrs?.backgroundColor?
          Comp.beginFill 0x919bac
        else
          Comp.beginFill attrs.backgroundColor
          delete attrs.backgroundColor

        [
          'x'
          'y'
          'width'
          'height'
        ].forEach (e) =>
          attrs[e] = 0 unless attrs[e]?

        Comp.drawRect(
          attrs.x
          attrs.y
          attrs.width
          attrs.height
        )

        delete attrs.x
        delete attrs.y
        delete attrs.width
        delete attrs.height

      if ( typeof attrs ) is 'object'
        k_attrs = Object.keys attrs
        
      if k_attrs? and (
        Array.isArray k_attrs
      ) and (
        k_attrs.length >= 1
      )
        k_attrs.forEach (e) =>

          Comp[e] = attrs[e]

      Comp.endFill() if c is 'Graphics'

      Comp
  }
, {}

export Container = _Default.Container
export Graphics = _Default.Graphics
