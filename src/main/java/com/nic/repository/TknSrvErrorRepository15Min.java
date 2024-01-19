package com.nic.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.nic.pojo.TknSrvError15Min;

public interface TknSrvErrorRepository15Min extends JpaRepository<TknSrvError15Min, Long> {
	List<TknSrvError15Min> findAllByDateContainingOrderByErrIdDesc(String Date);
}
