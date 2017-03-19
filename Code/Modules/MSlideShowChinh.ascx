<%@ Control Language="C#" AutoEventWireup="true" CodeFile="MSlideShowChinh.ascx.cs" Inherits="Modules_MSlideShowChinh" %>
<div class="col-md-8 col-xs-12" style="padding:0px;min-height:100px">
     <!-- #region Jssor Slider Begin -->
    <!-- Generator: Jssor Slider Maker -->
    <!-- Source: http://www.jssor.com -->
    <!-- This code works with jquery library. -->
    <%--<script src="js/jquery-1.11.3.min.js" type="text/javascript"></script>
    <script src="js/jssor.slider-22.2.16.mini.js" type="text/javascript"></script>--%>
    <script src="../Scripts/SlideShowChinh/jquery-1.11.3.min.js"></script>
    <script src="../Scripts/SlideShowChinh/jssor.slider-22.2.16.mini.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function ($) {

            var jssor_1_options = {
              $AutoPlay: true,
              $ArrowNavigatorOptions: {
                $Class: $JssorArrowNavigator$
              },
              $ThumbnailNavigatorOptions: {
                $Class: $JssorThumbnailNavigator$,
                $Cols: 4,
                $SpacingX: 4,
                $SpacingY: 4,
                $Orientation: 2,
                $Align: 0
              }
            };

            var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);

            /*responsive code begin*/
            /*remove responsive code if you don't want the slider scales while window resizing*/
            function ScaleSlider() {
                var refSize = jssor_1_slider.$Elmt.parentNode.clientWidth;
                if (refSize) {
                    refSize = Math.min(refSize, 810);
                    jssor_1_slider.$ScaleWidth(refSize);
                }
                else {
                    window.setTimeout(ScaleSlider, 30);
                }
            }
            ScaleSlider();
            $(window).bind("load", ScaleSlider);
            $(window).bind("resize", ScaleSlider);
            $(window).bind("orientationchange", ScaleSlider);
            /*responsive code end*/
        });
    </script>
    <style>
        /* jssor slider arrow navigator skin 02 css */
        /*
        .jssora02l                  (normal)
        .jssora02r                  (normal)
        .jssora02l:hover            (normal mouseover)
        .jssora02r:hover            (normal mouseover)
        .jssora02l.jssora02ldn      (mousedown)
        .jssora02r.jssora02rdn      (mousedown)
        .jssora02l.jssora02lds      (disabled)
        .jssora02r.jssora02rds      (disabled)
        */
        .jssora02l, .jssora02r {
            display: block;
            position: absolute;
            /* size of arrow element */
            width: 55px;
            height: 55px;
            cursor: pointer;
            background: url('../Images/ImgSlideShow/a02.png') no-repeat;
            overflow: hidden;
        }
        .jssora02l { background-position: -3px -33px; }
        .jssora02r { background-position: -63px -33px; }
        .jssora02l:hover { background-position: -123px -33px; }
        .jssora02r:hover { background-position: -183px -33px; }
        .jssora02l.jssora02ldn { background-position: -3px -33px; }
        .jssora02r.jssora02rdn { background-position: -63px -33px; }
        .jssora02l.jssora02lds { background-position: -3px -33px; opacity: .3; pointer-events: none; }
        .jssora02r.jssora02rds { background-position: -63px -33px; opacity: .3; pointer-events: none; }
        /* jssor slider thumbnail navigator skin 11 css *//*.jssort11 .p            (normal).jssort11 .p:hover      (normal mouseover).jssort11 .pav          (active).jssort11 .pav:hover    (active mouseover).jssort11 .pdn          (mousedown)*/
        .jssort11 .p {
                position: absolute;    
                top: 0;    
                left: 0;    
                width: 200px;    
                height: 69px;    
                background: #0094ff;

        }
        .jssort11 .tp { 
               position: absolute;    
               top: 0;    
               left: 0;    
               width: 100%;    
               height: 100%;    
               border: none;
               background: #0094ff;
               color:#0094ff;
        }
        .jssort11 .i, .jssort11 .pav:hover .i {
                position: absolute;
                top: 3px;    
                left: 3px;    
                width: 60px;    
                height: 30px;    
                border: #000000 1px dashed;

        }
        * html .jssort11 .i {
                width /**/: 62px;    
                height /**/: 32px;}
        .jssort11 .pav .i {
                border: #000000 1px solid;

        }
        .jssort11 .t, .jssort11 .pav:hover .t {
                 position: absolute;    
                 top: 3px;    
                 left: 68px;   
                  width: 129px;    
                  height: 32px;    
                  line-height: 32px;    
                  text-align: center;    
                  color: #ffffff;    
                  font-size: 13px;    
                  font-weight: 700;}
        .jssort11 .pav .t, .jssort11 .p:hover .t {    
            color: #ff6a00;

        }
        .jssort11 .c, .jssort11 .pav:hover .c {    
            position: absolute;    
            top: 38px;    
            left: 3px;    
            width: 224px;    
            height: 32px;    
            line-height: 32px;    
            color: #ff6a00;    
            font-size: 11px;    
            font-weight: 400;    
            overflow: hidden;}
        .jssort11 .pav .c, .jssort11 .p:hover .c {    
            color: #ffffff;

        }
        .jssort11 .t, .jssort11 .c {    
            transition: color 2s;    
            -moz-transition: color 2s;    
            -webkit-transition: color 2s;    
            -o-transition: color 2s;}
        .jssort11 .p:hover .t, .jssort11 .pav:hover .t, .jssort11 .p:hover .c, .jssort11 .pav:hover .c {
                transition: none;    
                -moz-transition: none;    
                -webkit-transition: none;    
                -o-transition: none;}
        .jssort11 .p:hover, .jssort11 .pav:hover {    
            background: #333;

        }.jssort11 .pav, .jssort11 .p.pdn {    
             background: #462300;
         }
    </style>
    <div id="jssor_1" style="position:relative;margin:0 auto;top:0px;left:0px;width:810px;height:300px;overflow:hidden;visibility:hidden;background-color:#000000;">
        <!-- Loading Screen -->
        <div data-u="loading" style="position:absolute;top:0px;left:0px;background-color:rgba(0,0,0,0.7);">
            <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
            <div style="position:absolute;display:block;background:url('../Images/ImgSlideShow/loading.gif') no-repeat center center;top:0px;left:0px;width:100%;height:100%;"></div>
        </div>
        <div data-u="slides" style="cursor:default;position:relative;top:0px;left:0px;width:600px;height:300px;overflow:hidden;">
            <div>
                <img data-u="image" src="../Images/ImgSlideShow/002.jpg" />
                <div data-u="thumb">
                    <img class="i" src="../Images/ImgSlideShow/thumb-002.jpg" />
                    <div class="t">Banner Rotator</div>
                    <div class="c">360+ touch swipe slideshow effects</div>
                </div>
            </div>
            <div>
                <img data-u="image" src="../Images/ImgSlideShow/003.jpg" />
                <div data-u="thumb">
                    <img class="i" src="../Images/ImgSlideShow/thumb-003.jpg" />
                    <div class="t">Image Gallery</div>
                    <div class="c">Image gallery with thumbnail navigation</div>
                </div>
            </div>
            <a data-u="any" href="http://www.jssor.com" style="display:none">List Slider</a>
            <div>
                <img data-u="image" src="../Images/ImgSlideShow/004.jpg" />
                <div data-u="thumb">
                    <img class="i" src="../Images/ImgSlideShow/thumb-004.jpg" />
                    <div class="t">Carousel</div>
                    <div class="c">Touch swipe, mobile device optimized</div>
                </div>
            </div>
            <div>
                <img data-u="image" src="../Images/ImgSlideShow/005.jpg" />
                <div data-u="thumb">
                    <img class="i" src="../Images/ImgSlideShow/thumb-005.jpg" />
                    <div class="t">Themes</div>
                    <div class="c">30+ professional themems + growing</div>
                </div>
            </div>
            <div>
                <img data-u="image" src="../Images/ImgSlideShow/006.jpg" />
                <div data-u="thumb">
                    <img class="i" src="../Images/ImgSlideShow/thumb-006.jpg" />
                    <div class="t">Tab Slider</div>
                    <div class="c">Tab slider with auto play options</div>
                </div>
            </div>
        </div>
        <!-- Thumbnail Navigator -->
        <div data-u="thumbnavigator" class="jssort11" style="position:absolute;right:5px;top:0px;font-family:Arial, Helvetica, sans-serif;-moz-user-select:none;-webkit-user-select:none;-ms-user-select:none;user-select:none;width:200px;height:300px;" data-autocenter="2">
            <!-- Thumbnail Item Skin Begin -->
            <div data-u="slides" style="cursor: default;">
                <div data-u="prototype" class="p">
                    <div data-u="thumbnailtemplate" class="tp"></div>
                </div>
            </div>
            <!-- Thumbnail Item Skin End -->
        </div>
        <!-- Arrow Navigator -->
        <span data-u="arrowleft" class="jssora02l" style="top:0px;left:8px;width:55px;height:55px;" data-autocenter="2"></span>
        <span data-u="arrowright" class="jssora02r" style="top:0px;right:218px;width:55px;height:55px;" data-autocenter="2"></span>
    </div>
    <!-- #endregion Jssor Slider End -->
</div>