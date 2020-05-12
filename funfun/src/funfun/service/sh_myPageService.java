package funfun.service;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import funfun.repository.sh_myPageReposi;
import funfun.vo.Favor;


@Service
public class sh_myPageService {
	private sh_myPageReposi dao;
	public ArrayList<Favor> list(Favor favor){
		return dao.list(favor);
	}
}
