package command;


import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import domain.CustomerDTO;

import proxy.Proxy;
import proxy.RequestProxy;
import service.CustomerServiceImpl;

public class RetrieveCommand extends Command{
	public RetrieveCommand(Map<String, Proxy> pxy) {
			super(pxy);
			System.out.println("RetrieveCommand 진입 ====");
		
			RequestProxy req = (RequestProxy) pxy.get("req");
			HttpServletRequest request = req.getRequest();
		//	HttpSession session =  request.getSession();
			
			System.out.println("case : CUST_RETRIEVE 진입 ");
			System.out.println("cust??"+request.getParameter("customerID"));
			
			CustomerDTO cust = new CustomerDTO();
			
			cust.setCustomerID(request.getParameter("customerID"));
			
			cust = CustomerServiceImpl.getInstance().retrieveCustomer(cust);
			request.setAttribute("cust", cust);
		//	session.setAttribute("cust", cust);
		
	}
}
