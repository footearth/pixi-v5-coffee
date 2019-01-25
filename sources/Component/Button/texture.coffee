import { cfxify } from '../../lib/cfx'

rectangles =
  fst: [
    32 * 4
    32 * 5
    8
    32
  ]
  mid: [
    32 * 4 + 8 
    32 * 5
    16
    32
  ]
  lst: [
    32 * 4 + 8 + 16
    32 * 5
    8
    32
  ]

Button = [
  'fst'
  'mid'
  'lst'
].reduce (r, c) =>
  {
    r...
    [c]: ({
      texture
    }) =>
      ( cfxify texture
      ) rectangle: rectangles[c]
  }
, {}

export default Button
