<%@page import="dao.newsDAO"%>
<%@page import="modal.News"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
 <%@ include file="/css/styleWeb.css"%>
 </style>
</head>
    <body class="page-folder " data-source="Folder-TheThao_BongDa" id="dark_theme">
        <div id="_ads_bg_top" class="lazier"></div>
        <section id="supper_masthead" class="section section-ads-top banner-ads banner-top-home"></section>

        <section class="section"></section>
        <!-- CONTENT  -->
        <section class="section top-header top-header-folder">
            <div class="container" data-campaign="Header">
                <nav class="width_common flexbox nav-folder">
                    <div class="title-folder">
                        <a title="Thể thao" data-medium="Menu-TheThao" href="/the-thao">Tổng hợp tin tức thể thao</a>
                    </div>
                    <ul class="ul-nav-folder">
                        <li class="active">
                            <h1>
                                <a title="Bóng đá" data-medium="Menu-BongDa" href="/bong-da">Bóng đá</a>
                            </h1>
                        </li>
                                      
                    </ul>               
                </nav>
                <div id="_boxDLBD" class="lazier"></div>
            </div>
        </section>
        <section class="section section_container mt15">
            <div class="container flexbox">
                <div class="col-left col-left-new col-left-subfolder" data-campaign="Stream" id="automation_TV0">
                    <div class="width_common list-news-subfolder has-border-right">
                        <% 
                        	List<News> list = (List<News>)(request.getAttribute("list"));
                        %>
                        <%
                        	for(int i=0;i<list.size();i++){
                        %>
                        <article class="item-news item-news-common thumb-left">
                            <div class="thumb-art">
                                <a data-medium="Item-3" data-thumb="1" href="https://vnexpress.net/viet-nam-khoi-dau-tot-nhat-lich-su-du-u20-chau-a-4577519.html" class="thumb thumb-5x3" title="Việt Nam khởi đầu tốt nhất lịch sử dự U20 châu Á">
                                    <picture>
                                        <img itemprop="contentUrl" style="transform: translateX(-50%); left: 50%;" loading="lazy" intrinsicsize="240x144" alt="<%= list.get(i).getTitle() %>" class="lazy" src="<%= list.get(i).getImages()%>">
                                    </picture>
                                </a>
                            </div>
                            <h2 class="title-news">
                                <a data-medium="Item-3" data-thumb="1" href="" title="<%= list.get(i).getTitle() %>"><%= list.get(i).getTitle() %></a>
                            </h2>
                            <p class="description">
                                <a data-medium="Item-3" data-thumb="1" href="" title="<%= list.get(i).getTitle() %>"><%= list.get(i).getContent() %></a>
                            </p>
                        </article>
                        <%} %>
                    </div>
                    <div class="width_common pagination flexbox">
                        <div id="pagination" class="paging flexbox">
                            <div class="button-page flexbox">
                                <a href="javascript:;" class="btn-page active">1</a>
                                <a href="/bong-da-p2" class="btn-page">2</a>
                                <a href="/bong-da-p3" class="btn-page">3</a>
                                <a href="/bong-da-p4" class="btn-page">4</a>
                                <a href="/bong-da-p2" class="btn-page next-page ">
                                    <svg class="ic ic-arrow-right">
                                        <use xlink:href="#Arrow-Right-1"></use>
                                    </svg>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-right col-right-new col-right-subfolder sticky-forcevne" id="automation_HV0">
                    <div id="_large_1" class="lazier"></div>
                    <div class="box-category">
                        <div class="banner-ads">
                            <div data-id="large_1" id="sis_large1">
                                <script>
                                    googTagCode.display.push("sis_large1");
                                </script>
                            </div>
                        </div>
                    </div>
                    <div id="_list_box_subfolder" class="lazier" style="height:100%"></div>
                </div>
            </div>
        </section>
        
    </body>
</html>