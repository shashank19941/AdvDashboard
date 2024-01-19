package com.nic.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.nic.pojo.AppList;

@Repository
public interface AppListRepository extends JpaRepository<AppList, Long> {

	@Query("SELECT DISTINCT ad.applicationCode FROM AppList ad ORDER BY ad.applicationCode")
	List<String> findAllApplicationCode();
	//@Query("SELECT  e.applicationName FROM AppList e WHERE e.applicationCode = 'applicationCode'")
	 List<AppList> findApplicationNameByApplicationCode(String applicationCode);

}
