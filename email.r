
my.email_html = function (to, subject, body) {
  p_load("mailR")
  
  send.mail(from = "al3xandr3@gmail.com",
            to = "al3xandr3@gmail.com",
            subject = "Inline image example",
            body = '<p>write text here</p>
            <img src="rplot.jpg">
            <p>more text here</p>',
            html = TRUE,
            inline = TRUE,
            smtp = list(host.name = "ASPMX.L.GOOGLE.COM"),
            attach.files=c("rplot.jpg"),
            authenticate = FALSE)  
}

#http://stackoverflow.com/questions/33815591/email-inline-image-r