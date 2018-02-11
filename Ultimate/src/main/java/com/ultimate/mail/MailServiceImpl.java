/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ultimate.mail;

import com.ultimate.core.commons.MessageProvider;
import javax.inject.Inject;
import javax.mail.internet.MimeMessage;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

/**
 *
 * @author baba
 */
@Service
public class MailServiceImpl implements MailService {

    private static final String USER_REGISTERED_SUBJECT_TEMPLATE_CODE = "template.mail.welcome.subject";

    private static final String USER_REGISTERED_HTML_TEMPLATE_CODE = "template.mail.welcome.html";

    private static final String USER_SUBSCRIBED_SUBJECT_TEMPLATE_CODE = "template.mail.subscription.subject";

    private static final String USER_SUBSCRIBED_HTML_TEMPLATE_CODE = "template.mail.subscription.html";

    @Value("${email.id}")
    private String fromMail;

    @Value("${base.url}")
    private String baseUrl;

    @Inject
    JavaMailSenderImpl mailSender;

    @Inject
    MessageProvider messageProvider;

    public Boolean sendMessage(String toEmail, String subject, String mailContent) {
        try {

            MimeMessage mimeMessage = mailSender.createMimeMessage();

            MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, false, "utf-8");
            mimeMessage.setContent(mailContent, "text/html");
            //System.out.println(mailContent);
            helper.setFrom(fromMail);
            helper.setTo(toEmail);
            helper.setReplyTo(fromMail);
            helper.setSubject(subject);

            mailSender.send(mimeMessage);

            return true;
        } catch (Exception e) {
            System.out.println("" + e);
        }

        return false;

    }

    @Override
    public Boolean sendAccountActivationMail(String toEmail, String token) {
        return sendMessage(toEmail, messageProvider.getMessage(USER_REGISTERED_SUBJECT_TEMPLATE_CODE),
                messageProvider.getMessage(USER_REGISTERED_HTML_TEMPLATE_CODE, new Object[]{baseUrl, token}));
    }

    @Override
    public Boolean sendSubscriptionMail(String toEmail) {
        return sendMessage(toEmail, messageProvider.getMessage(USER_SUBSCRIBED_SUBJECT_TEMPLATE_CODE),
                messageProvider.getMessage(USER_SUBSCRIBED_HTML_TEMPLATE_CODE, new Object[]{baseUrl}));
    }

}
