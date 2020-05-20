package funfun.repository;

import funfun.vo.*;
import java.util.*;
public interface KB_QnAReposi {

	public ArrayList<storeQnA> qnaList(int sto_code);
	
	public void qnaInsert(storeQnA store);
}
