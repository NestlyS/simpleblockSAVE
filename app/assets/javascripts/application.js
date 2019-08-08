// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery2
//= require jquery3
//= require select2
//= require 'icheck'
//= require rails-ujs
//= require_tree .

function icheck(){
  if($(".icheck-me").length > 0){
    $(".icheck-me").each(function(){
      var $el = $(this);
      var skin = ($el.attr('data-skin') !== undefined) ? "_" + $el.attr('data-skin') : "",
      color = ($el.attr('data-color') !== undefined) ? "-" + $el.attr('data-color') : "";
      var opt = {
        checkboxClass: 'icheckbox' + skin + color,
        radioClass: 'iradio' + skin + color,
      }
      $el.iCheck(opt);
    });
  }
}


function checkboxChangeValue(object, sub){
  document.getElementById('edit_todo_'+sub).submit();
}

function submitForm(object){
  document.getElementById(object).submit();
}

function hideBlock(object){
   document.getElementById(object).style.display = 'none';
}

function showBlock(object){
  document.getElementById(object).style.display = 'block';
}

function changeToProj() {
        document.getElementById('todo').style.display = 'none';
        document.getElementById('project-div').style.display = 'block';
}

function changeToTodo(){
     document.getElementById('project-div').style.display = 'none';
     document.getElementById('todo').style.display = 'block';
}

$(function(){
  icheck();
})

$( "#dropdown" ).select2({
    theme: "bootstrap"
});
