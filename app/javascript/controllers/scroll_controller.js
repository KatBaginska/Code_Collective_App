// scroll_controller.js
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    window.addEventListener("scroll", this.handleScroll);
  }

  disconnect() {
    window.removeEventListener("scroll", this.handleScroll);
  }

  handleScroll = () => {
    const scrollTop = window.scrollY;
    const containerHeight = this.element.clientHeight; // Use the container's height instead of target's
    const windowHeight = window.innerHeight;
    const threshold = containerHeight - windowHeight;

    if (scrollTop >= threshold) {
      this.element.style.top = "0";
    } else {
      this.element.style.top = "100vh"; // Adjust as needed
    }
  };
}
