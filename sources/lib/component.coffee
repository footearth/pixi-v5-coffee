import * as PIXI from 'pixi.js'

{
  Container
  Rectangle
  Texture
  Sprite
} = PIXI

Component = do =>

  Comp = (attrs = {}, children...) ->

    @attrs = attrs
    @children = children

    if ( children.length is 1 ) and (
      children[0] instanceof Texture
    )

      texture = children[0]

      @comp = new Sprite (

        ( ->
          @frame = new (
            Function::bind.apply Rectangle
            , [
              null
              attrs.rectangle...
            ]
          )
          @
        )
        .call texture
      )

    else if ( children.length isnt 0 ) and (
      children.every (e) =>
        e instanceof Sprite
    )

      @comp = new Container()

      children.forEach (c, e) =>
        @comp.addChild c

    else return {
      attrs
      children
    }

    @comp.getComp = -> @

    @comp

  Comp

createComponent = (attrs = {}, children..., e) ->
  new (
    Function::bind.apply Component, [
      null
      attrs
      children...
      e
    ]
  )

export {
  createComponent
}
