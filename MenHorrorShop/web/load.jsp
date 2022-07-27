<%-- 
    Document   : load
    Created on : Mar 16, 2022, 8:48:16 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nạp tiền</title>
        <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
        <link href="https://netdna.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://netdna.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/G4F.ico">
    </head>
    <body>
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
        <div class="container bootstrap snippets bootdeys">
            <div class="row">
                <div class="col-xs-12 col-sm-9">
                    <form class="form-horizontal" method="post">
                        <div class="panel panel-default">
                            <div class="panel-body text-center">
                                <img src="https://bootdey.com/img/Content/avatar/avatar6.png" class="img-circle profile-avatar" alt="User avatar">
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">User info</h4>
                            </div>
                            <div class="panel-body">
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">Location</label>
                                    <div class="col-sm-10">
                                        <select class="form-control" name="load">
                                            <option value="card">Nạp bằng thẻ</option>
                                            <option>Nạp bằng thẻ ngân hàng (Chức năng đang cập nhật)</option>
                                            <option>Nạp bằng ví momo (Chức năng đang cập nhật)</option>
                                        </select>
                                    </div>
                                </div>
                                 <div class="form-group">
                                    <label class="col-sm-2 control-label">Loại thẻ</label>
                                    <div class="col-sm-10">
                                        <select class="form-control">
                                            <option>Viettel</option>
                                            <option>Vinaphone</option>
                                            <option>Mobifone</option>
                                            <option>Garena</option>
                                            <option>FunCard</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">Mệnh giá</label>
                                    <div class="col-sm-10">
                                        <select class="form-control" name="cost">
                                            <option value="20000">20.000 đồng</option>
                                            <option value="50000">50.000 đồng</option>
                                            <option value="100000">100.000 đồng</option>
                                            <option value="200000">200.000 đồng</option>
                                            <option value="500000">500.000 đồng</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">Mã thẻ</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="the" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">Số seri</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="seri" class="form-control">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-10 col-sm-offset-2">
                                    <button type="submit" class="btn btn-primary">Xác nhận</button>
                                    <a href="InfomationPage" class="btn btn-default">Quay lại</a>
                                </div>
                            </div>
                            <h2 class="text-center" style="color: greenyellow">${mess}</h2>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <style type="text/css">

            body{
                margin-top:20px;
                background:#f5f5f5;
            }
            /**
             * Panels
             */
            /*** General styles ***/
            .panel {
                box-shadow: none;
            }
            .panel-heading {
                border-bottom: 0;
            }
            .panel-title {
                font-size: 17px;
            }
            .panel-title > small {
                font-size: .75em;
                color: #999999;
            }
            .panel-body *:first-child {
                margin-top: 0;
            }
            .panel-footer {
                border-top: 0;
            }

            .panel-default > .panel-heading {
                color: #333333;
                background-color: transparent;
                border-color: rgba(0, 0, 0, 0.07);
            }

            form label {
                color: #999999;
                font-weight: 400;
            }

            .form-horizontal .form-group {
                margin-left: -15px;
                margin-right: -15px;
            }
            @media (min-width: 768px) {
                .form-horizontal .control-label {
                    text-align: right;
                    margin-bottom: 0;
                    padding-top: 7px;
                }
            }

            .profile__contact-info-icon {
                float: left;
                font-size: 18px;
                color: #999999;
            }
            .profile__contact-info-body {
                overflow: hidden;
                padding-left: 20px;
                color: #999999;
            }
            .profile-avatar {
                width: 200px;
                position: relative;
                margin: 0px auto;
                margin-top: 196px;
                border: 4px solid #f3f3f3;
            }
        </style>

        <script type="text/javascript">

        </script>
    </body>
</html>
