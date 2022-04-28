<!DOCTYPE html>
<html dir="ltr" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="<%=request.getContextPath()%>/src/assets/images/favicon.png">
    <title>Adminmart Template - The Ultimate Multipurpose admin template</title>
    <!-- This page css -->
    <!-- Custom CSS -->
    <link href="<%=request.getContextPath()%>/src/dist/css/style.min.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="highlights/highlight.min.css">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
	<style>
        .plugin-details {
            display: none;
        }

        .plugin-details-active {
            display: block;
        }
    </style>

</head>

<body>
    <!-- ============================================================== -->
    <!-- Preloader - style you can find in spinners.css -->
    <!-- ============================================================== -->
    <div class="preloader">
        <div class="lds-ripple">
            <div class="lds-pos"></div>
            <div class="lds-pos"></div>
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- Main wrapper - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <div id="main-wrapper" data-theme="light" data-layout="vertical" data-navbarbg="skin6" data-sidebartype="full" data-sidebar-position="fixed" data-header-position="fixed" data-boxed-layout="full">
        <!-- ============================================================== -->
        <!-- Topbar header - style you can find in pages.scss -->
        <!-- ============================================================== -->
        <header class="topbar" data-navbarbg="skin6">
            <nav class="navbar top-navbar navbar-expand-md">
                <div class="navbar-header" data-logobg="skin6">
                    <!-- This is for the sidebar toggle which is visible on mobile only -->
                    <a class="nav-toggler waves-effect waves-light d-block d-md-none" href="javascript:void(0)"><i
                            class="ti-menu ti-close"></i></a>
                    <!-- ============================================================== -->
                    <!-- Logo -->
                    <!-- ============================================================== -->
                    <div class="navbar-brand">
                        <!-- Logo icon -->
                        <a href="docs.html">
                            <b class="logo-icon">
                                <!-- Dark Logo icon -->
                                <img src="<%=request.getContextPath()%>/src/assets/images/logo-icon.png" alt="homepage" class="dark-logo" />
                                <!-- Light Logo icon -->
                                <img src="<%=request.getContextPath()%>/src/assets/images/logo-icon.png" alt="homepage" class="light-logo" />
                            </b>
                            <!--End Logo icon -->
                            <!-- Logo text -->
                            <span class="logo-text">
                                <!-- dark Logo text -->
                                <img src="<%=request.getContextPath()%>/src/assets/images/logo-text.png" alt="homepage" class="dark-logo" />
                                <!-- Light Logo text -->
                                <img src="<%=request.getContextPath()%>/src/assets/images/logo-light-text.png" class="light-logo" alt="homepage" />
                            </span>
                        </a>
                    </div>
                    <!-- ============================================================== -->
                    <!-- End Logo -->
                    <!-- ============================================================== -->
                    <!-- ============================================================== -->
                    <!-- Toggle which is visible on mobile only -->
                    <!-- ============================================================== -->
                    <a class="topbartoggler d-block d-md-none waves-effect waves-light" href="javascript:void(0)"
                        data-toggle="collapse" data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><i
                            class="ti-more"></i></a>
                </div>
                <!-- ============================================================== -->
                <!-- End Logo -->
                <!-- ============================================================== -->
                <div class="navbar-collapse collapse" id="navbarSupportedContent">
                    <!-- ============================================================== -->
                    <!-- toggle and nav items -->
                    <!-- ============================================================== -->
                    <ul class="navbar-nav float-left mr-auto ml-3 pl-1">
                        <!-- ============================================================== -->
                        <!-- create new -->
                        <!-- ============================================================== -->
                        <li class="nav-item">
                            <a class="nav-link" href="docs.html" role="button">
                                Documentation
                            </a>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        <!-- ============================================================== -->
        <!-- End Topbar header -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <aside class="left-sidebar" data-sidebarbg="skin6">
            <!-- Sidebar scroll-->
            <div class="scroll-sidebar" data-sidebarbg="skin6">
                <!-- Sidebar navigation-->
                <nav class="sidebar-nav">
                    <ul id="sidebarnav">
                        <li class="nav-small-cap"><span class="hide-menu">Getting Started</span></li>
                        <li class="sidebar-item"> <a class="sidebar-link sidebar-link" href="docs.html"
                        aria-expanded="false"><i data-feather="bar-chart-2" class="feather-icon"></i>
							<span class="hide-menu">Introduction</span></a>
						</li>
						<li class="sidebar-item"> <a class="sidebar-link sidebar-link" href="docs-start.html"
                        aria-expanded="false"><i data-feather="clipboard" class="feather-icon"></i>
							<span class="hide-menu">Gettings Started</span></a>
						</li>
                        <li class="list-divider"></li>
                        <li class="nav-small-cap"><span class="hide-menu">UI Components</span></li>
						<li class="sidebar-item"> <a class="sidebar-link has-arrow" href="javascript:void(0)"
                                aria-expanded="false"><i data-feather="grid" class="feather-icon"></i><span
                                    class="hide-menu">Bootstrap
                                </span></a>
                            <ul aria-expanded="false" class="collapse  first-level base-level-line">
                                <li class="sidebar-item"><a href="docs-ui-buttons.html" class="sidebar-link"><span class="hide-menu"> Buttons </span></a></li>
								<li class="sidebar-item"><a href="docs-ui-modals.html" class="sidebar-link"><span class="hide-menu"> Modals </span></a></li>
								<li class="sidebar-item"><a href="docs-ui-tabs.html" class="sidebar-link"><span class="hide-menu"> Tabs </span></a></li>
								<li class="sidebar-item"><a href="docs-ui-tooltip-popover.html" class="sidebar-link"><span class="hide-menu"> Tooltip & Popover </span></a></li>
								<li class="sidebar-item"><a href="docs-ui-notification.html" class="sidebar-link"><span class="hide-menu"> Notification </span></a></li>
								<li class="sidebar-item"><a href="docs-ui-progressbar.html" class="sidebar-link"><span class="hide-menu"> Progressbar </span></a></li>
								<li class="sidebar-item"><a href="docs-ui-typography.html" class="sidebar-link"><span class="hide-menu"> Typography </span></a></li>
								<li class="sidebar-item"><a href="docs-ui-bootstrapui.html" class="sidebar-link"><span class="hide-menu"> Bootstrap UI </span></a></li>
								<li class="sidebar-item"><a href="docs-ui-breadcrumb.html" class="sidebar-link"><span class="hide-menu"> Breadcrumb </span></a></li>
								<li class="sidebar-item"><a href="docs-ui-listmedia.html" class="sidebar-link"><span class="hide-menu"> List Media </span></a></li>
								<li class="sidebar-item"><a href="docs-ui-grid.html" class="sidebar-link"><span class="hide-menu"> Grid </span></a></li>
								<li class="sidebar-item"><a href="docs-ui-carousel.html" class="sidebar-link"><span class="hide-menu"> Carousel </span></a></li>
								<li class="sidebar-item"><a href="docs-ui-scrollspy.html" class="sidebar-link"><span class="hide-menu"> Scrollspy </span></a></li>
								<li class="sidebar-item"><a href="docs-ui-toasts.html" class="sidebar-link"><span class="hide-menu"> Toasts </span></a></li>
								<li class="sidebar-item"><a href="docs-ui-spinner.html" class="sidebar-link"><span class="hide-menu"> Spinner </span></a></li>
                            </ul>
                        </li>
						<li class="sidebar-item"> <a class="sidebar-link has-arrow" href="javascript:void(0)"
                                aria-expanded="false"><i data-feather="edit" class="feather-icon"></i><span
                                    class="hide-menu">Customized
                                </span></a>
                            <ul aria-expanded="false" class="collapse  first-level base-level-line">
								<li class="sidebar-item"><a href="docs-custom-datatables.html" class="sidebar-link"><span class="hide-menu"> Datatables </span></a></li>
								<li class="sidebar-item"><a href="docs-custom-widgets.html" class="sidebar-link"><span class="hide-menu"> Widgets </span></a></li>
								<li class="sidebar-item"><a href="docs-custom-chart-chartjs.html" class="sidebar-link"><span class="hide-menu"> ChartJs </span></a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>
                <!-- End Sidebar navigation -->
            </div>
            <!-- End Sidebar scroll-->
        </aside>
        <!-- ============================================================== -->
        <!-- End Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Page wrapper  -->
        <!-- ============================================================== -->
        <div class="page-wrapper">
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="page-breadcrumb">
                <div class="d-flex align-items-center">
                    <h4 class="page-title text-truncate text-dark font-weight-medium mb-0">Introduction</h4>
                    <div class="ml-auto">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb m-0 p-0">
                                <li class="breadcrumb-item text-muted active" aria-current="page">AdminMart</li>
                                <li class="breadcrumb-item text-muted" aria-current="page">Introduction</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- End Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-body">
								<h4 class="card-title">Introduction</h4>
								<hr>
								<p>AdminMart admin is a popular open source WebApp template for admin dashboards and control panels. AdminMart is fully responsive HTML template, which is based on the CSS framework <span class="text-danger">Bootstrap 4</span>. It utilizes all of the Bootstrap components in its design and re-styles many commonly used plugins to create a consistent design that can be used as a user interface for backend applications. AdminMart is based on a modular design, which allows it to be easily customized and built upon. This documentation will guide you through installing the template and exploring the various components that are bundled with the template.</p>
								<p>We put a lot of love and effort to make AdminMart Admin a useful template for everyone and now It comes with 20 unique demos. We are keen to release continuous long term updates and lots of new features will be coming soon in the future releases. Once you purchased AdminMart Admin, you will be entitled to free download of all future updates for the same license.</p>
								<div class="p-4 border shadow-sm rounded">
									<h4 class="card-title">Support</h4>
									<hr>
									<div class="row">
										<div class="col-md-6 border-right">
											<ul class="list-style-none">
												<li class="my-2 border-bottom pb-3">
													<span class="font-weight-medium text-dark"><i class="icon-note mr-2 text-success"></i> Includes:</span>
												</li>
												<li class="my-3">
													<span><i class="icon-pencil mr-2 text-success"></i> Answering your questions or problems regarding the template.</span>
												</li>
												<li class="my-3">
													<span><i class="icon-pencil mr-2 text-success"></i> Giving solution to the Bugs reported.</span>
												</li>	
											</ul>
										</div>
										<div class="col-md-6">
											<ul class="list-style-none">
												<li class="my-2 border-bottom pb-3">
													<span class="font-weight-medium text-dark"><i class="icon-note mr-2 text-danger"></i> Does Not Includes:</span>
												</li>
												<li class="my-3">
													<span><i class="icon-pencil mr-2 text-danger"></i> Custmaization Work</span>
												</li>
												<li class="my-3">
													<span><i class="icon-pencil mr-2 text-danger"></i> Any Installation Work</span>
												</li>	
												<li class="my-3">
													<span><i class="icon-pencil mr-2 text-danger"></i> Support for any Third Party Plugins / Software</span>
												</li>
												<li class="my-3">
													<span><i class="icon-pencil mr-2 text-danger"></i> Support or Guide for How to integrate with any technologies (like, PHP, .net, Java etc)</span>
												</li>
												<li class="my-3">
													<span><i class="icon-pencil mr-2 text-danger"></i> Solve bug in your implemented template</span>
												</li>
											</ul>
										</div>
									</div>
								</div>
								<h4 class="card-title mt-5">Structure</h4>
								<hr>
								<p>After purchasing our template extract the zip file and you will see this structure.</p>
								<pre class="highlight plaintext">
                                    <code>
                                            ├── AdminMart Admin                                                                                   
						├── docs
						├── landingpage
						└── src
						    │   ├── assets/
						    │   │   └── images
						    │   │   └── libs
						    │   ├── dist/
						    |   |   └── css
						    │   │   └── js
						    │   ├── html/
						    │   │   └── html pages
						    │   ├── scss/
						    │   │   └── bootstrap/
						    │   │   └── config/
						    │   │   └── custom/
						    │   │   └── icons/
						    │   │   └── style.scss
						    │   │   └── style-dark.scss
						    │   ├── gulpfile.js
						    │   ├── package.json
						    │   ├── package-lock.json
						    |   └── .gitignore

                
                                    </code>
                                </pre>
								<h4 class="card-title mt-5">Credits</h4>
								<hr>
								<select class="form-control" id="pluginslist" onchange="showPluginDetails();">
                                    <option value="bootstrap">bootstrap</option>
                                    <option value="blockui">blockUI</option>
                                    <option value="bt-colorpicker">bootstrap-colorpicker</option>
                                    <option value="bt-datepaginator">bootstrap-datepaginator</option>
                                    <option value="bt-datepicker">bootstrap-datepicker</option>
                                    <option value="bt-duallistbox">bootstrap-duallistbox</option>
                                    <option value="bt-material-datetimepicker">bootstrap-material-datetimepicker</option>
                                    <option value="bt-switch">bootstrap-switch</option>
                                    <option value="bt-touchspin">bootstrap-touchspin</option>
                                    <option value="chart-js">chart.js</option>
                                    <option value="chartist">chartist</option>
                                    <option value="chartist-plugin-tooltips">chartist-plugin-tooltips</option>
                                    <option value="ckeditor">ckeditor</option>
                                    <option value="clockpicker">clockpicker</option>
                                    <option value="cropper">cropper</option>
                                    <option value="datatables">datatables</option>
                                    <option value="daterangepicker">daterangepicker</option>
                                    <option value="dragula">dragula</option>
                                    <option value="dropzone">dropzone</option>
                                    <option value="echarts">echarts</option>
                                    <option value="flot">flot</option>
                                    <option value="footable">footable</option>
                                    <option value="fullcalendar">fullcalendar</option>
                                    <option value="gaugeJS">gaugeJS</option>
                                    <option value="gmaps">gmaps</option>
                                    <option value="inputmask">inputmask</option>
                                    <option value="jquery">jquery</option>
                                    <option value="jquery.flot.tooltip">jquery.flot.tooltip</option>
                                    <option value="jquery.repeater">jquery.repeater</option>
                                    <option value="jquery-asColor">jquery-asColor</option>
                                    <option value="jquery-asColorPicker">jquery-asColorPicker</option>
                                    <option value="jquery-asGradient">jquery-asGradient</option>
                                    <option value="jquery-sessiontimeout">jquery-sessiontimeout</option>
                                    <option value="jquery-steps">jquery-steps</option>
                                    <option value="jquery-validation">jquery-validation</option>
                                    <option value="jsgrid">jsgrid</option>
                                    <option value="jvectormap">jvectormap</option>
                                    <option value="magnific-popup">magnific-popup</option>
                                    <option value="masonry-layout">masonry-layout</option>
                                    <option value="moment">moment</option>
                                    <option value="morris.js">morris.js</option>
                                    <option value="nestable">nestable</option>
                                    <option value="pickadate">pickadate</option>
                                    <option value="popper.js">popper.js</option>
                                    <option value="prism">prism</option>
                                    <option value="taskboard">taskboard</option>
                                    <option value="treeview">treeview</option>
                                    <option value="quill">quill</option>
                                    <option value="raphael">raphael</option>
                                    <option value="select2">select2</option>
                                    <option value="summernote">summernote</option>
                                    <option value="sweetalert2">sweetalert2</option>
                                    <option value="tablesaw">tablesaw</option>
                                    <option value="tinymce">tinymce</option>
                                    <option value="typeahead.js">typeahead.js</option>
                                </select>
                                <script>
                                    function showPluginDetails() {
                                        var id = $('#pluginslist').val();
                                        $('.plugin-details').hide();
                                        $('#' + id).show();
                                        return;
                                    }
                                </script>
								<div id="bootstrap" class="plugin-details plugin-details-active p-4 border mt-3">
                                    <h5 class="card-title pb-3 border-bottom">bootstrap</h5>
                                    <a href="https://getbootstrap.com/">https://getbootstrap.com/</a>
                                </div>
                                <div id="blockui" class="plugin-details p-4 border mt-3">
                                    <h5 class="card-title pb-3 border-bottom">jQuery Block-UI</h5>
                                    <a href="http://malsup.com/jquery/block/">http://malsup.com/jquery/block/</a>
                                </div>
								<div id="bt-colorpicker" class="plugin-details p-4 border mt-3">
                                    <h5 class="card-title pb-3 border-bottom">bootstrap-colorpicker</h5>
                                    <a href="https://itsjavi.com/bootstrap-colorpicker/" target="_blank">https://itsjavi.com/bootstrap-colorpicker/</a>
                                </div>
								<div id="bt-datepaginator" class="plugin-details p-4 border mt-3">
                                    <h5 class="card-title pb-3 border-bottom">bootstrap-datepaginator</h5>
                                    <a href="https://github.com/jonmiles/bootstrap-datepaginator" target="_blank">https://github.com/jonmiles/bootstrap-datepaginator</a>
                                </div>
								<div id="bt-datepicker" class="plugin-details p-4 border mt-3">
                                    <h5 class="card-title pb-3 border-bottom">bootstrap-datepicker</h5>
                                    <a href="https://bootstrap-datepicker.readthedocs.io/en/stable/" target="_blank">https://bootstrap-datepicker.readthedocs.io/en/stable/</a>
                                </div>
								<div id="bt-duallistbox" class="plugin-details p-4 border mt-3">
                                    <h5 class="card-title pb-3 border-bottom">bootstrap-duallistbox</h5>
                                    <a href="http://www.virtuosoft.eu/code/bootstrap-duallistbox/" target="_blank">http://www.virtuosoft.eu/code/bootstrap-duallistbox/</a>
                                </div>
								<div id="bt-material-datetimepicker" class="plugin-details p-4 border mt-3">
                                    <h5 class="card-title pb-3 border-bottom">bootstrap-material-datetimepicker</h5>
                                    <a href="https://github.com/T00rk/bootstrap-material-datetimepicker" target="_blank">https://github.com/T00rk/bootstrap-material-datetimepicker</a>
                                </div>
								<div id="bt-switch" class="plugin-details p-4 border mt-3">
                                    <h5 class="card-title pb-3 border-bottom">bootstrap-switch</h5>
                                    <a href="https://github.com/Bttstrp/bootstrap-switch/releases/tag/v3.3.4" target="_blank">https://github.com/Bttstrp/bootstrap-switch/releases/tag/v3.3.4</a>
                                </div>
								<div id="bt-touchspin" class="plugin-details p-4 border mt-3">
                                    <h5 class="card-title pb-3 border-bottom">bootstrap-touchspin</h5>
                                    <a href="https://www.virtuosoft.eu/code/bootstrap-touchspin/" target="_blank">https://www.virtuosoft.eu/code/bootstrap-touchspin/</a>
                                </div>
								<div id="chart-js" class="plugin-details p-4 border mt-3">
                                    <h5 class="card-title pb-3 border-bottom">chart.js</h5>
                                    <a href="https://www.chartjs.org/" target="_blank">https://www.chartjs.org/</a>
                                </div>
								<div id="chartist" class="plugin-details p-4 border mt-3">
                                    <h5 class="card-title pb-3 border-bottom">chartist</h5>
                                    <a href="https://gionkunz.github.io/chartist-js/" target="_blank">https://gionkunz.github.io/chartist-js/</a>
                                </div>
								<div id="chartist-plugin-tooltips" class="plugin-details p-4 border mt-3">
                                    <h5 class="card-title pb-3 border-bottom">chartist-plugin-tooltips</h5>
                                    <a href="https://github.com/gionkunz/chartist-js" target="_blank">https://github.com/gionkunz/chartist-js</a>
                                </div>
								<div id="ckeditor" class="plugin-details p-4 border mt-3">
                                    <h5 class="card-title pb-3 border-bottom">ckeditor</h5>
                                    <a href="https://ckeditor.com/" target="_blank">https://ckeditor.com/</a>
                                </div>
                                <div id="clockpicker" class="plugin-details p-4 border mt-3">
                                    <h5 class="card-title pb-3 border-bottom">clockpicker</h5>
                                    <a href="http://weareoutman.github.io/clockpicker/" target="_blank">http://weareoutman.github.io/clockpicker/</a>
                                </div>
                                <div id="cropper" class="plugin-details p-4 border mt-3">
                                    <h5 class="card-title pb-3 border-bottom">cropper</h5>
                                    <a href="https://fengyuanchen.github.io/cropper/" target="_blank">https://fengyuanchen.github.io/cropper/</a>
                                </div>
                                <div id="datatables" class="plugin-details p-4 border mt-3">
                                    <h5 class="card-title pb-3 border-bottom">datatables</h5>
                                    <a href="https://datatables.net/" target="_blank">https://datatables.net/</a>
                                </div>
                                <div id="daterangepicker" class="plugin-details p-4 border mt-3">
                                    <h5 class="card-title pb-3 border-bottom">daterangepicker</h5>
                                    <a href="http://www.daterangepicker.com/" target="_blank">http://www.daterangepicker.com/</a>
                                </div>
                                <div id="dragula" class="plugin-details p-4 border mt-3">
                                    <h5 class="card-title pb-3 border-bottom">dragula</h5>
                                    <a href="https://bevacqua.github.io/dragula/" target="_blank">https://bevacqua.github.io/dragula/</a>
                                </div>
                                <div id="dropzone" class="plugin-details p-4 border mt-3">
                                    <h5 class="card-title pb-3 border-bottom">dropzone</h5>
                                    <a href="https://www.dropzonejs.com/" target="_blank">https://www.dropzonejs.com/</a>
                                </div>
                                <div id="echarts" class="plugin-details p-4 border mt-3">
                                    <h5 class="card-title pb-3 border-bottom">echarts</h5>
                                    <a href="https://echarts.apache.org/en/index.html" target="_blank">https://echarts.apache.org/en/index.html</a>
                                </div>
                                <div id="flot" class="plugin-details p-4 border mt-3">
                                    <h5 class="card-title pb-3 border-bottom">flot</h5>
                                    <a href="https://github.com/flot/flot#readme" target="_blank">https://github.com/flot/flot#readme</a>
                                </div>
                                <div id="footable" class="plugin-details p-4 border mt-3">
                                    <h5 class="card-title pb-3 border-bottom">footable</h5>
                                    <a href="https://fooplugins.com/footable/" target="_blank">https://fooplugins.com/footable/</a>
                                </div>
                                <div id="fullcalendar" class="plugin-details p-4 border mt-3">
                                    <h5 class="card-title pb-3 border-bottom">fullcalendar</h5>
                                    <a href="https://fullcalendar.io/" target="_blank">https://fullcalendar.io/</a>
                                </div>
                                <div id="gaugeJS" class="plugin-details p-4 border mt-3">
                                    <h5 class="card-title pb-3 border-bottom">gaugeJS</h5>
                                    <a href="http://bernii.github.io/gauge.js/" target="_blank">http://bernii.github.io/gauge.js/</a>
                                </div>
                                <div id="gmaps" class="plugin-details p-4 border mt-3">
                                    <h5 class="card-title pb-3 border-bottom">gmaps</h5>
                                    <a href="https://hpneo.dev/gmaps/" target="_blank">https://hpneo.dev/gmaps/</a>
                                </div>
                                <div id="inputmask" class="plugin-details p-4 border mt-3">
                                    <h5 class="card-title pb-3 border-bottom">inputmask</h5>
                                    <a href="https://github.com/RobinHerbots/Inputmask" target="_blank">https://github.com/RobinHerbots/Inputmask</a>
                                </div>
                                <div id="jquery" class="plugin-details p-4 border mt-3">
                                    <h5 class="card-title pb-3 border-bottom">jquery</h5>
                                    <a href="https://api.jquery.com/" target="_blank">https://api.jquery.com/</a>
                                </div>
                                <div id="jquery.flot.tooltip" class="plugin-details p-4 border mt-3">
                                    <h5 class="card-title pb-3 border-bottom">jquery.flot.tooltip</h5>
                                    <a href="http://www.flotcharts.org/" target="_blank">http://www.flotcharts.org/</a>
                                </div>
                                <div id="jquery.repeater" class="plugin-details p-4 border mt-3">
                                    <h5 class="card-title pb-3 border-bottom">jquery.repeater</h5>
                                    <a href="https://github.com/DubFriend/jquery.repeater" target="_blank">https://github.com/DubFriend/jquery.repeater</a>
                                </div>
                                <div id="jquery-asColor" class="plugin-details p-4 border mt-3">
                                    <h5 class="card-title pb-3 border-bottom">jquery-asColor</h5>
                                    <a href="https://github.com/thecreation/jquery-asColor" target="_blank">https://github.com/thecreation/jquery-asColor</a>
                                </div>
                                <div id="jquery-asColorPicker" class="plugin-details p-4 border mt-3">
                                    <h5 class="card-title pb-3 border-bottom">jquery-asColorPicker</h5>
                                    <a href="https://github.com/thecreation/jquery-asColorPicker" target="_blank">https://github.com/thecreation/jquery-asColorPicker</a>
                                </div>
                                <div id="jquery-asGradient" class="plugin-details p-4 border mt-3">
                                    <h5 class="card-title pb-3 border-bottom">jquery-asGradient</h5>
                                    <a href="https://github.com/thecreation/jquery-asGradient" target="_blank">https://github.com/thecreation/jquery-asGradient</a>
                                </div>
                                <div id="jquery-sessiontimeout" class="plugin-details p-4 border mt-3">
                                    <h5 class="card-title pb-3 border-bottom">jquery-sessiontimeout</h5>
                                    <a href="https://github.com/travishorn/jquery-sessionTimeout" target="_blank">https://github.com/travishorn/jquery-sessionTimeout</a>
                                </div>
                                <div id="jquery-steps" class="plugin-details p-4 border mt-3">
                                    <h5 class="card-title pb-3 border-bottom">jquery-steps</h5>
                                    <a href="http://www.jquery-steps.com/" target="_blank">http://www.jquery-steps.com/</a>
                                </div>
                                <div id="jquery-validation" class="plugin-details p-4 border mt-3">
                                    <h5 class="card-title pb-3 border-bottom">jquery-validation</h5>
                                    <a href="https://jqueryvalidation.org/" target="_blank">https://jqueryvalidation.org/</a>
                                </div>
                                <div id="jsgrid" class="plugin-details p-4 border mt-3">
                                    <h5 class="card-title pb-3 border-bottom">jsgrid</h5>
                                    <a href="http://js-grid.com/" target="_blank">http://js-grid.com/</a>
                                </div>
                                <div id="jvectormap" class="plugin-details p-4 border mt-3">
                                    <h5 class="card-title pb-3 border-bottom">jvectormap</h5>
                                    <a href="http://jvectormap.com/" target="_blank">http://jvectormap.com/</a>
                                </div>
                                <div id="magnific-popup" class="plugin-details p-4 border mt-3">
                                    <h5 class="card-title pb-3 border-bottom">magnific-popup</h5>
                                    <a href="https://dimsemenov.com/plugins/magnific-popup/" target="_blank">https://dimsemenov.com/plugins/magnific-popup/</a>
                                </div>
                                <div id="masonry-layout" class="plugin-details p-4 border mt-3">
                                    <h5 class="card-title pb-3 border-bottom">masonry-layout</h5>
                                    <a href="https://masonry.desandro.com/" target="_blank">https://masonry.desandro.com/</a>
                                </div>
                                <div id="moment" class="plugin-details p-4 border mt-3">
                                    <h5 class="card-title pb-3 border-bottom">moment</h5>
                                    <a href="https://momentjs.com/" target="_blank">https://momentjs.com/</a>
                                </div>
                                <div id="morris.js" class="plugin-details p-4 border mt-3">
                                    <h5 class="card-title pb-3 border-bottom">morris.js</h5>
                                    <a href="https://morrisjs.github.io/morris.js/" target="_blank">https://morrisjs.github.io/morris.js/</a>
                                </div>
                                <div id="nestable" class="plugin-details p-4 border mt-3">
                                    <h5 class="card-title pb-3 border-bottom">nestable</h5>
                                    <a href="https://dbushell.com/Nestable/" target="_blank">https://dbushell.com/Nestable/</a>
                                </div>
                                <div id="pickadate" class="plugin-details p-4 border mt-3">
                                    <h5 class="card-title pb-3 border-bottom">pickadate</h5>
                                    <a href="https://amsul.ca/pickadate.js/" target="_blank">https://amsul.ca/pickadate.js/</a>
                                </div>
                                <div id="popper.js" class="plugin-details p-4 border mt-3">
                                    <h5 class="card-title pb-3 border-bottom">popper.js</h5>
                                    <a href="https://popper.js.org/" target="_blank">https://popper.js.org/</a>
                                </div>
                                <div id="prism" class="plugin-details p-4 border mt-3">
                                    <h5 class="card-title pb-3 border-bottom">prism</h5>
                                    <a href="https://github.com/PrismJS/prism#readme" target="_blank">https://github.com/PrismJS/prism#readme</a>
                                </div>
                                <div id="raphael" class="plugin-details p-4 border mt-3">
                                    <h5 class="card-title pb-3 border-bottom">raphael</h5>
                                    <a href="https://dmitrybaranovskiy.github.io/raphael/" target="_blank">https://dmitrybaranovskiy.github.io/raphael/</a>
                                </div>
							</div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- End Container fluid  -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
            <footer class="footer text-center">
                All Rights Reserved by Adminmart. Designed and Developed by <a
                    href="https://wrappixel.com">WrapPixel</a>.
            </footer>
            <!-- ============================================================== -->
            <!-- End footer -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- End Page wrapper  -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- End Page -->
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
    <script src="<%=request.getContextPath()%>/src/assets/libs/jquery/dist/jquery.min.js"></script>
    <script src="<%=request.getContextPath()%>/src/assets/libs/popper.js/dist/umd/popper.min.js"></script>
    <script src="<%=request.getContextPath()%>/src/assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- apps -->
    <script src="<%=request.getContextPath()%>/src/dist/js/app-style-switcher.js"></script>
    <script src="<%=request.getContextPath()%>/src/dist/js/feather.min.js"></script>
    <script src="<%=request.getContextPath()%>/src/assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
    <script src="<%=request.getContextPath()%>/src/dist/js/sidebarmenu.js"></script>
    <!--Custom JavaScript -->
    <script src="<%=request.getContextPath()%>/src/dist/js/custom.min.js"></script>
	<script src="highlights/highlight.min.js"></script>
	<script>
		hljs.initHighlightingOnLoad();
	</script>
    <!-- End JS -->
</body>

</html>