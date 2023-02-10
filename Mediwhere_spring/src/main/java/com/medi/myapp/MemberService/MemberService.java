package com.medi.myapp.MemberService;

import java.util.List;

import com.medi.myapp.vo.MemberVO;

public interface MemberService{
	public void insertMember(MemberVO membervo);
	public List<MemberVO> selectMemberList();
	
	
	/*
	MemberVO SelectMember(String userid);
	List<MemberVO> selectAllMembers();
	void updateMember(MemberVO membervo);
	void deleteMember(MemberVO membervo);
	String getPassword(String userid);
	*/

	public MemberVO loginMember(MemberVO membervo);
}
