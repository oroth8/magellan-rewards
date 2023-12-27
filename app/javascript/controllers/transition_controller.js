import { Controller } from "@hotwired/stimulus";
import { enter, leave, toggle } from "el-transition";

// Connects to data-controller="transition"
export default class extends Controller {
  static targets = ["userIcon", "userSettingContainer"];
  connect() {
    console.log(this.userIconTarget);
  }

  show() {
    this.userSettingContainerTarget.classList.remove("hidden");
    enter(this.userSettingContainerTarget);
  }

  hide() {
    leave(this.userSettingContainerTarget).then(() => {
      this.userSettingContainerTarget.classList.add("hidden");
    });
  }
}
