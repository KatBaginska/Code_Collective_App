import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="search"
export default class extends Controller {
  static targets = ["events"]

  scrollToEvents(event) {
    // if (this.hasEventsTarget) {
    //   this.eventsTarget.scrollIntoView({ behavior: "smooth" });
    // }
    event.target.reset()
    this.eventsTarget.scrollTo(0, this.eventsTarget.scrollHeight)
  }
}

// connect() {
//   document.addEventListener('scroll', () => {
//     const currentPos = window.scrollY; // px values
//     if (currentPos > 200) {
//       this.element.classList.add('solid');
//     } else {
//       this.element.classList.remove('solid');
//     }
//   });
