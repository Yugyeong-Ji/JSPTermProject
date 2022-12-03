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
		Shop shop1=new Shop("A1234", "영통 붕어빵", 1000);
		shop1.setSummary("영통동 붕어빵 맛집");
		shop1.setAddress("경기도 수원시 영통구 매영로 310번길 12");
		shop1.setDescription("영통동 신나무실 아파트 붕어빵 맛집. 2개에 1000원, 8개에 3000원. 오뎅, 호떡도 있어요!");
		shop1.setCategory("빵");
		shop1.setGrade(4.7);
		shop1.setFilename("영통붕어빵.jpg");
		
		Shop shop2=new Shop("A1235", "소문난 혜화 붕어빵", 1500);
		shop2.setSummary("혜화역 붕어빵 맛집");
		shop2.setAddress("서울특별시 혜화동 혜화역 4번출구 앞");
		shop2.setDescription("혜화역에서 소문난 붕어빵 맛집! 1개에 1000원, 5개에 3000원.");
		shop2.setCategory("빵");
		shop2.setGrade(4.9);
		shop2.setFilename("혜화붕어빵.jpg");
		
		Shop shop3=new Shop("A1236", "홍대역 포장마차", 3000);
		shop3.setSummary("홍대역 떡볶이 오뎅 맛집");
		shop3.setAddress("서울특별시 마포구 동교동 홍대입구역 2번출구 앞");
		shop3.setDescription("홍대입구역 2번출구 포장마차! 순데 위엔 파릇파릇 깻잎까지~ 홍대피플, 떡볶이 오뎅 순대 먹으러가!!");
		shop3.setCategory("뎅이");
		shop3.setGrade(5.0);
		shop3.setFilename("홍대떡볶이오뎅.jpg");
		
		Shop shop4=new Shop("A1237", "조방 떡볶이", 1500);
		shop4.setSummary("부산 떡볶이 오뎅 맛집");
		shop4.setAddress("부산시 범일동");
		shop4.setDescription("부산시 범일동에 위치한 떡볶이 맛집! 양이 많고 가격이 저렴합니다. 부산의 인심을 맛보러 가요~");
		shop4.setCategory("이");
		shop4.setGrade(4.8);
		shop4.setFilename("부산떡볶이.jpg");
		
		Shop shop5=new Shop("A1238", "안산 포장마차", 1500);
		shop5.setSummary("중앙동 떡볶이 오뎅 맛집");
		shop5.setAddress("안산시 중앙동");
		shop5.setDescription("중앙동에서 제일 맛있는 포장마자! 떡볶이, 오뎅, 순대 모두 팝니다.");
		shop5.setCategory("뎅이");
		shop5.setGrade(4.2);
		shop5.setFilename("안산떡볶이.jpg");
		
		Shop shop6=new Shop("A1239", "구로 붕어빵", 1000);
		shop6.setSummary("구로동 붕어빵 맛집");
		shop6.setAddress("서울 구로구 구로동 186-16");
		shop6.setDescription("구로의 원조 붕어빵! 무려 4개에 1000원!! 가격도 싸고 맛있는 붕어빵 맛집");
		shop6.setCategory("빵");
		shop6.setGrade(4.7);
		shop6.setFilename("구로붕어빵.jpg");
		
		Shop shop7=new Shop("A1240", "이디야", 3000);
		shop7.setSummary("연무동 붕어빵 맛집");
		shop7.setAddress("경기도 수원시 장안구 연무동 창훈로60번길 50");
		shop7.setDescription("경기대 정문 이디야. 미니붕어빵 5개에 3000원. 슈크림 반, 밭 반 가능합니다.");
		shop7.setCategory("빵");
		shop7.setGrade(4.2);
		shop7.setFilename("이디야.jpg");
		
		Shop shop8=new Shop("A1241", "남문 매운 오뎅", 1000);
		shop8.setSummary("수원시 남문시장의 오뎅 맛집");
		shop8.setAddress("경기도 수원시 팔달구 팔달로3가 중부대로3번길 15");
		shop8.setDescription("수원시의 남문시장. 일반 오뎅과 매운 오뎅까지! 소문난 가게는 이유가 있죠.");
		shop8.setCategory("뎅");
		shop8.setGrade(5.0);
		shop8.setFilename("수원오뎅.png");
		
		listOfShops.add(shop1);
		listOfShops.add(shop2);
		listOfShops.add(shop3);
		listOfShops.add(shop4);
		listOfShops.add(shop5);
		listOfShops.add(shop6);
		listOfShops.add(shop7);
		listOfShops.add(shop8);
	}
	public ArrayList<Shop> getAllShops(){
	    return listOfShops;
	}
	    
	    public Shop getShopByCode(String code) {
			Shop shopByCode = null;
			
			for (int i = 0; i < listOfShops.size(); i++) {
				Shop shop = listOfShops.get(i);
				if (shop != null && shop.getCode() != null && shop.getCode().equals(code)) {
					shopByCode = shop;
					break;
				}
			}
			return shopByCode;
		}
	    public void addShop(Shop shop) {
	        listOfShops.add(shop);
	    }
}
