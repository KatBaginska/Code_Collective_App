import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["menu"];

  connect() {
  }

  toggle() {
    this.menuTarget.classList.toggle("d-none"); // Toggle sidebar visibility
  }
}
