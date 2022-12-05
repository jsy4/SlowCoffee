package com.javassem.controller;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import org.aspectj.lang.annotation.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.RequestBuilder;
import org.springframework.test.web.servlet.ResultActions;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration({
	"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml",
	"file:src/main/webapp/WEB-INF/spring/root-context.xml"
})
public class UserControllerTest {

	private WebApplicationContext context;
	private MockMvc mockMvc;

	@Autowired
	UserController boardController;
	
	@Before(value = "")
	public void initMockMvc() {
		mockMvc = MockMvcBuilders.standaloneSetup(boardController).build();
	}
	
	@Test
	public void test() throws Exception {
		System.out.println("Test Confirmed");
		mockMvc.perform((RequestBuilder) ((ResultActions) get("/test.do"))
				.andDo(print())
				.andExpect(status().isOk()));
	}
}
