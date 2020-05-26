package funfun.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import funfun.repository.HT_StoreManageReposi;

@Service
public class HT_StoreManageService {
	
	@Autowired(required=false)
	private HT_StoreManageReposi dao;
}
