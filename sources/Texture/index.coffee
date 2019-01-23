import {
  cfxify
} from '../lib/cfx'

spriterImgUrl = 'https://raw.githubusercontent.com/Zainking/LearningPixi/master/examples/images/screenshots/09.png'

getPlane = (texture) =>
  comp = cfxify texture
  comp
    rectangle: [
      32 * 3
      32 * 2
      32
      32
    ]

getButton =

  fst: (texture) =>
    comp = cfxify texture
    comp
      rectangle: [
        32 * 4
        32 * 5
        8
        32
      ]

  mid: (texture) =>
    comp = cfxify texture
    comp 
      rectangle: [
        32 * 4 + 8 
        32 * 5
        16
        32
      ]

  lst: (texture) =>
    comp = cfxify texture
    comp
      rectangle: [
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
