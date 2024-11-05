import "bootstrap"
import "../stylesheets/application"
require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

import "bootstrap/dist/js/bootstrap"
import "bootstrap/dist/css/bootstrap"

import $ from 'jquery';

document.addEventListener("turbolinks:load", () => {
  $('[data-toggle="tooltip"]').tooltip()
  $('[data-toggle="popover"]').popover()
})


