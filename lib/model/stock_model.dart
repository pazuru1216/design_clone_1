/// stock data class로 넣을 자리
class StockModel{
  /// 1. 아이템 사진
  /// 2. 아이템 이름
  /// 3. 판매자 프로필 사진
  /// 4. 판매자 아이디
  /// 5. 등록 시간
  final String itemName;
  final String sellerName;
  final DateTime sellTime;

  StockModel({
    required this.itemName,
    required this.sellerName,
    required this.sellTime,
  });
}

