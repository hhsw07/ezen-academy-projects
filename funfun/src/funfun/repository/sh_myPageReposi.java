package funfun.repository;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import funfun.vo.Favor;


@Repository
public interface sh_myPageReposi {
	public ArrayList<Favor> list(Favor favor);
}
