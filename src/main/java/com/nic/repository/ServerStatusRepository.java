package com.nic.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.nic.pojo.ServerStatus;

public interface ServerStatusRepository extends JpaRepository<ServerStatus, Long> {
	// List<ServerStatus> findByOrderByIpAsc();
}
