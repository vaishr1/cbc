
package com.cbc.bo;

import java.util.List;

import com.cbc.dao.IndUserDao;
import com.cbc.vo.BuyVO;
import com.cbc.vo.IndUsercbcVO;
import com.cbc.dao.IndUserDao;

public class IndUserBO {
	IndUserDao dao=new IndUserDao();
	public List<IndUsercbcVO>	transactionFetch()
	{
		return dao.transactionFetch();
	}
	public void submitData(String userId,String nstock,String StockName,String punit,String total,String tai,String chargeBack,String balanceAmount)
	{
		
		dao.submitData(userId, nstock,StockName, punit, total, tai, chargeBack, balanceAmount);
	}

	public void submitSellData(String userId,String nstock,String StockName,String punit,String sPrice,String total, String tai,String chargeBack,String balanceAmount)
	{
		
		dao.submitSellData(userId,nstock,StockName,punit,sPrice,total,tai,chargeBack,balanceAmount);
	}
	
}
	
		
	
	
		
	
	