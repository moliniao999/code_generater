<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta charset="utf-8" />
    <title>$!{page_title}</title>

    <meta name="description" content="overview &amp; stats" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

    #parse("layout/css.vm")
</head>

<body class="no-skin">

#parse("layout/header.vm")

<div class="main-container" id="main-container">

    #parse("layout/navigation.vm")

    <div class="main-content">
        <div class="breadcrumbs" id="breadcrumbs">
            <script type="text/javascript">
                try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
            </script>

            <ul class="breadcrumb">
                #crumbs($crumbs)
            </ul><!-- /.breadcrumb -->

            <div class="nav-search" id="nav-search">
                <form class="form-search">
							<span class="input-icon">
								<input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
								<i class="ace-icon fa fa-search nav-search-icon"></i>
							</span>
                </form>
            </div><!-- /.nav-search -->
        </div>

        <div class="page-content">
            <div class="alert-content">
                <!-- alert-danger alert-success-->
                <div class="alert alert-block hide" id="alertTip">
                    <button type="button" class="close" data-dismiss="alert">
                        <i class="ace-icon fa fa-times"></i>
                    </button>
                    <p id="rstMsg">${r'${msg}'}</p>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <!-- PAGE CONTENT BEGINS -->

                    $!{screen_content}

                    <!-- PAGE CONTENT ENDS -->
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.page-content -->
    </div><!-- /.main-content -->

    #parse("layout/footer.vm")

    <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
        <i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
    </a>
</div><!-- /.main-container -->

#parse("layout/js.vm")


<script>
    function getUrlParam(name) {
        var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
        var r = window.location.search.substr(1).match(reg);  //匹配目标参数
        if (r != null) return unescape(r[2]); return null; //返回参数值
    }
    $(function (){
        var succ = getUrlParam("succ");
        var msg = '操作成功';
        if(succ == 'true'){
            $("#alertTip").removeClass("hide").addClass("alert-success");
        } else if(succ == 'false'){
            $("#alertTip").removeClass("hide").addClass("alert-danger");
            msg = '操作失败';
        }
        $("#rstMsg").html(msg);

        setTimeout(function () {
            $("#alertTip").addClass("hide");
        }, 5000);
    });
</script>
</body>
</html>
