package dao;
import java.util.ArrayList;
import dto.Shop;

public class shopRepository {
	private ArrayList<Shop> listOfShops=new ArrayList<Shop>();
	private static shopRepository instance=new shopRepository();
	
	public static shopRepository getInstance() {
		return instance;
	}
	
	public shopRepository() {
		Shop shop1=new Shop("영통동 붕어빵 맛집", "경기도 수원시 영통구 매영로 310번길 12", 1000);
		shop1.setDescription("영통동 신나무실 아파트 붕어빵 맛집. 2개에 1000원, 8개에 3000원. 오뎅, 호떡도 있어요!");
		shop1.setShopName("영통 붕어빵");
		shop1.setGrade(4.7);
		shop1.setFilename("사진넣기");
		
		Shop shop2=new Shop("혜화역 붕어빵 맛집", "서울특별시 혜화동 혜화역 4번출구 앞", 1500);
		shop1.setDescription("혜화역에서 소문난 붕어빵 맛집! 1개에 1000원, 5개에 3000원.");
		shop1.setShopName("소문난 혜화 붕어빵");
		shop1.setGrade(4.9);
		shop1.setFilename("사진넣기");
		
		Shop shop3=new Shop("구로동 붕어빵 맛집", "서울 구로구 구로동 186-16", 1000);
		shop1.setDescription("구로의 원조 붕어빵! 무려 4개에 1000원!! 가격도 싸고 맛있는 붕어빵 맛집");
		shop1.setShopName("구로 붕어빵");
		shop1.setGrade(4.7);
		shop1.setFilename("사진넣기");
		
		Shop shop4=new Shop("연무동 붕어빵 맛집", "경기도 수원시 장안구 연무동 창훈로60번길 50", 3000);
		shop1.setDescription("경기대 정문 이디야. 미니붕어빵 5개에 3000원. 슈크림 반, 밭 반 가능합니다.");
		shop1.setShopName("이디야");
		shop1.setGrade(4.2);
		shop1.setFilename("사진넣기");
	}
}
