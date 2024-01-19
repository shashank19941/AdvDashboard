package com.nic.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.nic.pojo.TknTotalTxnInterval;

@Repository
public interface TknTotalTxnIntervalRepository extends JpaRepository<TknTotalTxnInterval, Long> {
	List<TknTotalTxnInterval> findAllByDateContainingOrderByTimeOutAsc(String formattedDate);

	List<TknTotalTxnInterval> findAllByDateContainingOrderByDateDesc(String formattedDate);

	TknTotalTxnInterval findFirstByDateContainingOrderByDateDesc(String formattedDate);

	 @Query("SELECT t.totalTxnPerInterval FROM TknTotalTxnInterval t WHERE t.date BETWEEN :fromDate AND :toDate AND t.timeIn = (SELECT MAX(timeIn) FROM TknTotalTxnInterval WHERE date = t.date ) order by t.date asc")
	List<String> findLastByDateBetweenOrderByTimeInDescDateDesc(String fromDate, String toDate);
	 
	 @Query("SELECT t.date FROM TknTotalTxnInterval t WHERE t.date BETWEEN :fromDate AND :toDate AND t.timeIn = (SELECT MAX(timeIn) FROM TknTotalTxnInterval WHERE date = t.date ) order by t.date asc")
		List<String> findLastByDat(String fromDate, String toDate);
}
