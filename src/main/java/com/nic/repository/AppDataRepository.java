package com.nic.repository;

import java.util.HashSet;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import com.nic.pojo.AppData;

@Repository
public interface AppDataRepository extends JpaRepository<AppData, Long> {

	HashSet<AppData> findFirstDistinctByApplicationCodeAndDateContainingOrderByTimeInDesc(String applicationCode,
			String Date);

	AppData findFirstByDateContainingOrderByTimeInDesc(String date);

	@Query("SELECT SUM(CAST(a.detokenResponse AS java.math.BigDecimal)) AS totalDetokenRequest FROM AppData a WHERE a.date BETWEEN :fromDate AND :toDate GROUP BY a.date ORDER BY a.date")
	List<String> getDateWiseDetokenResponse(String fromDate, String toDate);

	@Query("SELECT  SUM(CAST(detokenResponse AS java.math.BigDecimal)) AS totalsumtokenAlreadyExi FROM AppData WHERE date BETWEEN :fromDate AND :toDate")
	long getTotalSumDetokenResponse(String fromDate, String toDate);

	@Query("SELECT SUM(CAST(a.tokenAlreadyExi AS java.math.BigDecimal)) AS totalDetokenRequest FROM AppData a WHERE a.date BETWEEN :fromDate AND :toDate GROUP BY a.date ORDER BY a.date")
	List<String> getDateWiseTokenAlreadyExi(String fromDate, String toDate);

	@Query("SELECT  SUM(CAST(tokenAlreadyExi AS java.math.BigDecimal)) AS totalsumtokenAlreadyExi FROM AppData WHERE date BETWEEN :fromDate AND :toDate")
	long getTotalSumTokenAlreadyExi(String fromDate, String toDate);

	@Query("SELECT a.date FROM AppData a WHERE a.date BETWEEN :fromDate AND :toDate GROUP BY a.date ORDER BY a.date")
	List<String> getDate(String fromDate, String toDate);

}
