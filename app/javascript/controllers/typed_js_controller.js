import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

// Connects to data-controller="typed-js"
export default class extends Controller {
  connect() {
    console.log()
    new Typed(this.element, {
      strings: ["Action", "Comedy", "Drama", "Fantasy"],
      typeSpeed: 70,
      loop: true
    })
  }
}
