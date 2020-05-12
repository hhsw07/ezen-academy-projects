INSERT INTO rtqna values();
INSERT INTO rtqna values(rtqna_seq.nextval,0,current_date, '안녕하세요',1100001);
INSERT INTO rtqna values(rtqna_seq.nextval,1,current_date, '네.안녕하세요',1001);
INSERT INTO rtqna values(rtqna_seq.nextval,2,current_date, '질문있어요',1100001);
INSERT INTO rtqna values(rtqna_seq.nextval,0,current_date, '이거 안돼요',1100002);
INSERT INTO rtqna values(rtqna_seq.nextval,4,current_date, '다시해보세요.',1001);
INSERT INTO rtqna values(rtqna_seq.nextval,3,current_date, '얼마예요?',1100001);
INSERT INTO rtqna values(rtqna_seq.nextval,6,current_date, '1만원이요',1001);
INSERT INTO rtqna values(rtqna_seq.nextval,5,current_date, '그래도 안돼요',1100002);


INSERT INTO notice values(notice_seq.nextval,'test01제목','test01내용',sysdate,NULL,'Y',1001);
INSERT INTO notice values(notice_seq.nextval,'test제목'||notice_seq.nextval,'test내용'||notice_seq.nextval,sysdate,NULL,'Y',1001);



INSERT INTO faq values(faq_seq.nextval,'faq제목'||faq_seq.nextval,'faq내용'||faq_seq.nextval,sysdate,NULL,1001);
