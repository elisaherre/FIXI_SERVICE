import { Controller } from "@hotwired/stimulus"



// Connects to data-controller="tab"
export default class extends Controller {
  static targets = ["tab", "content"]

  connect() {
    this.tabTarget.classList.add("active")
    this.contentTarget.classList.add("active")
  }
}
