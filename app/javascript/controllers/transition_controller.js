import { Controller } from "@hotwired/stimulus";
import { enter, leave, toggle } from "el-transition";

// Connects to data-controller="transition"
export default class extends Controller {
  static targets = [
    "userIcon",
    "userSettingContainer",
    "mobileMenu",
    "openIcon",
    "closeIcon",
  ];

  isMobileMenuOpen = false;

  show() {
    this.userSettingContainerTarget.classList.remove("hidden");
    enter(this.userSettingContainerTarget);
  }

  hide() {
    leave(this.userSettingContainerTarget).then(() => {
      this.userSettingContainerTarget.classList.add("hidden");
    });
  }

  openMobileMenu() {
    this.mobileMenuTarget.classList.remove("hidden");
    this.openIconTarget.classList.add("hidden");
    this.closeIconTarget.classList.remove("hidden");
  }

  closeMobileMenu() {
    this.mobileMenuTarget.classList.add("hidden");
    this.openIconTarget.classList.remove("hidden");
    this.closeIconTarget.classList.add("hidden");
  }

  toggleMobile() {
    this.isMobileMenuOpen = !this.isMobileMenuOpen;
    if (this.isMobileMenuOpen) {
      this.openMobileMenu();
    } else {
      this.closeMobileMenu();
    }
  }
}
