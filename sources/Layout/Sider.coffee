import { cfxify } from '../lib/cfx'

import { Graphics } from '../lib/defaultComps'

c =
  Graphics: cfxify Graphics

export default =>

  c.Graphics
    backgroundColor: 0x919bac
    height: window.innerHeight
    width: window.innerWidth / 2
