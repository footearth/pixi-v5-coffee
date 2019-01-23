import * as PIXI from 'pixi.js'
{ Container } = PIXI

Component = do =>

  Comp = (attrs = {}, children...) ->

    @attrs = attrs
    @children = children

    @comp = new Container()

    if children.length isnt 0
      children.forEach (c, e) =>
        @comp.addChild c

    @comp.getComp = -> @

    @comp

  Comp

createComponent = (style = {}, children...) ->
  new (
    Function::bind.apply Component, [
      null
      style
      children...
    ]
  )

export {
  createComponent
}
