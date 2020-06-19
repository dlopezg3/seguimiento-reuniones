import { Controller } from "stimulus"
export default class extends Controller {

  visit() {
    Turbolinks.visit(this.location)
  }

  get location() {
    return event.currentTarget.parentElement.dataset.redirectUrl;
  }
}
