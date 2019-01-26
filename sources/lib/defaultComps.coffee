import * as PIXI from 'pixi.js'

Container = (props) =>

  {
    children
    attrs...
  } = props

  _Container = new PIXI.Container()

  if children? and (
    Array.isArray children
  ) and (
    children.length >= 1
  )
    children.forEach (e) =>
      _Container.addChild e

  if ( typeof attrs ) is 'object'
    k_attrs = Object.keys attrs
    
  if k_attrs? and (
    Array.isArray children
  ) and (
    children.length >= 1
  )
    k_attrs.forEach (e) =>
      _Container[e] = attrs[e]

  _Container

export {
  Container
}
