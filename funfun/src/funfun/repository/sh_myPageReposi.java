package funfun.repository;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import funfun.vo.Favor;
import funfun.vo.PartiFunding;
import funfun.vo.TranLookUp;


@Repository
public interface sh_myPageReposi {
	public ArrayList<Favor> list(String memEmail);
	public ArrayList<PartiFunding> plist(String memEmail);
	public ArrayList<TranLookUp> tlist(String memEmail);
}
