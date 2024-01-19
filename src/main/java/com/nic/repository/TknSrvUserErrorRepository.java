package com.nic.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.nic.pojo.TknSrvUserError;

public interface TknSrvUserErrorRepository extends JpaRepository<TknSrvUserError, Long> {
	List<TknSrvUserError> findAllByDateContainingOrderByErrIdDesc(String Date);
}
