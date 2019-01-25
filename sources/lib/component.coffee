import * as PIXI from 'pixi.js'

{
  Container
  Rectangle
  Texture
  Sprite
} = PIXI

Component = do =>

  Comp = (
    attrs = {}
    children...
    element = null
  ) ->

    self = @

    @attrs = attrs
    @children = children
    @element = element
    @comp = {}

    if element?

      if element instanceof Texture

        @comp = new Sprite (

          ( ->
            if attrs?.rectangle?
              @frame = new (
                Function::bind.apply Rectangle
                , [
                  null
                  attrs.rectangle...
                ]
              )
            @
          )
          .call element
        )
      
      else if ( typeof element ) is 'function'

        @comp = element.apply null, [
          attrs
          children...
        ]

      else

        err = {
          attrs
          children
          element
        }

        console.error(
          'error: no element handler when new Component'
          err
        )
        return  err
    
    else if ( children.length isnt 0 ) and (
      children.every (e) =>
        e instanceof Sprite
    )

      @comp = new Container()

      children.forEach (c, e) =>
        @comp.addChild c

    else

      err = {
        attrs
        children
        element
      }

      console.error(
        'error: sth else when new Component'
        err
      )
      return  err

    @comp.getComp = self

    @comp

  Comp

extendComponent = (Comp) =>

  r = (attrs = {}, children...) =>
    Comp {
      attrs...
      children
    }

  r.isExteded = true

  r

createComponent = (args...) =>
  attrs = {}
  children = []
  element = null

  if args.length is 0
    err = {
      attrs
      children
      element
    }

    console.error(
      'error: no args when createComponent calling'
      err
    )
    return  err

  if args.length is 1
    [ element ] = args
  else if args.length is 2
    [ attrs, element ] = args
  else
    [
      attrs
      children...
      element
    ] = args

  if ( typeof element ) is 'function' and (
    element.isExteded isnt true
  )
    element = extendComponent element

  new (
    Function::bind.apply Component, [
      null
      attrs
      children...
      element
    ]
  )

export {
  extendComponent
  createComponent
}
