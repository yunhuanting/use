package com.wax.lp.user.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wax.lp.bean.CrmContract;
import com.wax.lp.bean.CrmContractExample;
import com.wax.lp.dao.CrmContractMapper;

@Service
public class ContractService implements CrmContractMapper{

	@Autowired
	private CrmContractMapper crmContractDao;
	
	@Override
	public long countByExample(CrmContractExample example) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteByExample(CrmContractExample example) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteByPrimaryKey(Integer id) {
		
		return crmContractDao.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(CrmContract record) {
		
		return crmContractDao.insert(null);
	}

	@Override
	public int insertSelective(CrmContract record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<CrmContract> selectByExampleWithBLOBs(CrmContractExample example) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<CrmContract> selectByExample(CrmContractExample example) {
		
		return crmContractDao.selectByExample(null);
	}

	@Override
	public CrmContract selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateByExampleSelective(CrmContract record, CrmContractExample example) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByExampleWithBLOBs(CrmContract record, CrmContractExample example) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByExample(CrmContract record, CrmContractExample example) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKeySelective(CrmContract record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKeyWithBLOBs(CrmContract record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKey(CrmContract record) {
		// TODO Auto-generated method stub
		return 0;
	}

}
