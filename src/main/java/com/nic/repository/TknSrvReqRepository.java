package com.nic.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.nic.pojo.TknSrvReq;

public interface TknSrvReqRepository extends JpaRepository<TknSrvReq, Long> {
	List<TknSrvReq> findAllByDateContainingOrderByTokenIdDesc(String formattedDate);

	@Query("SELECT SUM(t.token1Req + t.token2Req + t.token3Req + t.token4Req + t.token5Req + t.token6Req + t.token7Req + t.token8Req) FROM TknSrvReq t WHERE t.date BETWEEN :fromDate AND :toDate GROUP BY t.date order by t.date asc")
	List<String> sumByDateBetween(String fromDate, String toDate);

	@Query("SELECT t.date FROM TknSrvReq t WHERE  t.date BETWEEN :fromDate AND :toDate order by t.date asc")
	List<String> findDatesBetween(String fromDate, String toDate);
}
