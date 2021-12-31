package co.micol.potal.member.service;

import java.util.List;

public interface MemberMapper {
	List<MemberVO> memberSelectList();		//member테이블의 전체 리스트 조회
	MemberVO memberSelect(MemberVO vo);		//한명의 정보 조회
	int memberInsert(MemberVO vo);			//맴버 삽입
	int memberUpdate(MemberVO vo);			//맴버 수정
	int memberDelete(MemberVO vo);			//맴버 삭제
	boolean memberIdCheck(String id);		//ID 중복 체크
}
