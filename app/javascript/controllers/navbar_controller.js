import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    document.addEventListener('scroll', () => {
      const currentPos = window.scrollY; // px values
      if (currentPos > 200) {
        this.element.classList.add('solid');
      } else {
        this.element.classList.remove('solid');
      }
    });
  }
}
