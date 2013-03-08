<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Home.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="height: 686px">
        <!-- Stylesheets -->
        <style type="text/css">
            .alignright
            {
            }
            .alignleft
            {
            }
            .alignnone
            {
            }
            .aligncenter
            {
            }
            .avatar
            {
            }
            .wp-caption
            {
            }
            .gallery
            {
            }
            .wp-smiley
            {
            }
            span.playpause.pause span
            {
                padding: 3px 8px 4px;
                background: transparent url(../../Image/feature-pause.png) no-repeat 2px 3px;
            }
            span.playpause.resume span
            {
                padding: 3px 8px 4px;
                background: transparent url(../../Image/feature-play.png) no-repeat 2px 3px;
            }
            .indent-one
            {
                margin-left: 20px;
            }
            
            .pricing
            {
                overflow: hidden;
                float: right;
                margin-right: 130px;
                margin-top: 37px;
            }
            
            .pricing ul
            {
                overflow: hidden;
                width: auto;
                display: block;
            }
            
            .pricing ul li
            {
                display: block;
                float: left;
                overflow: hidden;
            }
            
            #fcolumns_container
            {
                padding-bottom: 10px;
            }
            
            .herowrap.min-height, .toppg
            {
                min-height: 110px;
            }
            .zip-code input.small
            {
                width: 57px !important;
            }
            
            #toggle-01
            {
                height: auto !important;
            }
            
            .small.gfield_select
            {
                width: auto !important;
            }
            
            .gform_wrapper li.gfield.gfield_error .gfield_description
            {
                color: #790000;
                text-transform: capitalize !important;
            }
            
            #gform_wrapper_31 .gform_footer
            {
                left: 750px !important;
            }
            
            #fullwidth_bottom_widgets
            {
                margin-bottom: 18px;
            }
            
            .gform_wrapper .top_label li.gfield.gfield_error
            {
                height: auto !important;
            }
            .button, input[type="submit"], .submit, .cform input.sendbutton
            {
                border: none;
                border-radius: 5px;
                padding: 6px 16px 4px 16px;
                border-color: rgb(221,221,221);
                color: white !important;
                box-shadow: 0 1px 3px rgba( 0, 0, 0, 0.25 );
                border-bottom: 1px solid rgba( 0, 0, 0, 0.3 );
                border-top: 1px solid rgba( 255, 255, 255, 0.4 );
                cursor: pointer;
                font-weight: bold;
                font-size: 13px;
                text-shadow: 0 -1px 1px rgba( 0, 0, 0, 0.25 );
                background: url( "/images/overlay-button.png") repeat-x scroll 0 0 #222;
                background-color: rgb(61,130,187);
            }
            
            .button:hover, input[type="submit"]:hover, .submit:hover, .cform input.sendbutton:hover
            {
                text-decoration: none;
                color: #fff !important;
                background: url( "/images/overlay-button.png") repeat-x scroll 0 0 #222;
                background-color: rgb(61,130,187);
                box-shadow: 0 1px 8px rgba( 0, 0, 0, 0.3 );
            }
        </style>
        <!-- Wordpress Stuff -->
        <link rel='stylesheet' id='column-styles-css' href='JScrip/styles.css' type='text/css'
            media='all' />
        <link rel='stylesheet' id='pro-css' href='JScrip/pro.css' type='text/css' media='all' />
        <link rel='stylesheet' id='scheme-black-css' href='JScrip/color_black.css' type='text/css'
            media='all' />
        <script src="JScrip/jquery.min.js" type="text/javascript"></script>
        <script src="JScrip/collapse.js" type="text/javascript"></script>
        <script src="JScrip/comment-reply.js" type="text/javascript"></script>
        <script type="text/javascript" src="JScrip/jquery.tools.min.js"></script>
        <script src="JScrip/jquery.metadata.min.js" type="text/javascript"></script>
        <script src="JScrip/jquery.swapimage.min.js" type="text/javascript"></script>
        <script src="JScrip/smoothscroll.js" type="text/javascript"></script>
        <script src="JScrip/scrolltotop.js" type="text/javascript"></script>
        <link rel="EditURI" type="application/rsd+xml" title="RSD" href="#" />
        <link rel="wlwmanifest" type="application/wlwmanifest+xml" href="#" />
        <meta name="generator" content="WordPress 3.3.2" />
        <!-- Google Analytics Injector 1.1 from http://www.geckosolutions.se/blog/wordpress-plugins/ -->
        <script type='text/javascript'>
            var _gaq = _gaq || [];
            _gaq.push(['_setAccount', 'UA-2279700-2']);
            _gaq.push(['_trackPageview']);

            (function () {
                var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
                ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
                var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
            })();
        </script>
        <script type="text/javascript">
/* <![CDATA[ */
	var $j = jQuery.noConflict();
	$j(document).ready(function () {
			//Feature Cycle Setup	
			$j('#cycle').cycle({ 
			    fx: 'fade',
				sync: 1,
				timeout: 10000,
			    speed:  800, 
				pager:  '#featurenav',
				cleartype:  true,
    			cleartypeNoBg:  true
			 });
			
				
			
		//Overide page numbers on cycle feature with custom text
			$j("div#featurenav").children("a").each(function() {
																	if($j(this).html() == "1") {$j(this).html('<span class="nav_thumb" style="background: transparent url(Image/affordable_button.jpg) no-repeat 0 0;"><span class="nav_overlay">&nbsp;</span></span>');}
																						if($j(this).html() == "2") {$j(this).html('<span class="nav_thumb" style="background: transparent url(Image/mobile_button.jpg) no-repeat 0 0;"><span class="nav_overlay">&nbsp;</span></span>');}
																						if($j(this).html() == "3") {$j(this).html('<span class="nav_thumb" style="background: transparent url(Image/free_button2.jpg) no-repeat 0 0;"><span class="nav_overlay">&nbsp;</span></span>');}
																						if($j(this).html() == "4") {$j(this).html('<span class="nav_thumb" style="background: transparent url(Image/dash-thumb.jpg) no-repeat 0 0;"><span class="nav_overlay">&nbsp;</span></span>');}
																						if($j(this).html() == "5") {$j(this).html('<span class="nav_thumb" style="background: transparent url(Image/bottleneck_button.jpg) no-repeat 0 0;"><span class="nav_overlay">&nbsp;</span></span>');}
																						if($j(this).html() == "6") {$j(this).html('<span class="nav_thumb" style="background: transparent url(Image/faq_button.jpg) no-repeat 0 0;"><span class="nav_overlay">&nbsp;</span></span>');}
																						if($j(this).html() == "7") {$j(this).html('<span class="nav_thumb" style="background: transparent url(Image/got_help_button.jpg) no-repeat 0 0;"><span class="nav_overlay">&nbsp;</span></span>');}
																});
				
			
		// Play Pause
			$j('.playpause').click(function() { 
				if ($j(this).hasClass('pause')) {
					$j('#cycle').cycle('pause');
				 	$j(this).removeClass('pause').addClass('resume');
				} else {
				   	$j(this).removeClass('resume').addClass('pause');
				    $j('#cycle').cycle('resume'); 	
				}
		    
			});
				
	});
/* ]]> */
        </script>
        <script type="text/javascript">
/* <![CDATA[ */
	var $j = jQuery.noConflict();
	
	$j(document).ready(function () {
				
		$j("#drag_drop_sidebar").sortable();
		$j("#drag_drop_sidebar").disableSelection();
		
	});	
/* ]]> */
        </script>
        <style type="text/css">
            #text-20
            {
                margin-bottom: 5px !important;
                margin-top: 0px !important;
            }
        </style>
        <div id="feature">
            <div class="postwrap fix">
                <div class="hentry fix">
                    <div id="cycle" class="fix">
                        <div id="Affordable" class="fcontainer" style="background: ">
                            <div class="fcontent">
                                <div class="fheading">
                                    </style><h3 style="font-size: 18px; color: #666;">
                                        Awesomely Affordable</h3>
                                    <h1 style="font-size: 60px; line-height: .9em; letter-spacing: -1px; font-weight: 700;">
                                        IT Help Desk Software!</h1>
                                </div>
                                <div class="ftext">
                                    <p>
                                        <span style="font-size: 15px; color: #666">Web Help Desk is now part of the SolarWinds
                                            family of products. Web-based ticketing, change management, IT asset management,
                                            knowledge base, and more! <a href="#" class="featurelink">DIVE IN!</a></span></p>
                                    <div class="clear">
                                    </div>
                                </div>
                            </div>
                            <div class="fmedia">
                                <img src="Image/web-help-desk-affordable.png" alt="Awesomely Affordable IT Help Desk Software" />
                            </div>
                        </div>
                        <div id="Mobile_" class="fcontainer" style="background: ">
                            <div class="fcontent">
                                <div class="fheading">
                                    <h3 style="font-size: 18px; color: #666;">
                                        Keep in</h3>
                                    <h1 style="font-size: 60px; line-height: .9em; letter-spacing: -1px; font-weight: 700;">
                                        Touch</h1>
                                </div>
                                <div class="ftext">
                                    <p>
                                        <span style="font-size: 15px; color: #666">Web Help Desk is always just a touch screen
                                            away through our native iPhone application with WebKit browser support. <a href="#"
                                                class="featurelink">Learn more</a></span></p>
                                    <a href="#" target="_blank">
                                        <img src="Image/App_Store_Badge_EN.png" class="featureButtonLeft" alt="App Store Logo"
                                            border="0" /></a><img src="Image/Webkit_Logo.png" class="featureButtonRight" alt="WebKit Logo" />
                                </div>
                            </div>
                            <div class="fmedia">
                                <img src="Image/web-help-desk-mobile-apps.jpg" alt="Mobile native iPhone application with WebKit browser support" />
                            </div>
                            <div class="clear">
                            </div>
                        </div>
                        <div id="Free?" class="fcontainer" style="background: ">
                            <div class="fcontent">
                                <div class="fheading">
                                    <style type="text/css">
                                        .button-software
                                        {
                                            display: block;
                                            width: 310px;
                                            height: 106px;
                                            background: url('Image/btn-free2_alt.png') bottom;
                                            text-indent: -99999px;
                                        }
                                        .button-software:hover
                                        {
                                            background-position: 0 0;
                                        }
                                    </style>
                                    <h3 style="font-size: 18px; color: #666;">
                                        Did You Say</h3>
                                    <h1 style="font-size: 60px; line-height: .9em; letter-spacing: -1px; font-weight: 700;">
                                        FREE?</h1>
                                </div>
                                <div class="ftext">
                                    <p>
                                        <span style="font-size: 15px; color: #666">Web Help Desk software is feature-rich, intuitive,
                                            and creates instant productivity. No trial periods. And did we mention that it’s
                                            <strong>FREE!</strong> <a href="#" class="featurelink">Download Now</a></span>
                                        <br />
                                        <a href="#" title="Web Help Desk Software - Free" class="button-software" />Free</a></p>
                                </div>
                            </div>
                            <div class="fmedia">
                                <img src="Image/web-help-desk-free-woman.jpg" alt="Web Help Desk software is feature-rich, intuitive, and creates instant productivity" />
                            </div>
                            <div class="clear">
                            </div>
                        </div>
                        <div id="Dashboards" class="fcontainer" style="background: ">
                            <div class="fcontent">
                                <div class="fheading">
                                    <style type="text/css">
                                        .button-feature
                                        {
                                            display: block;
                                            width: 310px;
                                            height: 106px;
                                            text-indent: -99999px;
                                        }
                                        .button-feature:hover
                                        {
                                            background-position: 0 0;
                                        }
                                    </style>
                                    <h3 style="font-size: 18px; color: #666;">
                                        Gauge Your Help Desk Health</h3>
                                    <h1 style="font-size: 60px; line-height: .9em; letter-spacing: -1px; font-weight: 700;">
                                        Dashboards</h1>
                                </div>
                                <div class="ftext">
                                    <p>
                                        <span style="font-size: 15px; color: #666">Web Help Desk features customizable dashboards,
                                            letting you keep a finger directly on your team’s pulse. <a href="#" class="featurelink">
                                                Learn more</a></span><br />
                                        <br />
                                        <a href="#" title="Web Help Desk Software - Dashboards" class="button-feature" />
                                    Feature</a>
                                </div>
                            </div>
                            <div class="fmedia">
                                <img src="Image/web-help-desk-dashboard-feature.jpg" alt="Web Help Desk features customizable dashboards" />
                            </div>
                            <div class="clear">
                            </div>
                        </div>
                        <div id="Bottleneck" class="fcontainer" style="background: ">
                            <div class="fcontent">
                                <div class="fheading">
                                    <h3 style="font-size: 18px; color: #666;">
                                        Bottleneck</h3>
                                    <h1 style="font-size: 60px; line-height: .9em; letter-spacing: -1px; font-weight: 700;">
                                        Prevention</h1>
                                </div>
                                <div class="ftext">
                                    <p>
                                        <span style="font-size: 15px; color: #666">Web Help Desk facilitates the identification,
                                            removal, and prevention of bottlenecks through world-class reporting, efficiency
                                            gains, and automation. <a href="#" class="featurelink">Learn more</a>
                                </div>
                            </div>
                            <div class="fmedia">
                                <img src="Image/web-help-desk-no-bottlenecks.jpg" atl="Web Help Desk facilitates the identification, removal, and prevention of bottlenecks" />
                            </div>
                            <div class="clear">
                            </div>
                        </div>
                        <div id="FAQ" class="fcontainer" style="background: ">
                            <div class="fcontent">
                                <div class="fheading">
                                    <h3 style="font-size: 18px; color: #666;">
                                        Wise Knowledge Base</h3>
                                    <h1 style="font-size: 60px; line-height: .9em; letter-spacing: -1px; font-weight: 700;">
                                        Management</h1>
                                </div>
                                <div class="ftext">
                                    <p>
                                        <span style="font-size: 15px; color: #666">Knowledge equals power. Web Help Desk software
                                            increases your team’s power by promoting self-resolutions and measurable efficiency
                                            gains. <a href="#" class="featurelink">Learn more</a></span></p>
                                </div>
                            </div>
                            <div class="fmedia">
                                <img src="Image/web-help-desk-faq-owl.jpg" alt="Knowledge Base Management - Knowledge equals power - owl" />
                            </div>
                            <div class="clear">
                            </div>
                        </div>
                        <div id="Got_Help?" class="fcontainer" style="background: ">
                            <div class="fcontent">
                                <div class="fheading">
                                    <style type="text/css">
                                        .button-online
                                        {
                                            display: block;
                                            width: 310px;
                                            height: 106px;
                                            text-indent: -99999px;
                                        }
                                        .button-online:hover
                                        {
                                            background-position: 0 0;
                                        }
                                        
                                        .clear
                                        {
                                            height: 96px;
                                        }
                                    </style>
                                    <h3 style="font-size: 18px; color: #666;">
                                        Calling all IT Professionals</h3>
                                    <h1 style="font-size: 60px; line-height: .9em; letter-spacing: -1px; font-weight: 700;">
                                        Help Has Arrived</h1>
                                </div>
                                <div class="ftext">
                                    <p>
                                        <span style="font-size: 15px; color: #666;">For over a decade, thousands of organizations
                                            have trusted Web Help Desk as the leading choice for IT help desk software. <a href="#"
                                                class="featurelink">Free Download</a></span><br />
                                        <a href="#" title="Web Help Desk Software - Online Test Drive" class="button-online" />
                                    Online Demo</a>
                                </div>
                            </div>
                            <div class="fmedia">
                                <img style="margin-left: -40px;" src="Image/web-help-desk-has-arrived-woman.jpg"
                                    alt="Web Help Desk - the leading choice for cross-platform help desk software">
                            </div>
                            <div class="clear">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="hl">
                </div>
                <div id="feature-footer" class="fix">
                    <span class="playpause pause"><span>&nbsp;</span></span>
                    <div id="featurenav" class="thumb_nav">
                    </div>
                </div>
                <div class="clear">
                </div>
                <script type='text/javascript'>/* <![CDATA[ */ var portfolioSlideshowOptions = { psFancyBox:false, psHash:false, psThumbSize:'75', psLoader:false, psFluid:false, psTouchSwipe:true, psKeyboardNav:true, psInfoTxt:'of' };/* ]]> */</script>
                <script type="text/javascript" src="JScrip/jquery.cycle.all.min.js"></script>
                <script src="JScrip/jquery-ui.custom.js" type="text/javascript"></script>
                <script src="JScrip/scrollable.min.js" type="text/javascript"></script>
                <script src="JScrip/portfolio-slideshow.js" type="text/javascript"></script>
                <script src="JScrip/jquery.prettyPhoto.min.js" type="text/javascript"></script>
                <script type='text/javascript'>
/* <![CDATA[ */
var VisitorCountry = {"ip":"58.187.228.212","code":"VN","name":"Vietnam"};
/* ]]> */
                </script>
                <script src="JScrip/visitor-country.js" type="text/javascript"></script>
                <script>
                    jQuery(function ($) {
                        $('a[rel^="prettyPhoto"]').prettyPhoto();
                    });
                </script>
                <script src="JScrip/states.js" type="text/javascript"></script>
                </body> </html>
            </div>
    </span>
</asp:Content>
