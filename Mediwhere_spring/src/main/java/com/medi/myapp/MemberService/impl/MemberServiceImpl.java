package com.medi.myapp.MemberService.impl;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.medi.myapp.MemberDao.MemberRepository;
import com.medi.myapp.MemberService.MemberService;
import com.medi.myapp.vo.MemberVO;

@Service("MemberService")
public class MemberServiceImpl implements MemberService{

	
	@Autowired 
	MemberRepository memberRepository;
	
	
	@Override
	public void insertMember(MemberVO membervo){
		memberRepository.insertMember(membervo);
	}


	@Override
	public MemberVO loginMember(MemberVO membervo) {
		return memberRepository.loginMember(membervo);
	}


	@Override
	public List<MemberVO> selectMemberList() {
		List<MemberVO> memberVoList = memberRepository.selectMemberList();
		return memberVoList; 
	}


		
	}

	
	/*
	
	@Override
	public MemberVO SelectMember(String userid) {
		return memberRepository.selectMember(userid);
	}

	@Override
	public List<MemberVO> selectAllMembers() {
		return memberRepository.selectAllMembers();
	}

	@Override
	public void updateMember(MemberVO membervo) {
		memberRepository.updateMember(membervo);
	}

	@Override
	public void deleteMember(MemberVO membervo) {
		memberRepository.deleteMember(membervo);
	}

	@Override
	public String getPassword(String userid) {
		return memberRepository.getPassword(userid);
	}
	
	*/
	

