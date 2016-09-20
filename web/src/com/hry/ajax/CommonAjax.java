package com.hry.ajax;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hry.util.IOUtils;

/**
 * Servlet implementation class CommonAjax
 */
@WebServlet("/CommonAjax")
public class CommonAjax extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CommonAjax() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int type = Integer.parseInt(request.getParameter("type"));
		
		StringBuilder formValueBuilder = new StringBuilder();
		Enumeration<String> enu = request.getParameterNames();
		while(enu.hasMoreElements()){
			String key = enu.nextElement();
			String value = request.getParameter(key);
			formValueBuilder.append(key).append(":").append(value).append(";");
		}
		
		System.out.println(request.getParameterMap());
		String content = IOUtils.readInputStream(request.getInputStream());
		System.out.println(request.getContentLength() + " " + content);
		String result = "";
		switch(type){
		case 1: result = "ajax-load. content:[" + content +"]; form:[" + formValueBuilder+" ]" ; break;
		
		default: result = "default";
		}

		response.getWriter().println(result);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
