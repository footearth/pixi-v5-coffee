import * as PIXI from 'pixi.js'

{
  Container
  Rectangle
  Texture
  Sprite
  Graphics
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

      else if element instanceof Container
      
        @comp = element

        if ( Array.isArray children ) and (
          children.length >= 0
        )
          children.forEach (e) =>
            @comp.addChild e

        if ( typeof attrs ) is 'object'

          k_attrs = Object.keys attrs

          if ( Array.isArray k_attrs ) and (
            k_attrs.length >= 0
          )
            k_attrs.forEach (e) =>
              @comp[e] = attrs[e]

      else if ( typeof element ) is 'function'

        maybeComp = element.apply null, [
          attrs
          children...
        ]

        if ( maybeComp instanceof Sprite ) or (
          maybeComp instanceof Container
        ) or (
          maybeComp instanceof Graphics
        )
          @comp = maybeComp

        else if ( Array.isArray maybeComp ) and (
          maybeComp.every (e) =>
            e instanceof Sprite
        )
          @comp = new Container()

          maybeComp.forEach (c) =>
            @comp.addChild c
        
        else

          err = {
            attrs
            children
            element
          }

          console.error(
            'error: maybe not component when exec element creator'
            err
          )

          return  err

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

  if ( Array.isArray children ) and (
    children[0] instanceof Array
  )
    children = children[0]

  if ( ( typeof element ) is 'function' ) and (
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
