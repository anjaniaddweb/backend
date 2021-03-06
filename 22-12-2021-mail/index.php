<!DOCTYPE html>
<html>
<head>
    <title>Send an Email</title>
    <style>
        
        h2{
            font-size: 40px;
        }
        label{
            font-size: 20px;
        }
        input{
            font-size: 20px;
            background-color: lightpink;
        }
        textarea{
            font-size: 20px;
            background-color: lightpink;

        }
        button{
            font-size: 20px;
            background-color: lightpink;
            padding-top: 10px;
            padding-bottom: 10px;
            padding-left: 20px;
            padding-right: 20px;
        }
        div{
            background-color: gray;
            width: 30%;
            padding-bottom: 10px;
        }
    </style>
</head>
<body>


	<center>
        <div>
		<h4 class="sent-notification"></h4>

		<form id="myForm">
			<h2>Send an Email</h2>

			<label>Name</label>
			<input id="name" type="text" placeholder="Enter Name">
			<br><br>

			<label>Email</label>
			<input id="email" type="text" placeholder="Enter Email">
			<br><br>

			<label>Subject</label>
			<input id="subject" type="text" placeholder=" Enter Subject">
			<br><br>

			<label>Message</label>
			<textarea id="body" rows="5" placeholder="Type Message"></textarea>
			<br><br>

			<button type="button" onclick="sendEmail()" value="Send An Email">Submit</button>
		</form>
	</center>
    </div>
	<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script type="text/javascript">
        function sendEmail() {
            var name = $("#name");
            var email = $("#email");
            var subject = $("#subject");
            var body = $("#body");

            if (isNotEmpty(name) && isNotEmpty(email) && isNotEmpty(subject) && isNotEmpty(body)) {
                $.ajax({
                   url: 'sendEmail.php',
                   method: 'POST',
                   dataType: 'json',
                   data: {
                       name: name.val(),
                       email: email.val(),
                       subject: subject.val(),
                       body: body.val()
                   }, success: function (response) {
                        $('#myForm')[0].reset();
                        $('.sent-notification').text("Message Sent Successfully.");
                   }
                });
            }
        }

        function isNotEmpty(caller) {
            if (caller.val() == "") {
                caller.css('border', '1px solid red');
                return false;
            } else
                caller.css('border', '');

            return true;
        }
    </script>

</body>
</html>
      