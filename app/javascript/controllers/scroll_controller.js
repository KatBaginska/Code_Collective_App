// scroll_controller.js
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["events"]

  connect() {
    this.checkForSearchChange();
  }

  checkForSearchChange() {
    const urlRaw = window.location.href;
    const url = new URL(urlRaw);
    const searchParams = new URLSearchParams(url.search);
    if (searchParams.get('tag') || searchParams.get('commit')) {
      this.scrollToEvents();
    }
  }

  scrollToEvents() {
    this.eventsTarget.scrollIntoView();
  }
}
