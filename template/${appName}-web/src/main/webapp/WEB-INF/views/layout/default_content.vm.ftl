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
		<div class="main-container" id="main-container">
			<div>
                <div class="page-content">
                    <div class="alert-content">
                        #set($success = $success)
                        #set($msg = $msg)
                        #if(!$success && $success != false)
                            #set($success = ${r'${req.getParameter("success")}'} )
                            #set($msg = ${r'${req.getParameter("msg")}'}  )
                        #end


                        #if($success == true)
                            <div class="alert alert-block alert-success">
                                <button type="button" class="close" data-dismiss="alert">
                                    <i class="ace-icon fa fa-times"></i>
                                </button>
                                <p>${r'${msg}'}</p>
                            </div>
                        #elseif($success == false)
                            <div class="alert alert-danger">
                                <button type="button" class="close" data-dismiss="alert">
                                    <i class="ace-icon fa fa-times"></i>
                                </button>
                                <p>${r'${msg}'}</p>
                            </div>
                        #end
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
		#parse("layout/js.vm")
		
	</body>
</html>