package com.nic.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.nic.pojo.TknSrvResp;

public interface TknSrvRespRepository extends JpaRepository<TknSrvResp, Long> {
	List<TknSrvResp> findAllByDateContainingOrderByTokenIdDesc(String formattedDate);
}
