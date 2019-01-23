import {
  createComponent
} from './component'

cfxify = (e) =>
  (args...) =>
    createComponent.apply null, [
      args...
      e
    ]

export {
  cfxify
}
