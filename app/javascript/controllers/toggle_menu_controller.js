import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle-menu"
export default class extends Controller {

  openNav() {
    document.getElementById("mySidepanel").style.width = "250px";
  }

  /* Set the width of the sidebar to 0 (hide it) */
  closeNav() {
    document.getElementById("mySidepanel").style.width = "0";
  }
  }
