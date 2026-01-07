package com.example.web_console_handheld.service;

import jakarta.mail.*;
import jakarta.mail.internet.*;

import java.util.Properties;

public class EmailService {

    private static final String SMTP_HOST = "sandbox.smtp.mailtrap.io";
    private static final int SMTP_PORT = 2525;
    private static final String SMTP_USER = "29ae3e3508a181";
    private static final String SMTP_PASS = "03aaa67eb30225";

    public static void sendOtp(String toEmail, String otp) throws MessagingException {

        Properties props = new Properties();
        props.put("mail.smtp.host", SMTP_HOST);
        props.put("mail.smtp.port", SMTP_PORT);
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");

        Session session = Session.getInstance(props, new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(SMTP_USER, SMTP_PASS);
            }
        });

        Message message = new MimeMessage(session);
        message.setFrom(new InternetAddress("no-reply@webconsole.com"));
        message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toEmail));
        message.setSubject("Mã xác thực OTP");
        message.setText(
                "Mã OTP của bạn là: " + otp +
                        "\nHiệu lực trong 60 giây.\nKhông chia sẻ mã này cho bất kỳ ai."
        );

        Transport.send(message);
    }
}
