package com.wemedia.util;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

public class SMTPAuthenticatior extends Authenticator{	
	@Override
    protected PasswordAuthentication getPasswordAuthentication() {
		//실제 네이버 ID, PW를 작성하면 됨
        return new PasswordAuthentication("아이디","비밀번호");
    }
}