$(function () {
  function buildHTML(message){
    if ( message.image ) {
      const html =
      `<div class="message" data-message-id=${message.id}>
        <p class="messages__content__message__name">${message.user_name}</p>

        <p class="messages__content__message__text">${message.content}<br></p>

        <img src=${message.image} >
       </div>`

      return html; 
    } else {
      const html =
        `<div class="message" data-message-id=${message.id}>
          <p class="messages__content__message__name">${message.user_name}</p>

          <p class="messages__content__message__text">${message.content}<br></p>
        </div>`
      return html; 
    };
  }


  $('.message__btn').on('submit', function(e) {
    e.preventDefault()
    const formData = new FormData(this);
    const url = $(this).attr('action');
    $.ajax({
      url: url,
      type: 'POST',
      data: formData,
      dataType: 'json',
      processData: false,
      contentType: false
    })
      .done(function(data) {
        const html = buildHTML(data);
        console.log(data)
        $('.messages__content__message').append(html);
        $('.messages__content').animate({ scrollTop: $('.messages__content')[0].scrollHeight});
        $('form')[0].reset();
        $('.message__submit').prop('disabled', false);
      })
      .fail(function() {
        alert("メッセージ送信に失敗しました");
    });

  });
  
});

