package com.nic.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.nic.pojo.TknSrvErrorCategories;

@Repository
public interface TknSrvErrorCategoriesRepository extends JpaRepository<TknSrvErrorCategories, Long> {
	
	TknSrvErrorCategories  findFirstByDateContainingOrderByDateDesc(String formattedDate);
}
