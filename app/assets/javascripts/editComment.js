
$(document).on('click', '.edit-comment-button', function() {
	var $comment = $(this).prev().hide();
	var commentText = $(this).prev().text();
	var commentId = $(this).next().val();
	var formHTML = 
		[	
		"<form onsubmit='return false'>",
			"<textarea name='comment'>" + commentText  + "</textarea>",
			"<button class='edit-submit'>Update</button>",
			"<input type='hidden' value=" + commentId + ">",
		"</form>"
		].join('');

	var $HTML = $(formHTML);
	$comment.html($HTML);
	$comment.show();
})

$(document).on('click', '.edit-submit', function() {
	var commentText = $(this).prev().text();
	var commentId = $(this).next().val();
	var videoId = $('.video_id').val();
	var myJSON = {};
	myJSON['comment'] = commentText;
	// myJSON['commentId'] = commentId;
	// myJSON['videoId'] = videoId;
	var myURL = "/videos/" + videoId + "/comments/" + commentId; 
	$.ajax({
	  url: myURL,
	  data: myJSON,
	  type: 'PUT'
	});

})
