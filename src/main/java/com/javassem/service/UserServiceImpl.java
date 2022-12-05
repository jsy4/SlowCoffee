package com.javassem.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javassem.dao.UserDAO;
import com.javassem.domain.AnswerVO;
import com.javassem.domain.CriteriaVO;
import com.javassem.domain.CustomerVO;
import com.javassem.domain.ListOrderVO;
import com.javassem.domain.ManagerVO;
import com.javassem.domain.ProductVO;
import com.javassem.domain.QuestionVO;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDAO userDAO;
	// ----------------------------------manager
	// ---manager product
	public int insertProduct(ProductVO vo) {
		return userDAO.insertProduct(vo);
	}

	public int insertProduct2(ProductVO vo) {
		return userDAO.insertProduct2(vo);
	}

	public int modifyProduct(ProductVO vo) {
		return userDAO.modifyProduct(vo);
	}

	public int deleteProduct(ProductVO vo) {
		return userDAO.deleteProduct(vo);
	}
	// ---manager product end
	
	// ---manager orders
	public int deleteOrder(Integer lono) {
		return userDAO.deleteOrder(lono);
	}
	public int deleteOrders(Integer lono) {
		return userDAO.deleteOrders(lono);
	}
	// ---manager orders end
	
	// ---manager contact
	public int insertAnswer(AnswerVO vo) {
		return userDAO.insertAnswer(vo);
	}
	// ---manager contact end
	
	// ---manager login
	public ManagerVO checkMId(ManagerVO vo) {
		return userDAO.checkMId(vo);
	}

	public int insertManager(ManagerVO vo) {
		return userDAO.insertManager(vo);
	}

	public ManagerVO loginManager(ManagerVO vo) {
		return userDAO.loginManager(vo);
	}
	// ---manager login end

	// 상품 목록 조회
	public List<ProductVO> getProductList(CriteriaVO cri) throws Exception {
		return userDAO.getProductList(cri);
	}
		
	public List<ProductVO> getProductList_1(CriteriaVO cri) throws Exception {
		return userDAO.getProductList_1(cri); 
	}
		
	public List<ProductVO> getProductList_2(CriteriaVO cri) throws Exception {
		return userDAO.getProductList_2(cri);
	}
		
	public List<ProductVO> getProductList_3(CriteriaVO cri) throws Exception {
		return userDAO.getProductList_3(cri);
	}

	public List<ProductVO> getProductList2(CriteriaVO cri) throws Exception {
		return userDAO.getProductList2(cri);
	}
		
	public List<ProductVO> getProductList2_1(CriteriaVO cri) throws Exception {
		return userDAO.getProductList2_1(cri);
	}
		
	public List<ProductVO> getProductList2_2(CriteriaVO cri) throws Exception {
		return userDAO.getProductList2_2(cri);
	}
		
	public List<ProductVO> getProductList2_3(CriteriaVO cri) throws Exception {
		return userDAO.getProductList2_3(cri);
	}

	public List<ProductVO> shop_search(HashMap map) {
		return userDAO.shop_search(map);
	}

	@Override
	public List<ProductVO> getAllProductList() {
		return userDAO.getAllProductList();
	}

	@Override
	public List<ProductVO> getAllProductList2() {
		return userDAO.getAllProductList2();
	}

	// 상품 총 갯수
	public int listCount() throws Exception {
		return userDAO.listCount();
	}
	
	public List<HashMap> getCustomersOrders(){
		return userDAO.getCustomersOrders();
	}
	// ----------------------------------manager end

	// ----------------------------------user
	// ---user product
	public int removeCart(ListOrderVO vo) {
		return userDAO.removeCart(vo);
	}
	public int insertCart(ListOrderVO vo) {
		return userDAO.insertCart(vo);
	} 
	public ListOrderVO selectCart(ListOrderVO vo) {
		return userDAO.selectCart(vo);
	}
	public int updateCart(ListOrderVO vo) {
		return userDAO.updateCart(vo);
	}
	public int deleteCart(ListOrderVO vo) {
		return userDAO.deleteCart(vo);
	}
	public int selectLono() {
		return userDAO.selectLono();
	}
	// ---user product end
	
	// --user orders
	public int selectStock(int pno) {
		return userDAO.selectStock(pno);
	}

	public int increaseStock(HashMap map) {
		return userDAO.increaseStock(map);
	}

	public int decreaseStock(HashMap map) {
		return userDAO.decreaseStock(map);
	}

	public int insertOrder(HashMap map) {
		return userDAO.insertOrder(map);
	}
	public int insertOrders(HashMap map) {
		return userDAO.insertOrders(map);
	}

	// --user orders end

	// ---user contact
	public int insertQustion(QuestionVO vo) {
		return userDAO.insertQustion(vo);
	}

	public int deleteQuestion(QuestionVO vo) {
		return userDAO.deleteQuestion(vo);
	}

	public int deleteAnswer(AnswerVO vo) {
		return userDAO.deleteAnswer(vo);
	}

	@Override
	public int modifyCustomer(CustomerVO vo) {
		return userDAO.modifyCustomer(vo);
	}
	// ---user contact end

	// ---user login
	public CustomerVO checkId(CustomerVO vo) {
		return userDAO.checkId(vo);
	}

	public int insertCustomer(CustomerVO vo) {
		return userDAO.insertCustomer(vo);
	}

	public CustomerVO loginCustomer(CustomerVO vo) {
		return userDAO.loginCustomer(vo);
	}
	
	public int setCustomerPw(HashMap map) {
		return userDAO.setCustomerPw(map);
	}
	// ---user login end

	public List<ListOrderVO> getQuestionList(){
		return userDAO.getQuestionList();
	}

	public List<HashMap> getQuestionAnswer(Integer loginCno) {
		return userDAO.getQuestionAnswer(loginCno);
	}

	public List<HashMap> getOrdersList(Integer loginCno){
		return userDAO.getOrdersList(loginCno);
	}
	public List<HashMap> getCartList(ListOrderVO vo) {
		return userDAO.getCartList(vo);
	}

	// ----------------------------------user end

	public List<Map<String,Object>> getSalesListBy(String year){
		return userDAO.getSalesListBy(year);
	}
	public List<Map<String,Object>> getCountSalesListBy(String year){
		return userDAO.getCountSalesListBy(year);
	}
	
	@Override
	public int deleteAllOrders(int lono) {
		return userDAO.deleteAllOrders(lono);
	}

	@Override
	public int deleteAllOrder(int lono) {
		return userDAO.deleteAllOrder(lono);
		
	}

	@Override
	public int deleteCustomer(CustomerVO cvo) {
		return userDAO.deleteCustomer(cvo);
	}

	public int deleteAllAnswer(AnswerVO avo) {
		return userDAO.deleteAllAnswer(avo);
	}
	public int deleteAllQuestion(QuestionVO qvo) {
		return userDAO.deleteAllQuestion(qvo);
	}
	
	@Override
	public List<CustomerVO> getCustomer(HashMap map) { 
		return userDAO.getCustomer(map);
	}

	@Override
	public List<CustomerVO> getCustomerInfo(HashMap map) {
		return userDAO.getCustomerInfo(map);
	}

	@Override
	public List<CustomerVO> duplicateCustomer(CustomerVO vo) {
		return userDAO.duplicateCustomer(vo);
	}

	

}