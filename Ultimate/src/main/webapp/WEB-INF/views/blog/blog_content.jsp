<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="/header/page"></jsp:include>
<div class="container">
	<div class="row">
		<div class="col-lg-12">
			<div class="container" ng-controller="BlogContentController"
				style="margin-bottom: 2%;">

				<div class="row">
					<div class="col-lg-12">
						<h1 class="page-header"></h1>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<h1 class="page-header"></h1>
					</div>
				</div>
				<input type="hidden" id="alias" value="${alias}" />
				<div class="row" style="margin-left: -4%; margin-right: -4%;">
					<div class="clearfix visible-xs"></div>
					<div class="col-md-10" id="middle">
						<div class="article_title_header" ng-bind="data.title"></div>
						<div ng-bind-html="data.content | unsafe"></div>
					</div>
					<div class="col-md-2" id="right">
						<p>This website is intended to the beginners,developers and
							researchers , who want to learn about java related
							technologies,who want to develop something new & want to give an
							useful software component to the people</p>
					</div>
				</div>
			</div>
		</div>
	</div>

</div>

<jsp:include page="/footer"></jsp:include>