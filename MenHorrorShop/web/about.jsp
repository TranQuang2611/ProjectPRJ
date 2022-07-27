<%-- 
    Document   : about
    Created on : Mar 3, 2022, 4:11:26 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>About Web</title>
        <%@include file="headpre.jsp" %>
    </head>
    <body>
        <%@include file="head.jsp" %>
        <!-- Close Top Nav -->


        <!-- Header -->
        <%@include file="header.jsp" %>
        <!-- Close Header -->

        <!-- Modal -->
        <div class="modal fade bg-white" id="templatemo_search" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="w-100 pt-1 mb-5 text-right">
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <form action="" method="get" class="modal-content modal-body border-0 p-0">
                    <div class="input-group mb-2">
                        <input type="text" class="form-control" id="inputModalSearch" name="q" placeholder="Search ...">
                        <button type="submit" class="input-group-text bg-success text-light">
                            <i class="fa fa-fw fa-search text-white"></i>
                        </button>
                    </div>
                </form>
            </div>
        </div>



        <section class="bg-success py-5">
            <div class="container">
                <div class="row align-items-center py-5">
                    <div class="col-md-8 text-white">
                        <h1>About Us</h1>
                        <p>
                            Trang web của chúng tôi chuyên bán và cung cấp các tài khoản game của liên minh huyền thoại bao gồm chiến trường công lý
                            và đấu trường công lý với rất nhiều sự lựa chọn cho các bạn tham khảo 
                        </p>                       
                        <p> 
                            Sản phẩm thuộc về sở hữu cá nhân <a class="text-white" href="https://www.facebook.com/QuangTr2k1">Trần Quang</a> cùng với
                            những nhà phân phối thuộc G4F Team. Mọi thắc mắc xin liên hệ địa chỉ và số điện  thoại được ghim trên đầu trang
                        </p>
                    </div>
                    <div class="col-md-4">
                        <img style="border-radius: 400px" src="assets/img/G4F.ico" class="img-fluid" width="300px" alt="About Hero">
                    </div>
                </div>
            </div>
        </section>
        <!-- Close Banner -->


        <!-- Start Brands -->
        <section class="bg-light py-5">
            <div class="container my-4">
                <div class="row text-center py-3">
                    <div class="col-lg-6 m-auto">
                        <h1 class="h1">Dịch vụ của chúng tôi</h1>
                        <p>
                            Khi nhắc đến Liên Minh Huyền Thoại, chúng ta phải công nhận rằng đây là một môn thể thao điện tử đầy tính chiến thuật 
                            vô cùng cuốn hút và hấp dẫn. Đầu tiên nó là một trò chơi miễn phí với các game thủ chỉ cần đăng kí và đăng nhập tài khoản 
                            các game thủ có thể bắt đầu một trận chiến sinh tử cho riêng mình. Tiếp theo, nó là một trò chơi khơi dậy tư duy, khả năng 
                            quan sát để đưa ra những chiến thuật tốt hơn đối phương. Tạo cho người chơi sự nhanh nhạy, khôn khéo trong từng trận đấu diễn ra, 
                            cách đọc trận đấu, hướng di chuyển của đối thủ để đưa ra những quyết định sáng suốt và kết hợp với đồng đội một cách hiệu quả nhất 
                            cho team. Nhưng trò chơi nào cũng cần có một nguồn kinh phí để duy trì game và Liên Minh Huyền Thoại cũng có phương án kinh doanh 
                            riêng của nó, đó là những bộ trang phục của các nhân vật trong game. Bạn phải bỏ tiền ra nạp thẻ và mua những bộ cánh xịn nhất
                            cho tướng của mình nhưng với chi ví rất cao để nhân vật trở lên lung linh và đẹp hơn. Nhưng giờ đây, thay vì nạp tiền mua trang phục 
                            bạn có thể lên web của chúng tôi mua về một tài khoản với trang phục mà mình thích mà giá lại vô cùng phải chăng thậm thì rất rẻ, việc 
                            bạn cần làm chỉ là mua một cái thẻ để tên để đổi thành tên riêng của mình. Shop rất hân hạnh được phục vụ mọi người !!!
                        </p>
                    </div>
                    
                            <!--Controls-->
                            
                            <!--End Controls-->

                            <!--Carousel Wrapper-->
                         
                            <!--End Carousel Wrapper-->

                            <!--Controls-->
                
                            <!--End Controls-->
                  
                   
                </div>
            </div>
        </section>
        <!--End Brands-->


        <!-- Start Footer -->
        <%@include file="footer.jsp" %>
        <!-- End Footer -->

        <!-- Start Script -->
        <script src="assets/js/jquery-1.11.0.min.js"></script>
        <script src="assets/js/jquery-migrate-1.2.1.min.js"></script>
        <script src="assets/js/bootstrap.bundle.min.js"></script>
        <script src="assets/js/templatemo.js"></script>
        <script src="assets/js/custom.js"></script>
        <!-- End Script -->
    </body>
</html>
