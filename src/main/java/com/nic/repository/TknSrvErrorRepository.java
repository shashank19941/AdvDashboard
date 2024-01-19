package com.nic.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.nic.pojo.TknSrvError;

public interface TknSrvErrorRepository extends JpaRepository<TknSrvError, Long> {
	List<TknSrvError> findAllByDateContainingOrderByErrIdDesc(String Date);
}
