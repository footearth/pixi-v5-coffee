import { cfxify } from '../lib/cfx'

import {
  Container
  Graphics
} from '../lib/defaultComps'

c =
  Container: cfxify Container
  Graphics: cfxify Graphics

export default ({
  children
}) =>

  c.Container {}
  ,

    c.Graphics
      backgroundColor: 0x38404e
      height: window.innerHeight
      width: window.innerWidth / 5

    children
