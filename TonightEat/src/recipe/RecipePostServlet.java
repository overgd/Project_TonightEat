package recipe;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RecipePostServlet
 */
public class RecipePostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RecipePostServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String date = request.getParameter("datetxt");
		String subject1 = request.getParameter("subject1");
		String content1 = request.getParameter("content1");
		String subject2 = request.getParameter("subject2");
		String content2 = request.getParameter("content2");
		String subject3 = request.getParameter("subject3");
		String content3 = request.getParameter("content3");
		
		String filename = request.getParameter("image");
		
		request.setAttribute("DATE", date);
		request.setAttribute("SUBJECT1", subject1);
		request.setAttribute("CONTENT1", content1);
		request.setAttribute("SUBJECT2", subject2);
		request.setAttribute("CONTENT2", content2);
		request.setAttribute("SUBJECT3", subject3);
		request.setAttribute("CONTENT3", content3);
		request.setAttribute("IMAGE", filename);
		
		RequestDispatcher rd = request.getRequestDispatcher("admin/recipeview.jsp");
		rd.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
