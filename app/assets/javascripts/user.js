$(function() {
  const back = $('#back')
  const button = $('button')

  $('#button1').click(function() {
     back.toggleClass('red');
    //  button.fadeToggle();
  });
  $('#button2').click(function() {
     back.toggleClass('blue')
    //  button.fadeToggle();
  });
  $('#button3').click(function() {
     back.toggleClass('yellow')
    //  button.fadeToggle();
  });
  $('#button4').click(function() {
     back.toggleClass('white')
    //  button.fadeToggle();
  });
  $('#button5').click(function() {
     back.toggleClass('black')
    //  button.fadeToggle();
  });
  $('#button6').click(function() {
     back.toggleClass('forest')
    //  button.fadeToggle();
  });
  $('#button7').click(function() {
     back.toggleClass('sunset')
    //  button.fadeToggle();
  });
  $('#button8').click(function() {
     back.toggleClass('hurror')
    //  button.fadeToggle();
  });
  $('#button9').click(function() {
     back.toggleClass('cherry')
    //  button.fadeToggle();
  });
  $('#button10').click(function() {
     back.toggleClass('animate')
     button.fadeToggle();
  });

  $('#button11').click(function() {
    $('#dialy').toggleClass('font')
  })
  $('#button12').click(function() {
    $('#real').toggleClass('font')
  })
  $('#button13').click(function() {
    $('#prof').toggleClass('purple')
  })


  
});