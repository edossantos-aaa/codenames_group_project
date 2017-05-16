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
  $("span").mouseup(function(event) {
    redPosition1 = $("#red1").position().top
    redPosition2 = $("#red2").position().top
    redPosition3 = $("#red3").position().top
    redPosition4 = $("#red4").position().top
    redPosition5 = $("#red5").position().top
    redPosition6 = $("#red6").position().top
    redPosition7 = $("#red7").position().top
    redPosition8 = $("#red8").position().top
    redPosition9 = $("#doubleagent1").position().top
    bluePosition1 = $("#blue1").position().top
    bluePosition2 = $("#blue2").position().top
    bluePosition3 = $("#blue3").position().top
    bluePosition4 = $("#blue4").position().top
    bluePosition5 = $("#blue5").position().top
    bluePosition6 = $("#blue6").position().top
    bluePosition7 = $("#blue7").position().top
    bluePosition8 = $("#blue8").position().top
    bluePosition9 = $("#doubleagent2").position().top
    assassinPosition = $("#assassin1").position().top
    if (redPosition1 < 1000 && redPosition2 < 1000 && redPosition3 < 1000 && redPosition4 < 1000 && redPosition5 < 1000 && redPosition6 < 1000 && redPosition7 < 1000 && redPosition8 < 1000 && redPosition9 < 1000) {
      $(".col-md-2").css('background', '#a50000').css('color', 'white');
    }
    if (bluePosition1 < 1000 && bluePosition2 < 1000 && bluePosition3 < 1000 && bluePosition4 < 1000 && bluePosition5 < 1000 && bluePosition6 < 1000 && bluePosition7 < 1000 && bluePosition8 < 1000 && bluePosition9 < 1000) {
      $(".col-md-2").css('background', 'blue').css('color', 'white');
    }
    if (assassinPosition < 1000) {
      $(".col-md-2").css('background', 'black').css('color', 'white');
    }
    event.preventDefault();
  });
});
