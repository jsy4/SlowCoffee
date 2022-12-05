package com.javassem.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.javassem.domain.AnswerVO;
import com.javassem.domain.CriteriaVO;
import com.javassem.domain.CustomerVO;
import com.javassem.domain.ListOrderVO;
import com.javassem.domain.ManagerVO;
import com.javassem.domain.ProductVO;
import com.javassem.domain.QuestionVO;

public interface UserDAO {
	// ----------------------------------manager
	// ---manager product
	public int insertProduct(ProductVO vo);
	public int insertProduct2(ProductVO vo);
	public int modifyProduct(ProductVO vo);
	public int deleteProduct(ProductVO vo);
	// ---manager product end
	
	// ---manager orders
	public int deleteOrder(Integer lono);
	public int deleteOrders(Integer lono);
	// ---manager orders end

	// ---manager contact
	public int insertAnswer(AnswerVO vo);
	// ---manager contact end
	
	// ---manager login
	public ManagerVO checkMId(ManagerVO vo);
	public int insertManager(ManagerVO vo);
	public ManagerVO loginManager(ManagerVO vo);
	// ---manager login end
	
	
	public List<HashMap> getCustomersOrders();
	
	// ----------------------------------manager end
	
	// ----------------------------------user
	// ---user product
	public int removeCart(ListOrderVO vo);
	public int insertCart(ListOrderVO vo);
	public ListOrderVO selectCart(ListOrderVO vo);
	public int updateCart(ListOrderVO vo);
	public int deleteCart(ListOrderVO vo);
	public int selectLono();
	
	// 상품 목록 조회 (커피랑 굿즈)
	public List<ProductVO> getProductList(CriteriaVO cri) throws Exception;
	public List<ProductVO> getProductList_1(CriteriaVO cri) throws Exception;
	public List<ProductVO> getProductList_2(CriteriaVO cri) throws Exception;
	public List<ProductVO> getProductList_3(CriteriaVO cri) throws Exception;
	
	public List<ProductVO> getProductList2(CriteriaVO cri) throws Exception;
	public List<ProductVO> getProductList2_1(CriteriaVO cri) throws Exception;
	public List<ProductVO> getProductList2_2(CriteriaVO cri) throws Exception;
	public List<ProductVO> getProductList2_3(CriteriaVO cri) throws Exception;
	public List<ProductVO> shop_search(HashMap map);
	public List<ProductVO> getAllProductList();
	public List<ProductVO> getAllProductList2();
	// 상품 총 갯수
	public int listCount() throws Exception;
	
	// ---user product end
	
	// ---user orders
	public int selectStock(int pno);
	public int increaseStock(HashMap map);
	public int decreaseStock(HashMap map);
	public int insertOrder(HashMap map);
	public int insertOrders(HashMap map);
	// ---user orders end
	
	// ---user contact
	public int insertQustion(QuestionVO vo);
	public int deleteQuestion(QuestionVO vo);
	public int deleteAnswer(AnswerVO vo);
	public int modifyCustomer(CustomerVO vo);

	// ---user contact

	// ---user login
	public CustomerVO checkId(CustomerVO vo);
	public int insertCustomer(CustomerVO vo);
	public CustomerVO loginCustomer(CustomerVO vo);
	public int setCustomerPw(HashMap map);
	// ---user login end
	public List<ListOrderVO> getQuestionList();
	// ----------------------------------user end
	public List<HashMap> getQuestionAnswer(Integer loginCno);
	public List<HashMap> getOrdersList(Integer loginCno);
	public List<HashMap> getCartList(ListOrderVO vo);
	
	public List<Map<String, Object>> getSalesListBy(String year);
	public List<Map<String, Object>> getCountSalesListBy(String year);
	
	// delete customer
	public int deleteAllOrders(int lono);
	public int deleteAllOrder(int lono);
	public int deleteCustomer(CustomerVO cvo);
	public int deleteAllAnswer(AnswerVO avo);
	public int deleteAllQuestion(QuestionVO qvo);
	
	// duplicate customer for lost password
	public List<CustomerVO> getCustomer(HashMap map);
	public List<CustomerVO> getCustomerInfo(HashMap map);
	public List<CustomerVO> duplicateCustomer(CustomerVO vo);

	
	

}
