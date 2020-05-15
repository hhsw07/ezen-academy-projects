package funfun.vo;

public class Rtqna {
	/*
	채팅 목록(관리자) 페이징처리 및 마지막 채팅내용 완료
	SELECT *
	from(
		SELECT rownum cnt, a.QNA_CODE, a.qna_detail, a.mem_name, a.qna_state
		from(
		SELECT a.*, b.qna_detail, c.mem_name
		FROM rtqna a, (SELECT a.* FROM rtqna_detail a, (SELECT max(qna_detail_code) lastqna FROM rtqna_detail
		GROUP by qna_code) b
		where b.lastqna = a.qna_detail_code) b, MEMBER c
		WHERE a.qna_code = b.qna_code
		AND a.mem_code = c.mem_code
		ORDER BY qna_state) a)
	WHERE cnt BETWEEN 1 AND 5;
	
	 
	 
	
	 */
}
