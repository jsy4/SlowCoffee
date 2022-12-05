package com.javassem.domain;

import lombok.Data;

@Data
public class QuestionVO {

	private int qno;
	private int cno;
	private String qname;
	private String qmessage;
	private String regdate;
	private int cnt;

}
