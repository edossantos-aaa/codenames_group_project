$(document).ready(function() {
  $(".red-male").draggable();
  $(".red-female").draggable();
  $(".blue-male").draggable();
  $(".blue-female").draggable();
  $(".bystander-Male").draggable();
  $(".assassin-Male").draggable();
  $(".doubleagent-red").draggable();
  $(".doubleagent-blue").draggable();
  $("#secret-key-dialog").dialog({
    autoOpen: false,
    height: 500,
    width: 500
  });
  $("#reveal-key").click(function(event) {
    $("#secret-key-dialog").dialog("open");
    event.preventDefault();
  });
});
