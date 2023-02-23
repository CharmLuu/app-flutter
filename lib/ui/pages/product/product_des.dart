import 'package:flutter/material.dart';

import '../../components/modal_title.dart';
import '../../components/page_title.dart';
import '../../theme.dart';

class ProductFullDes extends StatelessWidget {
  // const ProductFullDes({super.key});

  final List<MoreDetail> attrAddtional = [
    MoreDetail(
      label: 'Style',
      detail: 'Tank',
    ),
    MoreDetail(
      label: 'Material',
      detail: 'Cocona® performance fabric, Cotton',
    ),
    MoreDetail(
      label: 'Pattern',
      detail: 'Solid',
    ),
    MoreDetail(
      label: 'Climate',
      detail: 'Indoor, Warm',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    Widget fullContent = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListView(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            ...attrAddtional
          ],
        )
        .pb(),
        Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 10),
          child: Text(
            'Thành phần dinh dưỡng của sản phẩm',
            style: PrimaryFont.bold(16),
          ),
        ),
        Text('Glico Icreo Balance Milk số 0 có thành phần dinh dưỡng: Chất béo dinh dưỡng điều chỉnh (mỡ phân loại, dầu oreo, dầu đậu tương, dầu dừa, dầu cọ), lactose, bột sữa, sữa bột tách béo, bột sữa giàu chất đạm, bột galacto, dầu tía tô, chất nhũ hóa (lecithin (chiết suất từ đậu tương)), canxi clorua, natri citrat, vitamin C, taurine, inositol, Cytidylic5, kẽm sunfat,sắt sunfat natri Uridylic, vitamin E, axit amin Nicotinic, canxi pantothenic, adenyl5, canxi inosinic, natri guanylate, đồng sunfat, vitamin B1, vitamin A, vitamin B2, vitamin B6, β-Carotene, axit folic, Biotin, vitamin D3, vitamin B12.'),
        Padding(
          padding: const EdgeInsets.only(top: 15, bottom: 10),
          child: Text(
            'Đặc điểm nổi bật của sản phẩm',
            style: PrimaryFont.bold(16),
          ),
        ),
        Text("Glico Icreo Balance Milk số 0 nội địa Nhật Bản dành cho bé từ sơ sinh đến 12 tháng tuổi là sản phẩm có giá trị cao nhất (Theo báo cáo của Công ty Nghiên cứu thị trường Intage Nhật Bản tháng 3/2017), được các mẹ Nhật tin dùng nhất (Giải thưởng Mother Selection Japan 2015) và là sự lựa chọn của hơn 900 bệnh viện tại đất nước Mặt trời mọc. Sản phẩm được sản xuất tại nhà máy Kaibaracho, tỉnh Hyogo, Nhật Bản - nơi không chịu ảnh hưởng của chất phóng xạ, có thành phần và mùi vị tự nhiên. Glico số 0 đặc biệt dành riêng cho giai đoạn đầu đời, khi hệ tiêu hóa của bé còn non nớt, giúp phòng chống bệnh táo bón hay tiêu chảy thường gặp ở các bé trong giai đoạn này. Bên cạnh đó, hàm lượng axit béo Palmitic và 5 loại Nucleotides vượt trội cho bé hệ tiêu hóa khỏe mạnh, tăng cường miễn dịch và hỗ trợ phát triển não bộ tinh anh. Dưỡng chất có nhiều trong sữa non (khử oxy xấu) chống oxy hóa và tăng khả năng miễn dịch (tăng sức đề kháng) cho bé giai đoạn đầu đời."),
      ],
    );

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: PageSubTitle(data: 'Thông tin chi tiết'),
          ),
          ClipRect(
            child: Align(
              alignment: Alignment.topCenter,
              heightFactor: 0.4,
              child: fullContent,
            ),
          ),
          
          TextButton(
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
              minimumSize: Size.zero,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            onPressed: () => showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                insetPadding: EdgeInsets.zero,
                contentPadding: EdgeInsets.zero,
                backgroundColor: Colors.transparent,
                content: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: context.w,
                      color: colorWhite,
                      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                      child: Column(
                        children: [
                          AlertDialogTitle(data: 'Thông tin chi tiết'),
                          Container(
                            height: context.h * 0.7,
                            child: SingleChildScrollView(child: fullContent)
                          )
                        ],
                      )
                    ), 
                  ],
                ),
              ),
            ),
            child: Align(
              alignment: Alignment.center,
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: colorTheme)
                ),
                child: Text(
                  'Xem thêm',
                  style: TextStyle(
                    color: colorTheme,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
          ),
        ],
      )
      .pxBase(),
    );
  }
}

class MoreDetail extends StatelessWidget {
  final String label;
  final String detail;

  MoreDetail({required this.label, required this.detail});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Row(
        children: [
          Flexible(
            flex: 3,
            fit: FlexFit.tight,
            child: Text(label)
          ),
          Flexible(
            flex: 7,
            fit: FlexFit.tight,
            child: Text(
              detail,
              style: PrimaryFont.bold(15),
            )
          ),
        ],
      ),
    );
  }
}