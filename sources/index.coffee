import { render } from './pixi'

# console.log ProjectEcho
view = render()
window.onload = =>
  document.body.appendChild view
