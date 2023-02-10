package com.medi.myapp.MemberDao;

import java.util.List;

import com.medi.myapp.MemberVO.MemberVO;


public interface MemberRepository {
	//회원가입
	public void insertMember(MemberVO membervo);

	public List<MemberVO> selectMemberList();
	
	public MemberVO loginMember(MemberVO membervo);
	
	
	/*
	
	//회원조회
	MemberVO selectMember(String userid);
	
	//회원목록
	List<MemberVO> selectAllMembers();
	//회원정보 수정
	void updateMember(MemberVO membervo);
	//회원 탈퇴
	void deleteMember(MemberVO membervo);
	
	//비밀번호 찾기?
	String getPassword(String userid);
	
	*/
	
}
