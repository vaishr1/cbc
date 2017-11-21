package com.cbc.bo;

import java.util.List;

import com.cbc.dao.FundUserDao;
import com.cbc.vo.FundVO;

public class FundBO {

	FundUserDao dao=new FundUserDao();
	
	
	public List<FundVO> getAllFundDetails()
	{
		return dao.getAllFundDetails();
	}
	public void submitDataFund(String fundId,String nstock,String StockName,String punit,String total,String tai,String chargeBack,String balanceAmount)
	{
		
		dao.submitDataFund(fundId, nstock,StockName, punit, total, tai, chargeBack, balanceAmount);
	}

	public void submitSellDataFund(String fundId,String nstock,String StockName,String punit,String sPrice,String total, String tai,String chargeBack,String balanceAmount)
	{
		
		dao.submitSellDataFund(fundId,nstock,StockName,punit,sPrice,total,tai,chargeBack,balanceAmount);
	}
	
}
