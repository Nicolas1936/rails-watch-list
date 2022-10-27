import { Controller } from "@hotwired/stimulus"
import TomSelect from "tom-select"

// Connects to data-controller="tom-select"
export default class extends Controller {
  connect() {
    console.log("Welcome to Tom-select Controller JS")
    console.log(this.element)
    new TomSelect(this.element, {})
  }
}
