<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<html>

<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Shell EVE - Non PCI Landing Page</title>

<c:set var="context" value="${pageContext.request.contextPath}" />

<link href='${context}/resources/assets/css/style/bootstrap.min.css'
	rel="stylesheet" />
<link href='${context}/resources/assets/css/style/bootstrap-theme.css'
	rel="stylesheet" />
<link href='${context}/resources/assets/css/style/bootstrap-switch.css'
	rel="stylesheet" />
<link href='${context}/resources/assets/css/style/index.css'
	rel="stylesheet" />
<link href='${context}/resources/assets/css/style/header.css'
	rel="stylesheet" />
<link href='${context}/resources/assets/css/style/latestDocuments.css'
	rel="stylesheet" />
<link href='${context}/resources/assets/css/style/summary.css'
	rel="stylesheet" />


<script src="${localProps['logout_js']}" type="text/javascript">&nbsp;</script>
<script src="${localProps['jquery_min_js']}" type="text/javascript">&nbsp;</script>
<script src="${localProps['jquery_modal_js']}" type="text/javascript">&nbsp;</script>
<script src="${localProps['session_timeout_js']}" type="text/javascript">&nbsp;</script>
<script src="${localProps['session_timeout_value']}" type="text/javascript">&nbsp;</script>
<link rel="stylesheet" href="${localProps['jquery_modal_css']}"
	type="text/css" media="screen" />

<!-- <script src="https://rtsphome.m.shlrtsp.com:3443/logout/logout.js"
	type="text/javascript">&nbsp;</script>
<script src="https://rtsphome.m.shlrtsp.com:3443/logout/jquery-min.js"
	type="text/javascript">&nbsp;</script>
<script src="https://rtsphome.m.shlrtsp.com:3443/logout/jquery.modal.js"
	type="text/javascript">&nbsp;</script>
<link rel="stylesheet"
	href="https://rtsphome.m.shlrtsp.com:3443/logout/jquery.modal.css"
	type="text/css" media="screen" /> -->

<!-- <script src='${context}/resources/assets/js/scripts/timeout.js'
	type="text/javascript"></script>
	
<script src='${context}/resources/assets/js/scripts/timeoutvalue.js'
	type="text/javascript"></script> -->

<script type="text/javascript">

	function logout(lang,logout_url){
		//localStorage.quit=$.now()
				
				var webSystem = new WebSystem(lang, "LandingPage", logout_url);
				webSystem.logout();
			}
		</script>
<script src='${context}/resources/assets/js/scripts/jquery-1.9.1.js'
	type="text/javascript"></script>
<script src='${context}/resources/assets/js/scripts/bootstrap.min.js'
	type="text/javascript"></script>
<script src='${context}/resources/assets/js/scripts/bootstrap-switch.js'
	type="text/javascript"></script>
<%-- <script src='${context}/resources/assets/js/scripts/common.js'
		type="text/javascript"></script> --%>

<!-- <script src="${localProps['session_timeout_js']}"
	type="text/javascript"></script> -->

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src='${context}/resources/assets/js/scripts/html5shiv.min.js' type="text/javascript"></script>
    <script src='${context}/resources/assets/js/scripts/respond.min.js' type="text/javascript"></script>
    <![endif]-->


<link rel="icon"
	href="${context}/resources/assets/images/shell_logo.png"
	type="image/gif" sizes="16x16">

</head>


<body onload="changeLink();inactivityTime();">

	<link href='${context}/resources/assets/css/style/leftNav.css'
		rel="stylesheet" />
	<div class="leftNav hidden-xs"
		style="text-align: center; margin: 20px 0px 0px 0px">
		<!-- <div class="leftTop"> -->
		<table class="centerTable leftTable" style="color: #404040;">
			<tr>
				<!-- <td  style="cursor: pointer;"  onclick="goBack();"> -->
				<td><img
					src="${context}/resources/assets/images/shell_logo.png" alt="Logo"
					width="82" height="76" style="margin: 0px 10px 0px 20px"></td>
				<!-- </tr>
  	<tr> -->
				<td>&nbsp;</td>
			</tr>
		</table>
		<!-- </div> -->
		<div class="leftBottom">
			<ol id="dmApps" class="selectable">


			</ol>
		</div>
	</div>

	<div id="pageContainer" class="rightNav">


		<link href='${context}/resources/assets/css/style/main.css'
			rel="stylesheet" />

		<script type="text/javascript">

	function changeLink(ouvalue){
		var singleOUvalue = "${singleouVal}"; 
		if ( singleOUvalue != ""){
			var countryCode = "${singleOuMap}";
		}	else {
				var countryCode = $('#OUCode').val();	
			
		}	
		var buttonsLinks = ['myLink1','myLink2','myLink3','myLink4']
		var regex = /\?OU=[A-Za-z]*/;
		
		for(i=0;i<buttonsLinks.length;i++){
			var myLinkBtn = document.getElementById(buttonsLinks[i]);
				
			console.log(myLinkBtn)
			if(myLinkBtn){
					
					var retportal="digitalmail"
					//var value=myLinkBtn.toString().includes(retportal);
					
					var value=myLinkBtn.toString()
					valueret=false
					valueuk="GB"
					valueretuk=false
					
					if (value.indexOf(retportal) != -1){
						valueret = true
					}
					
					if (countryCode.indexOf(valueuk) != -1){
						valueretuk = true
					}
					
					//if ((value) && countryCode.includes("UK")){
					//if ((!valueret) && countryCode.includes("GB")){
					if ((!valueret) && (valueretuk)){
						var newCountryCode = "?OU="+ "UK"
						var oldLink = myLinkBtn.href
					} else {
						var newCountryCode = "?OU="+ countryCode
						var oldLink = myLinkBtn.href
						
					}
					
					if(regex.test(oldLink)){
						myLinkBtn.href= oldLink.replace(regex,newCountryCode)	
						
					}else{
						myLinkBtn.href= oldLink + newCountryCode
						
					}
					console.log(myLinkBtn)
			}	
		}
		
	}
	
			
function searchAjax(ouvalue) {
	changeLink(ouvalue)
	$.ajax({
		type : "GET",
		data : ouvalue,
		url : "${pageContext.request.contextPath}/storeOUCode/"+ouvalue,
		success : function(data) {
			console.log("SUCCESS: ", data);
		},
		error : function(e) {
			console.log("ERROR: ", e);
		}
	});
}
/* 
function appendUrl(urlvalue){
	
	var singleOUvalue = "${singleouVal}"; 
	if ( singleOUvalue != ""){
		var ouvalue = "${singleOuMap}";
		var appendedUrl = urlvalue+"?OU="+ouvalue;
		location.href = appendedUrl;
	}	else {
		var ouvalue = $('#OUCode').val();
		var appendedUrl = urlvalue+"?OU="+ouvalue;
		location.href = appendedUrl;
		
	}	
} */

</script>
		<style type="text/css">
#userProfileImage {
	height: 35px;
	width: 35px;
}

#userName {
	color: #fff;
	float: right;
	line-height: 2.5;
}

#userSettings {
	cursor: p
}

.popover-content a, p {
	color: black;
	font-style: normal;
	font-weight: normal;
	font-size: 14px;
	text-decoration: none;
}

.popover-content table tr td {
	padding-top: 2px;
}

.popover-content table tr {
	cursor: pointer;
}

.popover-content table tr a:HOVER, .popover-content table tr:HOVER {
	color: #EA232A;
	text-decoration: none;
}

.dropdown {
	font-weight: bold;
	font-family: Arial;
	font-size: 18%;
	font-size: 14px;
}

a:hover {
	background: #595959;
	color: #FBCE07;
}

a:focus {
	background: #595959;
	color: #FBCE07;
}

select:hover {
	background: #595959;
	color: #FBCE07;
}

select:focus {
	background: #595959;
	color: #FBCE07;
}
</style>


		<!-- Modal -->
		<div class="modal fade hp-modal" id="privacyPolicyModal"
			style="display: none" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">Privacy Policy</h4>
					</div>
					<div class="modal-body">Text to be provided at a later time.
					</div>
					<div class="modal-footer hp-modal">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>



		<div class="modal fade hp-modal" id="termsAndConditionModal"
			style="display: none" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">Terms & Conditions</h4>
					</div>
					<div class="modal-body">Text to be provided at a later time.
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>




		<div class="navbar navbar-default navbar-fixed-top hp-navbar"
			role="navigation">
			<div class="container-fluid" style="padding-right: 30px">
				<div class="navbar-header hp-navbar-header">
					<!--  <img id="userProfileImage" src="${context}/resources/assets/images/user-logo.png" class="imagePopup img-circle pull-left"></img>  -->

					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#main-collapse">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>

					<a class="navbar-brand hidden-sm hidden-md hidden-lg"><img
						src="${context}/resources/assets/images/shell_logo.png"
						style="width: 35px; height: 35px; margin-right: 10px;">Retailer
						Transaction Settlement Platform</a>

				</div>
				<div id="main-collapse" class="navbar-collapse collapse">
					<ul class="nav navbar-nav hp-nav">

						<li class="visible-xs logoutCss"><c:forEach var="report"
								items="${reportList}">
								<c:if test="${report.description eq 'Logout'}">
									<a class="username logoutCss"
										style="text-transform: uppercase;"
										href="javascript:logout('${fn:toUpperCase(userlangvar)}','${report.report_link}');">
										<c:choose>
											<c:when test="${fn:containsIgnoreCase(userlangvar, 'fr-ca')}">Déconnexion</c:when>
											<c:when
												test="${fn:containsIgnoreCase(userlangvar, 'trd-zh')}">登出</c:when>
											<c:when test="${fn:containsIgnoreCase(userlangvar, 'th-th')}">ออกจากระบบ</c:when>
											<c:when test="${fn:containsIgnoreCase(userlangvar, 'cs-cz')}">Odhlásit</c:when>
											<c:when test="${fn:containsIgnoreCase(userlangvar, 'sk-sk')}">Odhlásiť sa</c:when>
											<c:when test="${fn:containsIgnoreCase(userlangvar, 'bg-bg')}">Излизане</c:when>
											<c:when test="${fn:containsIgnoreCase(userlangvar, 'pl-pl')}">Wyloguj</c:when>
											<c:when test="${fn:containsIgnoreCase(userlangvar, 'sl-si')}">Odjava</c:when>
											<c:otherwise>${report.description}</c:otherwise>
										</c:choose>
									</a>
								</c:if>
							</c:forEach></li>
					</ul>
					<ul class="nav navbar-nav navbar-right hidden-xs"
						style="margin-top: 10px">
						<li class="userSettings" style="cursor: pointer"
							data-container="body" data-placement="bottom">
							<div id="userNav" class="logoutCss">
								<c:forEach var="report" items="${reportList}">
									<c:if test="${report.description eq 'Logout'}">
										<a id="myLink8" class="username"
											href="javascript:logout('${fn:toUpperCase(userlangvar)}','${report.report_link}');">
											<c:choose>
												<c:when
													test="${fn:containsIgnoreCase(userlangvar, 'fr-ca')}">Déconnexion</c:when>
												<c:when
													test="${fn:containsIgnoreCase(userlangvar, 'trd-zh')}">登出</c:when>
												<c:when
													test="${fn:containsIgnoreCase(userlangvar, 'th-th')}">ออกจากระบบ</c:when>
												<c:when test="${fn:containsIgnoreCase(userlangvar, 'cs-cz')}">Odhlásit</c:when>
											    <c:when test="${fn:containsIgnoreCase(userlangvar, 'sk-sk')}">Odhlásiť sa</c:when>
											    <c:when test="${fn:containsIgnoreCase(userlangvar, 'bg-bg')}">Излизане</c:when>
												<c:when test="${fn:containsIgnoreCase(userlangvar, 'pl-pl')}">Wyloguj</c:when>
												<c:when test="${fn:containsIgnoreCase(userlangvar, 'sl-si')}">Odjava</c:when>
												<c:otherwise>${report.description}</c:otherwise>
											</c:choose>
										</a>
									</c:if>
								</c:forEach>
							</div>
						</li>
					</ul>
				</div>
				<!--/.nav-collapse -->

			</div>
		</div>

		<a id="userLocale" style="display: none">en</a>

		<div id="mainContent" style="margin-top: 90px !important;">
			<meta http-equiv="X-UA-Compatible" content="IE=edge">

			<link href="${context}/resources/assets/css/style/bootstrap.min.css"
				rel="stylesheet">
			<link
				href="${context}/resources/assets/css/style/bootstrap-theme.css"
				rel="stylesheet">
			<link href="${context}/resources/assets/css/style/index.css"
				rel="stylesheet">
			<link href="${context}/resources/assets/css/style/header.css"
				rel="stylesheet">

			<c:if test="${singleouVal eq '' and DisplayOuList eq 'YES'}">
				<c:choose>
					<c:when test="${displayLinkStatus eq 'YES'}">
						<b>Select Country:</b>
						<br>
						<select id="OUCode" class="dropdown" name='OUCodeName'
							onchange="searchAjax(this.value)">
							<c:forEach var="OUCodeName" items="${treeOUMap}">
								<option value="${OUCodeName.key}"><c:out
										value="${OUCodeName.value}" /></option>
							</c:forEach>
						</select>
					</c:when>
					<c:otherwise>
						<b>Select Country:</b>
						<br>
						<select id="OUCode" class="dropdown" name='OUCodeName'
							onchange="searchAjax(this.value)">
							<c:forEach var="OUCodeName" items="${treeOUMap}">
								<option value="${OUCodeName.key}"><c:out
										value="${OUCodeName.value}" /></option>
							</c:forEach>
						</select>
					</c:otherwise>
				</c:choose>
			</c:if>
			<div
				style="font-weight: bold; font-family: Arial; font-size: 18%; font-size: 14px; color: #FA8072;"
				align="center">
				<c:forEach var="report" items="${reportList}">

					<c:if
						test="${DisplayErrorMessage ne 'NO' and DisplayErrorMessage eq 'error_msg_001' and report.description eq displayErrorDesc}">
						<c:choose>
							<c:when test="${fn:containsIgnoreCase(userlangvar, 'fr-ca')}">Le pays n’a pas été sélectionné</c:when>
							<c:when test="${fn:containsIgnoreCase(userlangvar, 'std-en')}">No Country was selected</c:when>
							<c:when test="${fn:containsIgnoreCase(userlangvar, 'trd-zh')}">未選擇國家/地區</c:when>
							<c:when test="${fn:containsIgnoreCase(userlangvar, 'th-th')}">คุณยังไม่ได้เลือกประเทศ</c:when>
							<c:when test="${fn:containsIgnoreCase(userlangvar, 'cs-cz')}">Stát nebyl vybrán</c:when>
							<c:when test="${fn:containsIgnoreCase(userlangvar, 'sk-sk')}">Stát nebol vybraný</c:when>
							<c:when test="${fn:containsIgnoreCase(userlangvar, 'bg-bg')}">Не е избрана държава</c:when>
							<c:when test="${fn:containsIgnoreCase(userlangvar, 'pl-pl')}">Nie wybrano żadnego kraju</c:when>
							<c:when test="${fn:containsIgnoreCase(userlangvar, 'sl-si')}">Nobena država ni bila izbrana</c:when>
							<c:otherwise>No Country was selected</c:otherwise>
						</c:choose>
					</c:if>
					<c:if
						test="${DisplayErrorMessage ne 'NO' and DisplayErrorMessage eq 'error_msg_002' and report.description eq displayErrorDesc}">
						<c:choose>
							<c:when test="${fn:containsIgnoreCase(userlangvar, 'fr-ca')}">Le pays sélectionné n’est pas accessible</c:when>
							<c:when test="${fn:containsIgnoreCase(userlangvar, 'std-en')}">Selected Country is not accessible</c:when>
							<c:when test="${fn:containsIgnoreCase(userlangvar, 'trd-zh')}">無法顯示所選國家/地區</c:when>
							<c:when test="${fn:containsIgnoreCase(userlangvar, 'th-th')}">ประเทศที่เลือกไม่สามารถใช้งานได้</c:when>
							<c:when test="${fn:containsIgnoreCase(userlangvar, 'cs-cz')}">Vybraný stát je nedostupný</c:when>
							<c:when test="${fn:containsIgnoreCase(userlangvar, 'sk-sk')}">Vybraný štát je nedostupný</c:when>
							<c:when test="${fn:containsIgnoreCase(userlangvar, 'bg-bg')}">Избраната държава не е достъпна</c:when>
							<c:when test="${fn:containsIgnoreCase(userlangvar, 'pl-pl')}">Wybrany kraj jest niedostępny</c:when>
							<c:when test="${fn:containsIgnoreCase(userlangvar, 'sl-si')}">Izbrana država ni na voljo</c:when>
							<c:otherwise>Selected Country is not accessible</c:otherwise>
						</c:choose>
					</c:if>
				</c:forEach>
				<c:if test="${Dr_Situation eq 'yes' and UserRole ne 'HPE_SUPPORT'}">
					<c:choose>
						<c:when test="${fn:containsIgnoreCase(userlangvar, 'std-en')}">RTSP is under maintenance, please try again</c:when>
						<c:when test="${fn:containsIgnoreCase(userlangvar, 'fr-ca')}">RTSP  est en construction, svp essayez plus tard</c:when>
						<c:when test="${fn:containsIgnoreCase(userlangvar, 'trd-zh')}">RTSP 正在維修中, 請稍後再嘗試</c:when>
						<c:when test="${fn:containsIgnoreCase(userlangvar, 'th-th')}">ระบบ</c:when>
						<c:when test="${fn:containsIgnoreCase(userlangvar, 'cs-cz')}">RTSP je v údržbě, zkuste to prosím znovu</c:when>
						<c:when test="${fn:containsIgnoreCase(userlangvar, 'sk-sk')}">RTSP je v údržbe, skúste to, prosím, znova</c:when>
						<c:when test="${fn:containsIgnoreCase(userlangvar, 'bg-bg')}">RTSP е в процес на поддръжка, опитайте отново</c:when>
						<c:when test="${fn:containsIgnoreCase(userlangvar, 'pl-pl')}">Trwa konserwacja RTSP. Spróbuj ponownie</c:when>
						<c:when test="${fn:containsIgnoreCase(userlangvar, 'sl-si')}">Poteka vzdrževanje sistema RTSP, poskusite znova</c:when>
						<c:otherwise>RTSP is under maintenance, please try again</c:otherwise>
					</c:choose>
				</c:if>
			</div>
			<h3 class="hidden-xs"
				style="font-weight: bold; font-family: Arial; font-size: 65%; font-size: 16px; color: #404040"
				align="center">Retail Transaction Settlement Platform</h3>
			<h4 class="hidden-xs"
				style="font-weight: bold; font-family: Arial; font-size: 65%; font-size: 16px; color: #404040"
				align="right">
				<c:if test="${displayLinkStatus eq 'YES' or displayLinkStatus1 eq 'YES'}">
					${ENV_NAME}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
				</c:if>
			</h4>
			<c:if test="${displayLinkStatus eq 'YES'}">
				<c:forEach var="report" items="${reportList}" varStatus="status">
					<c:if
						test="${fn:containsIgnoreCase(report.description, displayLinkDesc)}">
						<a id="myLink6"
							class=".col-md-3 button_colour default-buton-color" href="#"
							onclick="location.href='${report.report_link}';"
							style="float: right; text-align: center; padding: 2px !important; horizontaly-align: middle; border-radius: 5px; cursor: pointer !important;">
							<h4
								style="font-weight: bold; font-family: Arial; font-size: 18%; font-size: 14px;">${report.description}</h4>
						</a>
					</c:if>
				</c:forEach>
				<br>
				<br>
			</c:if>
			<c:if test="${displayLinkStatus eq 'YES'}">
			     <c:forEach var="report1" items="${reportList}" varStatus="status">
					<c:if
						test="${report1.description eq 'Click here for STAGE landing page'}">
						<a id="myLink7"
							class=".col-md-3 button_colour default-buton-color" href="#"
							onclick="location.href='${report1.report_link}';"
							style="float: right; text-align: center; padding: 2px !important; horizontaly-align: middle; border-radius: 5px; cursor: pointer !important;">
							<h4
								style="font-weight: bold; font-family: Arial; font-size: 18%; font-size: 14px;">${report1.description}</h4>
						</a>
					</c:if>
				 </c:forEach>
				<br>
				<br>
			</c:if>
			<c:if test="${displayLinkStatus1 eq 'YES'}">
			     <c:forEach var="report1" items="${reportList}" varStatus="status">
					<c:if
						test="${report1.description eq 'Click here for STAGE landing page'}">
						<a id="myLink8"
							class=".col-md-3 button_colour default-buton-color" href="#"
							onclick="location.href='${report1.report_link}';"
							style="float: right; text-align: center; padding: 2px !important; horizontaly-align: middle; border-radius: 5px; cursor: pointer !important;">
							<h4
								style="font-weight: bold; font-family: Arial; font-size: 18%; font-size: 14px;">${report1.description}</h4>
						</a>
					</c:if>
				 </c:forEach>
				<br>
				<br>
			</c:if>
			<div class="container-fluid"
				style="margin: 15px; padding-top: 20px; width: 100%">
				<div class="row" style="padding-right: 20px;"
					style="visibility: inherit;">
					<c:if test="${Dr_Situation ne 'yes' or UserRole eq 'HPE_SUPPORT'}">
						<c:choose>
							<c:when test="${fn:length(reportList) eq 2}">
							
								<c:forEach var="report" items="${reportList}" varStatus="status">
									<c:if test="${report.description ne 'Logout'}">
							
										<c:if test="${fn:length(treeOUMap) eq 1 }">
							
											<script> appendUrl('${report.report_link}') </script>
										</c:if>
											
										<a id="myLink8"
											class="col-md-3 boxDocumentItem default-bk-color" href="#"
											
											onclick="appendUrl('${report.report_link}')"> <br>
											<h4 class="recentTitle">${report.description}</h4>
										</a>
									</c:if>
								</c:forEach>

							</c:when>
							<c:otherwise>
								<c:forEach var="report" items="${reportList}" varStatus="status">
									<c:if
										test="${fn:containsIgnoreCase(report.description, 'My Reports')}">
										<a id="myLink1"
											class="col-md-3 boxDocumentItem default-bk-color" href="${report.report_link}"> <br>
											<h4 class="recentTitle">${report.description}</h4>
										</a>
								
									</c:if>
								</c:forEach>
								<c:forEach var="report" items="${reportList}" varStatus="status">
								
									<c:if
										test="${fn:containsIgnoreCase(report.description, 'Report Inquiry Portal')}">
										<a id="myLink2"
											class="col-md-3 boxDocumentItem default-bk-color" href="${report.report_link}"> <br>
											<h4 class="recentTitle">${report.description}</h4>
										</a>
								
									</c:if>
								</c:forEach>
								<c:forEach var="report" items="${reportList}" varStatus="status">
									<c:if
										test="${fn:containsIgnoreCase(report.description, 'Merchant Services Portal')}">
										<a id="myLink3"
											class="col-md-3 boxDocumentItem default-bk-color" href="${report.report_link}"> <br>
											<h4 class="recentTitle">${report.description}</h4>
										</a>
									</c:if>
								</c:forEach>
								<c:forEach var="report" items="${reportList}" varStatus="status">
									<c:if
										test="${fn:containsIgnoreCase(report.description, 'ISBR Portal')}">
										<a id="myLink4"
											class="col-md-3 boxDocumentItem default-bk-color" href="${report.report_link}"> <br>
											<h4 class="recentTitle">${report.description}</h4>
										</a>
									</c:if>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</c:if>
				</div>
			</div>
		</div>

	</div>
</body>
</html>
