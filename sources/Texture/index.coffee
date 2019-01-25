import {
  cfxify
} from '../lib/cfx'

import {
  extendComponent
} from '../lib/component'

spriterImgUrl = 'https://raw.githubusercontent.com/Zainking/LearningPixi/master/examples/images/screenshots/09.png'

getPlane = (texture) =>
  ( cfxify texture
  ) rectangle: [
      32 * 3
      32 * 2
      32
      32
    ]

getButton =

  fst: ({
    texture
  }) =>

    ( cfxify texture
    ) rectangle: [
      32 * 4
      32 * 5
      8
      32
    ]

  mid: ({
    texture
  }) =>
    ( cfxify texture
    ) rectangle: [
        32 * 4 + 8 
        32 * 5
        16
        32
      ]

  lst: ({
    texture
  }) =>
    ( cfxify texture
    ) rectangle: [
        32 * 4 + 8 + 16
        32 * 5
        8
        32
      ]

export {
  spriterImgUrl
  getPlane
  getButton
}
