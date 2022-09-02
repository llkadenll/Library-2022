// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import jquery from "jquery";

window.$ = window.jQuery = jquery
setTimeout("$('.alert').fadeOut(2000)", 1500);
