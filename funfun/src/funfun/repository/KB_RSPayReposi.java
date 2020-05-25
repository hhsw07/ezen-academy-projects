package funfun.repository;

import funfun.vo.storePay;

public interface KB_RSPayReposi {
	public void payInsert(storePay pay);
	public void UptMemBalance(storePay pay);
}
