<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="com.nic.controller.IndexController"%>
<%@ page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ADV Dashboard</title>
<script type="text/javascript" src="js/modules/highcharts.js"></script>
<script type="text/javascript" src="js/modules/export-data.js"></script>
<script type="text/javascript" src="js/modules/accessibility.js"></script>
<script type="text/javascript" src="js/modules/exporting.js"></script>
<link rel="stylesheet" href="css/index.css">



<script type="text/javascript" src="js/datepicker/jquery.min.js"></script>
<script type="text/javascript" src="js/datepicker/moment.min.js"></script>
<script type="text/javascript"
	src="js/datepicker/daterangepicker.min.js"></script>
<link rel="stylesheet" href="css/daterangepicker.css">




<style>
@media screen and (max-width: 768px) {
	.columnleftTotalData, .columnleft15Data, .columnleftPeriodic,
		.columnright, .columnrightPeriodic, .columnleftReriodic,
		.columnleftmenu, .columnrightmenu, .columnleft1, .columnright1 {
		display: inline-block; /* Or any other desired value */
		width: 100%; /* Or any other desired value */
	}
	.telnetcolumnleftmenu, .telnetcolumnrightmenu, .telnetcolumn2ndrightmenu
		{
		width: 100%;
	}
}
</style>
<script>
  var start = moment().startOf('month');
  var end = moment();

  function cb(start, end) {
      $('#reportrange span').html(start.format('DD/MM/YYYY') + ' - ' + end.format('DD/MM/YYYY'));
      
  }

  $(document).ready(function() {
	 	  $("#kt_daterangepicker_4").daterangepicker({
	 
	 		// startDate: moment(),
	 		 startDate: start,
	    endDate: end,
	    minDate: moment("2023-04-01"), 
	    ranges: {
	      "Today": [moment(), moment()],
	      "Yesterday": [moment().subtract(1, "days"), moment().subtract(1, "days")],
	      "Last 7 Days": [moment().subtract(6, "days"), moment()],
	      "Last 15 Days": [moment().subtract(14, "days"), moment()],
	      'This Month': [moment().startOf('month'), moment()],
	      'Last 30 Days': [moment().subtract(29, 'days'), moment()],
	      "Last Month": [moment().subtract(1, "month").startOf("month"), moment().subtract(1, "month").endOf("month")],
	      "Last 3 Months": [moment().subtract(3, "months").startOf("month"), moment().subtract(1, "month").endOf("month")],
	      "Last 6 Months": [moment().subtract(6, "months").startOf("month"), moment().subtract(1, "month").endOf("month")]
	    }, locale: {
            format: 'DD/MM/YYYY'
        },
        isInvalidDate: function(date) {
            // Disable dates before 3rd May 2023 (return true for invalid dates)
        	 return date.isBefore(moment("2023-04-01"), 'day') || date.isAfter(moment(), 'day');
          }

	  }, cb);

	  cb(start, end);
	});

</script>

<script>
document.addEventListener('DOMContentLoaded', function() {
	  const toggleSwitch = document.getElementById('toggle-switch');
	  const div1 = document.getElementById('div1');
	  const div2 = document.getElementById('div2');

	  // Show div1 by default
	  div1.style.display = 'block';
	  div2.style.display = 'none';

	  toggleSwitch.addEventListener('change', function() {
	    if (this.checked) {
	      div1.style.display = 'none';
	      div2.style.display = 'block';
	    } else {
	      div1.style.display = 'block';
	      div2.style.display = 'none';
	    }
	  });
	});
</script>
<script>
  var dataUpdated = false;

  function updateData() {
    var dt = new Date();
    var minutes = dt.getMinutes();

    if (!dataUpdated && (minutes == 1 || minutes == 6 || minutes == 11 || minutes == 16 ||minutes == 21 || minutes == 26 ||minutes == 31|| minutes == 36 || minutes == 41 ||minutes == 46|| minutes == 51 ||minutes == 56)) {
      setTimeout(function() {
        location.reload();
      }, 59000);
      dataUpdated = true;
    }
  }

  updateData();
  setInterval(updateData, 0);
</script>
<!-- 
<script>
 function updateData() {
		var dt = new Date();
		var minutes = dt.getMinutes();
		if (minutes == 2 || minutes == 17 || minutes == 32 || minutes == 47) {
	    	setTimeout(function() {
	    		location.reload();
	    	},30000);
	    	}	
	    }
		updateData();

	    setInterval(updateData,50000);
		
</script> -->

<script>
  window.addEventListener("load", function() {
    var table = document.getElementById("myTable");
    var numColumns = table.rows[0].cells.length;
    var cells = table.querySelectorAll("td[colspan='auto']");
    for (var i = 0; i < cells.length; i++) {
      cells[i].setAttribute("colspan", numColumns);
    }
  });
</script>


<!-- <script type="text/javascript"
	src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></scrip -->
<!-- <script type="text/javascript"
	src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script> -->
<!-- <script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script> -->
<!-- <link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" /> -->



</head>
<body>
	<div class="desktop-view">

		<div class="columncenter ">
			<h4>
				Aadhaar Data Vault Dashboard </br> <label style="color: #034e94;">(Updated
					${RequestCurrentDate}, ${appDataOutTime}) </label>
			</h4>
		</div>



		<!--********* START CSV DATA SHOW TRUE FALSE VALUE IP STATUS **************-->


		<jsp:include page="serverStatus.jsp" />
		<br>
		<!--********* END CSV DATA SHOW TRUE FALSE VALUE IP STATUS **************-->

		<div style="border: 1px solid black;">
			<div class="switch-container">
				<span style="font-weight: 700;">Enable for Tabular Format
					&nbsp;&nbsp; </span> <label class="switch"> <input type="checkbox"
					id="toggle-switch"> <span class="slider"></span>
				</label>
				<!-- <div id="div1" class="content">Content 1</div> -->
			</div>

			<div class="row">
				<div class="columnleftTotalData" id="div1">
					<figure class="highcharts-figure">
						<div id="container1"></div>
						<p class="highcharts-description"></p>
					</figure>
				</div>

				<div class="columnleftTotalData" id="div2">
					<div class="columncenter">

						<h4 style="font-size: 12px;">Details of request, Response,
							User Error and ADV Error</h4>

					</div>
					<table id="myTable" style="margin-top: 15px;">
						<tr>
							<th>Action</th>
							<th>Request</th>
							<th>Response</th>
							<th>User Error</th>
							<th>ADV Error</th>
							<th>Total</th>

						</tr>

						<tr class="hovertr">
							<td class="labelAline">Token 1 (.6)</td>
							<td class="tokenizationcolor currencyinr">${tokenWiseReqestData.get(0).token1Req}</td>
							<td class="tokenizationcolor currencyinr">${tokenWiseResponseData.get(0).token1Resp}</td>
							<td class="errorcolor currencyinr">${tokenWiseUserErrorData.get(0).token1UserErr}</td>
							<td class="errorcolor currencyinr">${tokenWiseErrorData.get(0).token1Err}</td>
							<c:set var="sum1"
								value="${tokenWiseReqestData.get(0).token1Req + 
                            tokenWiseResponseData.get(0).token1Resp +
                           tokenWiseUserErrorData.get(0).token1UserErr +
                         tokenWiseErrorData.get(0).token1Err}" />
							<td class="currencyinr">${sum1}</td>
						</tr>
						<tr class="hovertr">
							<td class="labelAline">Token 2 (.7)</td>
							<td class="tokenizationcolor currencyinr">${tokenWiseReqestData.get(0).token2Req}</td>
							<td class="tokenizationcolor currencyinr">${tokenWiseResponseData.get(0).token2Resp}</td>
							<td class="errorcolor currencyinr">${tokenWiseUserErrorData.get(0).token2UserErr}</td>
							<td class="errorcolor currencyinr">${tokenWiseErrorData.get(0).token2Err}</td>
							<c:set var="sum2"
								value="${tokenWiseReqestData.get(0).token2Req + 
                            tokenWiseResponseData.get(0).token2Resp +
                           tokenWiseUserErrorData.get(0).token2UserErr +
                         tokenWiseErrorData.get(0).token2Err}" />
							<td class="currencyinr">${sum2}</td>
						</tr>
						<tr class="hovertr">
							<td class="labelAline">Token 3 (.8)</td>
							<td class="tokenizationcolor currencyinr">${tokenWiseReqestData.get(0).token3Req}</td>
							<td class="tokenizationcolor currencyinr">${tokenWiseResponseData.get(0).token3Resp}</td>
							<td class="errorcolor currencyinr">${tokenWiseUserErrorData.get(0).token3UserErr}</td>
							<td class="errorcolor currencyinr">${tokenWiseErrorData.get(0).token3Err}</td>
							<c:set var="sum3"
								value="${tokenWiseReqestData.get(0).token3Req + 
                            tokenWiseResponseData.get(0).token3Resp +
                           tokenWiseUserErrorData.get(0).token3UserErr +
                         tokenWiseErrorData.get(0).token3Err}" />
							<td class="currencyinr">${sum3}</td>
						</tr>
						<tr class="hovertr">
							<td class="labelAline">Token 4 (.9)</td>
							<td class="tokenizationcolor currencyinr">${tokenWiseReqestData.get(0).token4Req}</td>
							<td class="tokenizationcolor currencyinr">${tokenWiseResponseData.get(0).token4Resp}</td>
							<td class="errorcolor currencyinr">${tokenWiseUserErrorData.get(0).token4UserErr}</td>
							<td class="errorcolor currencyinr">${tokenWiseErrorData.get(0).token4Err}</td>
							<c:set var="sum4"
								value="${tokenWiseReqestData.get(0).token4Req + 
                            tokenWiseResponseData.get(0).token4Resp +
                           tokenWiseUserErrorData.get(0).token4UserErr +
                         tokenWiseErrorData.get(0).token4Err}" />
							<td class="currencyinr">${sum4}</td>
						</tr>
						<tr class="hovertr">
							<td class="labelAline">Token 5 (.34)</td>
							<td class="tokenizationcolor currencyinr">${tokenWiseReqestData.get(0).token5Req}</td>
							<td class="tokenizationcolor currencyinr">${tokenWiseResponseData.get(0).token5Resp}</td>
							<td class="errorcolor currencyinr">${tokenWiseUserErrorData.get(0).token5UserErr}</td>
							<td class="errorcolor currencyinr">${tokenWiseErrorData.get(0).token5Err}</td>
							<c:set var="sum5"
								value="${tokenWiseReqestData.get(0).token5Req + 
                            tokenWiseResponseData.get(0).token5Resp +
                           tokenWiseUserErrorData.get(0).token5UserErr +
                         tokenWiseErrorData.get(0).token5Err}" />
							<td class="currencyinr">${sum5}</td>
						</tr>
						<tr class="hovertr">
							<td class="labelAline">Token 6 (.35)</td>
							<td class="tokenizationcolor currencyinr">${tokenWiseReqestData.get(0).token6Req}</td>
							<td class="tokenizationcolor currencyinr">${tokenWiseResponseData.get(0).token6Resp}</td>
							<td class="errorcolor currencyinr">${tokenWiseUserErrorData.get(0).token6UserErr}</td>
							<td class="errorcolor currencyinr">${tokenWiseErrorData.get(0).token6Err}</td>
							<c:set var="sum6"
								value="${tokenWiseReqestData.get(0).token6Req + 
                            tokenWiseResponseData.get(0).token6Resp +
                           tokenWiseUserErrorData.get(0).token6UserErr +
                         tokenWiseErrorData.get(0).token6Err}" />
							<td class="currencyinr">${sum6}</td>
						</tr>
						<tr class="hovertr">
							<td class="labelAline">Token 7 (.36)</td>
							<td class="tokenizationcolor currencyinr">${tokenWiseReqestData.get(0).token7Req}</td>
							<td class="tokenizationcolor currencyinr">${tokenWiseResponseData.get(0).token7Resp}</td>
							<td class="errorcolor currencyinr">${tokenWiseUserErrorData.get(0).token7UserErr}</td>
							<td class="errorcolor currencyinr">${tokenWiseErrorData.get(0).token7Err}</td>
							<c:set var="sum7"
								value="${tokenWiseReqestData.get(0).token7Req + 
                            tokenWiseResponseData.get(0).token7Resp +
                           tokenWiseUserErrorData.get(0).token7UserErr +
                         tokenWiseErrorData.get(0).token7Err}" />
							<td class="currencyinr">${sum7}</td>
						</tr>
						<tr class="hovertr">
							<td class="labelAline">Token 8 (.37)</td>
							<td class="tokenizationcolor currencyinr">${tokenWiseReqestData.get(0).token8Req}</td>
							<td class="tokenizationcolor currencyinr">${tokenWiseResponseData.get(0).token8Resp}</td>
							<td class="errorcolor currencyinr">${tokenWiseUserErrorData.get(0).token8UserErr}</td>
							<td class="errorcolor currencyinr">${tokenWiseErrorData.get(0).token8Err}</td>
							<c:set var="sum8"
								value="${tokenWiseReqestData.get(0).token8Req + 
                            tokenWiseResponseData.get(0).token8Resp +
                           tokenWiseUserErrorData.get(0).token8UserErr +
                         tokenWiseErrorData.get(0).token8Err}" />
							<td class="currencyinr">${sum8}</td>
						</tr>
						<tr class="hovertr">
							<c:set var="ReqSum"
								value="${tokenWiseReqestData.get(0).token1Req + 
                            tokenWiseReqestData.get(0).token2Req +
                            tokenWiseReqestData.get(0).token3Req +
                            tokenWiseReqestData.get(0).token4Req +
                            tokenWiseReqestData.get(0).token5Req +
                            tokenWiseReqestData.get(0).token6Req +
                            tokenWiseReqestData.get(0).token7Req +
                            tokenWiseReqestData.get(0).token8Req}" />
							<c:set var="RespSum"
								value="${tokenWiseResponseData.get(0).token1Resp + 
                            tokenWiseResponseData.get(0).token2Resp +
                            tokenWiseResponseData.get(0).token3Resp +
                            tokenWiseResponseData.get(0).token4Resp +
                            tokenWiseResponseData.get(0).token5Resp +
                            tokenWiseResponseData.get(0).token6Resp +
                            tokenWiseResponseData.get(0).token7Resp +
                            tokenWiseResponseData.get(0).token8Resp}" />
							<c:set var="UserErrorSum"
								value="${tokenWiseUserErrorData.get(0).token1UserErr + 
                            tokenWiseUserErrorData.get(0).token2UserErr +
                            tokenWiseUserErrorData.get(0).token3UserErr +
                            tokenWiseUserErrorData.get(0).token4UserErr +
                            tokenWiseUserErrorData.get(0).token5UserErr +
                            tokenWiseUserErrorData.get(0).token6UserErr +
                            tokenWiseUserErrorData.get(0).token7UserErr +
                            tokenWiseUserErrorData.get(0).token8UserErr}" />
							<c:set var="AdvErrorSum"
								value="${tokenWiseErrorData.get(0).token1Err + 
                            tokenWiseErrorData.get(0).token2Err +
                            tokenWiseErrorData.get(0).token3Err +
                            tokenWiseErrorData.get(0).token4Err +
                            tokenWiseErrorData.get(0).token5Err +
                            tokenWiseErrorData.get(0).token6Err +
                            tokenWiseErrorData.get(0).token7Err +
                            tokenWiseErrorData.get(0).token8Err}" />


							<th>Total</th>
							<td class="blueclolorwithweit currencyinr">${ReqSum}</td>
							<td class="blueclolorwithweit currencyinr">${RespSum}</td>
							<td class="blueclolorwithweit currencyinr">${UserErrorSum}</td>
							<td class="blueclolorwithweit currencyinr">${AdvErrorSum}</td>
							<td class="blueclolorwithweit"></td>
						</tr>

					</table>



				</div>
				<!-- <div class="column">
				<figure class="highcharts-figure">
					<div id="container3"></div>
					<p class="highcharts-description"></p>
				</figure>
			</div> -->

				<div class="columnleft15Data">
					<figure class="highcharts-figure">
						<div id="container6"></div>
						<p class="highcharts-description"></p>
					</figure>
				</div>
				<div class="columnright">
					<figure class="highcharts-figure">
						<div id="container"></div>
						<p class="highcharts-description"></p>
					</figure>
				</div>
			</div>
		</div>
		<br>
		<div class="row" style="max-width: 110%">
			<div class="columnleft1">
				<table id="myTable">
					<tr>
						<th rowspan="2">S.No.</th>
						<th rowspan="2">Application Name</th>
						<th colspan="3">Tokenization</th>
						<th colspan="2">Detokenization</th>
						<th colspan="2">JWT</th>
						<th rowspan="2">Chk.<br>UID</th>
						<th colspan="2">Errors</th>
                                                <th rowspan="2">Resp.<br>Pending</th>
						<th rowspan="2">Total Records<br>(Till Date)
						</th>
					</tr>
					<tr>


						<th>Req.</th>
						<th>New Tokens</th>
						<th>Duplicate</th>
						<th>Req.</th>
						<th>Resp.</th>
						<th>Req.</th>
						<th>Resp.</th>
						<th>(User End)</th>
						<th>(ADV)</th>

					</tr>
					<c:forEach var="aapdata" items="${appWiseData}" varStatus="loop">
						<tr class="hovertr">
							<td class="labelAline">${loop.index + 1}</td>
					<!--  		<td class="labelAline1" style="white-space: nowrap;">${newAppName[loop.index]}<br><span class="fontwet">(${aapdata.applicationCode})</span></td>
							-->
   
        <td class="labelAline1" style="white-space: nowrap;">
            <c:choose>
                <c:when test="${fn:contains(newAppName[loop.index], 'Ministry')}">
                    ${fn:replace(newAppName[loop.index], 'Ministry', 'Min.')}
                </c:when>
                <c:otherwise>
                    ${newAppName[loop.index]}
                </c:otherwise>
            </c:choose><br>
            <span class="fontwet">(${aapdata.applicationCode})</span>
        </td>


							
							<td class="tokenizationcolor currencyinr">${aapdata.tokenRequest}</td>
							<td class="tokenizationcolor currencyinr">${aapdata.tokenTokensIssued}</td>
							<td class="tokenizationcolor currencyinr">${aapdata.tokenAlreadyExi}</td>
							<td class="detokenizationcolor currencyinr">${aapdata.detokenRequest}</td>
							<td class="detokenizationcolor currencyinr">${aapdata.detokenResponse}</td>
							<td class="jwtcolor currencyinr">${aapdata.jwtRequest}</td>
							<td class="jwtcolor currencyinr">${aapdata.jwtResponse}</td>
							<td class="currencyinr">${aapdata.checkUID}</td>
							<td class="errorcolor currencyinr">${aapdata.errorByUser}</td>
							<td class="errorcolor currencyinr">${aapdata.error}</td>
                                                      <c:set var="checkStatus" value="${(aapdata.tokenRequest- aapdata.tokenTokensIssued - aapdata.tokenAlreadyExi) + (aapdata.detokenRequest - aapdata.detokenResponse) + (aapdata.jwtRequest - aapdata.jwtResponse) - aapdata.errorByUser - aapdata.error}" />
							<td class="verifydatacolor currencyinr">${checkStatus}</td>
							<td class="fontwet currencyinr">${aapdata.totalRecords}</td>

						</tr>
					</c:forEach>

					<tr>

						<th colspan="2">Total</th>
						<c:forEach var="aapdata" items="${appWiseData}">
							<c:set var="totalRequest"
								value="${totalRequest + aapdata.tokenRequest}" />
							<c:set var="totalNewToken"
								value="${totalNewToken + aapdata.tokenTokensIssued}" />
							<c:set var="totalAlreadyEx"
								value="${totalAlreadyEx + aapdata.tokenAlreadyExi}" />
							<c:set var="totalRetokenRequest"
								value="${totalRetokenRequest + aapdata.detokenRequest}" />
							<c:set var="totalDetokenResponse"
								value="${totalDetokenResponse + aapdata.detokenResponse}" />
							
								<c:set var="totalJwtRequest"
								value="${totalJwtRequest + aapdata.jwtRequest}" />
							<c:set var="totalJwtResponse"
								value="${totalJwtResponse + aapdata.jwtResponse}" />
							<c:set var="totalCheckUID"
								value="${totalCheckUID + aapdata.checkUID}" />
							<c:set var="totalErrorByUser"
								value="${totalErrorByUser + aapdata.errorByUser}" />
							<c:set var="totalError" value="${totalError + aapdata.error}" />
							<c:set var="totalRecords"
								value="${totalRecords + aapdata.totalRecords}" />
                                                      <c:set var="totalcheckStatus"
								value="${((totalRequest + aapdata.tokenRequest)-(totalNewToken + aapdata.tokenTokensIssued)-(totalAlreadyEx + aapdata.tokenAlreadyExi))+((totalJwtRequest + aapdata.jwtRequest)-(totalJwtResponse + aapdata.jwtResponse))+((totalRetokenRequest + aapdata.detokenRequest)-(totalDetokenResponse + aapdata.detokenResponse))-(totalErrorByUser + aapdata.errorByUser)-(totalError + aapdata.error)}" />
						</c:forEach>						
                               <td class="blueclolorwithweit currencyinr">${totalRequest}</td>

						<c:choose>
							<c:when
								test="${((TotalTXN-totalNewToken) <= 100) && ((totalNewToken-TotalTXN ) >= 100)}">
								<td class="blueclolorwithweit currencyinr">${totalNewToken}</td>
							</c:when>
							<c:when
								test="${((TotalTXN-totalNewToken ) >= 100) && ((totalNewToken-TotalTXN) <= 100)}">
								<td class="blueclolorwithweit currencyinr" style="color: red;">${totalNewToken}</td>
							</c:when>
							<c:otherwise>
							<td class="blueclolorwithweit currencyinr">${totalNewToken}</td></c:otherwise>
						</c:choose>
						<%-- <td class="blueclolorwithweit">${IndexController.formatIndianCommaSeparated(totalNewToken) }</td> --%>
						<td class="blueclolorwithweit currencyinr">${totalAlreadyEx}</td>
						<td class="blueclolorwithweit currencyinr">${totalRetokenRequest}</td>
						<td class="blueclolorwithweit currencyinr">${totalDetokenResponse}</td>
						<td class="blueclolorwithweit currencyinr">${totalJwtRequest}</td>
						<td class="blueclolorwithweit currencyinr">${totalJwtResponse}</td>
						<td class="blueclolorwithweit currencyinr">${totalCheckUID}</td>
						<td class="blueclolorwithweit currencyinr">${totalErrorByUser}</td>
						<td class="blueclolorwithweit currencyinr">${totalError}</td>
                        <td class="blueclolorwithweit currencyinr">${totalcheckStatus}</td>
						<td class="blueclolorwithweit currencyinr">${totalRecords}</td>
					</tr>
				</table>
			</div>


			<div class="columnright1">
				<figure class="highcharts-figure">
					<div id="container2"></div>

				</figure>
			</div>
		</div>
		<br>
		<div class="columncenter periodicHeading">

			<span>Periodic Reports</span>
		</div>
		<form action="" method="post"
			style="margin-left: 15px; text-align: center;">
			<label>Select Date Range</label> <input
				class="form-control form-control-solid" placeholder="Pick date rage"
				id="kt_daterangepicker_4" name="datepicker"
				value="${datepickerSession }" />
			<button type="submit">Submit</button>
		</form>
		<!--		<div class="columnleftReriodic periodicborder">

			<figure class="highcharts-figure">
				<div id="container4"></div>
				<p class="highcharts-description"></p>
			</figure>
		</div>
		<div class="columnrightPeriodic periodicborder">

			<figure class="highcharts-figure">
				<div id="container5"></div>
				<p class="highcharts-description"></p>
			</figure>
		</div>
		<div>
			<div class="columnleftReriodic periodicborder">

				<figure class="highcharts-figure">
					<div id="container7"></div>
					<p class="highcharts-description"></p>
				</figure>
			</div>
			<div class="columnrightPeriodic periodicborder">

				<figure class="highcharts-figure">
					<div id="container8"></div>
					<p class="highcharts-description"></p>
				</figure>
			</div>
		</div>
 	</div> -->
		<c:choose>
			<c:when
				test="${(dayValue eq '01' || dayValue eq '02' || dayValue eq '03' || dayValue eq '04' || dayValue eq '05' || dayValue eq '06' || dayValue eq '07' || dayValue eq '08') && datepicker == null}">
				<div class="row">
					<div class="col-3 columnleftReriodic1 periodicborder">
						<figure class="highcharts-figure1">
							<div id="container4"></div>
							<p class="highcharts-description"></p>
						</figure>
					</div>
					<div class="col-3 columnleftReriodic1 periodicborder">

						<figure class="highcharts-figure1">
							<div id="container5"></div>
							<p class="highcharts-description"></p>
						</figure>
					</div>

					<div class="col-3 columnleftReriodic1 periodicborder">
						<figure class="highcharts-figure1">
							<div id="container7"></div>
							<p class="highcharts-description"></p>
						</figure>
					</div>
					<div class="col-3 columnleftReriodic1 periodicborder">

						<figure class="highcharts-figure1">
							<div id="container8"></div>
							<p class="highcharts-description"></p>
						</figure>
					</div>
				</div>
			</c:when>
			<c:otherwise>
				<div class="columnleftReriodic periodicborder">

					<figure class="highcharts-figure">
						<div id="container4"></div>
						<p class="highcharts-description"></p>
					</figure>
				</div>
				<div class="columnrightPeriodic periodicborder">

					<figure class="highcharts-figure">
						<div id="container5"></div>
						<p class="highcharts-description"></p>
					</figure>
				</div>
				<div>
					<div class="columnleftReriodic periodicborder">
						<figure class="highcharts-figure">
							<div id="container7"></div>
							<p class="highcharts-description"></p>
						</figure>
					</div>
					<div class="columnrightPeriodic periodicborder">

						<figure class="highcharts-figure">
							<div id="container8"></div>
							<p class="highcharts-description"></p>
						</figure>
					</div>
				</div>
			</c:otherwise>
		</c:choose>
</body>
<script>
Highcharts.chart('container1', {
	  chart: {
	    zoomType: 'xy'
	  },
	  title: {
	    text: 'Tokenization Server Status (Request: <b style="color:#034e94;">${totalReq}</b> )',
	    align: 'center',
	    	 style: {
	 	        color:'black'
	 	      }
	  },
	  
	  xAxis: [{
	    categories: ['<label>T1</label><br><label style="color:red;">${getToken1Err}</label>',
			'<label>T2</label><br><label style="color:red;">${getToken2Err}</label>',
			'<label>T3</label><br><label style="color:red;">${getToken3Err}</label>',
			'<label>T4</label><br><label style="color:red;">${getToken4Err}</label>',
			'<label>T5</label><br><label style="color:red;">${getToken5Err}</label>',
			'<label>T6</label><br><label style="color:red;">${getToken6Err}</label>',
			'<label>T7</label><br><label style="color:red;">${getToken7Err}</label>',
			'<label>T8</label><br><label style="color:red;">${getToken8Err}</label>' ],
	   
	  }],
	  yAxis:[{ // Primary yAxis
	    
	    title: {
	      text: 'Request, Response and ADV Error',
	      style: {
	    	  color: '#034e94'
	      }
	    }
	  },],
	  legend: {
	    align: 'left',
	    x: 100,
	    verticalAlign: 'bottom',
	    y: 22,
	    floating: true,
	   color:'red'
	  },
	  series: [{
		    name: 'Requests',
		    type: 'column',
		    color: '#034e94',
		   
		    data: [${tokenWiseReqestData.get(0).token1Req},${tokenWiseReqestData.get(0).token2Req},${tokenWiseReqestData.get(0).token3Req},${tokenWiseReqestData.get(0).token4Req},${tokenWiseReqestData.get(0).token5Req},${tokenWiseReqestData.get(0).token6Req},${tokenWiseReqestData.get(0).token7Req},${tokenWiseReqestData.get(0).token8Req}],
		   	  },{
	    name: 'Response',
	    type: 'column',
	    color: '#ba7330',
	   
	    data: [${tokenWiseResponseData.get(0).token1Resp},${tokenWiseResponseData.get(0).token2Resp},${tokenWiseResponseData.get(0).token3Resp},${tokenWiseResponseData.get(0).token4Resp},${tokenWiseResponseData.get(0).token5Resp},${tokenWiseResponseData.get(0).token6Resp},${tokenWiseResponseData.get(0).token7Resp},${tokenWiseResponseData.get(0).token8Resp}],
	   	  }, {
	    name: 'Errors',
	    type: 'column',
	    color: 'red',
	 //   yAxis: 1,
	    data: [ ${tokenWiseErrorData.get(0).token1Err}, ${tokenWiseErrorData.get(0).token2Err}, ${tokenWiseErrorData.get(0).token3Err}, ${tokenWiseErrorData.get(0).token4Err},
			${tokenWiseErrorData.get(0).token5Err}, ${tokenWiseErrorData.get(0).token6Err}, ${tokenWiseErrorData.get(0).token7Err}, ${tokenWiseErrorData.get(0).token8Err}]
	  }]
	});
</script>
<script>
Highcharts.chart('container6', {
	  chart: {
	    zoomType: 'xy'
	  },
	  title: {
	    text: 'Tkn Srv 5 Min (Request: <b style="color:#034e94;">${totalReq15Min}</b>, Error: <b style="color:red;">${totalADVError15Min}</b>)',
	    align: 'center',
	    	 style: {
	 	        color:'black'
	 	      }
	  },
	  
	  xAxis: [{
	    categories: ['<label>T1</label>',
			'<label>T2</label>',
			'<label>T3</label>',
			'<label>T4</label>',
			'<label>T5</label>',
			'<label>T6</label>',
			'<label>T7</label>',
			'<label>T8</label>' ],
	   
	  }],
	  yAxis:[{ // Primary yAxis
	    
	    title: {
	      text: 'Request And ADV Error',
	      style: {
	    	  color: '#034e94'
	      }
	    }
	  },],
	  legend: {
	    align: 'left',
	    x: 100,
	    verticalAlign: 'bottom',
	    y: 22,
	    floating: true,
	   color:'red'
	  },
	  series: [{
		    name: 'Requests',
		    type: 'column',
		    color: '#034e94',
		   
		    data: [${tokenWiseReqestData15Min.get(0).token1Req},${tokenWiseReqestData15Min.get(0).token2Req},${tokenWiseReqestData15Min.get(0).token3Req},${tokenWiseReqestData15Min.get(0).token4Req},${tokenWiseReqestData15Min.get(0).token5Req},${tokenWiseReqestData15Min.get(0).token6Req},${tokenWiseReqestData15Min.get(0).token7Req},${tokenWiseReqestData15Min.get(0).token8Req}],
		   	  },{
	    name: 'ADV Error',
	    type: 'column',
	    color: 'red',
	   
	    data: [ ${tokenWiseErrorData15Min.get(0).token1Err}, ${tokenWiseErrorData15Min.get(0).token2Err}, ${tokenWiseErrorData15Min.get(0).token3Err}, ${tokenWiseErrorData15Min.get(0).token4Err},
			${tokenWiseErrorData15Min.get(0).token5Err}, ${tokenWiseErrorData15Min.get(0).token6Err}, ${tokenWiseErrorData15Min.get(0).token7Err}, ${tokenWiseErrorData15Min.get(0).token8Err}]
	   	  }]
	});
</script>


<script>
Highcharts.chart('container3', {
	  chart: {
	    zoomType: 'xy'
	  },
	  title: {
	    text: 'Avg. (5 min) Transaction Time (ms)',
	    align: 'center',
	    	 style: {
	 	        color:'black'
	 	      }
	  },
	  
	  xAxis: [{
	    categories: ['<label style="color:#034e94;">Token-1</label><br><label style="color:red;">${tokenWiseErrorData.get(0).token1Err}</label>',
			'<label style="color:#034e94;">Token-2</label><br><label style="color:red;">${tokenWiseErrorData.get(0).token3Err}</label>',
			'<label style="color:#034e94;">Token-3</label><br><label style="color:red;">${tokenWiseErrorData.get(0).token3Err}</label>',
			'<label style="color:#034e94;">Token-4</label><br><label style="color:red;">${tokenWiseErrorData.get(0).token4Err}</label>',
			'<label style="color:#034e94;">Token-5</label><br><label style="color:red;">${tokenWiseErrorData.get(0).token5Err}</label>',
			'<label style="color:#034e94;">Token-6</label><br><label style="color:red;">${tokenWiseErrorData.get(0).token6Err}</label>',
			'<label style="color:#034e94;">Token-7</label><br><label style="color:red;">${tokenWiseErrorData.get(0).token7Err}</label>',
			'<label style="color:#034e94;">Token-8</label><br><label style="color:red;">${tokenWiseErrorData.get(0).token8Err}</label>' ],
	    crosshair: true
	  }],
	  yAxis: [{ // Primary yAxis
	    
	    title: {
	      text: 'Transactions (Request)',
	      style: {
	    	  color: 'red'
	      }
	    }
	  },],
	  tooltip: {
	    shared: true
	  },
	  legend: {
	    align: 'left',
	    x: 100,
	    verticalAlign: 'bottom',
	    y: 22,
	    floating: true,
	   color:'red'
	  },
	  series: [{
	    name: 'Error',
	    type: 'column',
	    color: 'red',
	    data: [ ${tokenWiseErrorData.get(0).token1Err}, ${tokenWiseErrorData.get(0).token2Err}, ${tokenWiseErrorData.get(0).token3Err}, ${tokenWiseErrorData.get(0).token4Err},
			${tokenWiseErrorData.get(0).token5Err}, ${tokenWiseErrorData.get(0).token6Err}, ${tokenWiseErrorData.get(0).token7Err}, ${tokenWiseErrorData.get(0).token8Err}]
	  }]
	});
</script>


<script>
 
Highcharts.chart('container', {
	  chart: {
	    zoomType: 'xy'
	  },
	  title: {
	    text: 'New Tokenizations Today: <b style="color:#034e94;">${IndexController.formatIndianCommaSeparated(TotalTXN) }</b>',
	    style: {
	        color:'black',
	        size:'10px'
	      },
	    align: 'center'
		},
	 
	  xAxis: [{	
		 // categories: categories,
	// categories: ['${getTimeInterval[0]}'],
	// categories: ['00:00','00:15','00:30','00:45','01:00','01:15','01:30','01:45','02:00','02:15','02:30','02:45','03:00','03:15','03:30','03:45','04:00','04:15','04:30','04:45','05:00','05:15','05:30','05:45','06:00','06:15','06:30','06:45','07:00','07:15','07:30','07:45','08:00','08:15','08:30','08:45','09:00','09:15','09:30','09:45','10:00','10:15','10:30','10:45','11:00','11:15','11:30','11:45','12:00','12:15','12:30','12:45','13:00','13:15','13:30','13:45','14:00','14:15','14:30','14:45','15:00','15:15','15:30','15:45','16:00','16:15','16:30','16:45','17:00','17:15','17:30','17:45','18:00','18:15','18:30','18:45','19:00','19:15','19:30','19:45','20:00','20:15','20:30','20:45','21:00','21:15','21:30','21:45','22:00','22:15','22:30','22:45','23:00','23:15','23:30','23:45'],
		categories: ['00:00','00:05','00:10','00:15','00:20','00:25','00:30','00:35','00:40','00:45','00:50','00:55','01:00','01:05','01:10','01:15','01:20','01:25','01:30','01:35','01:40','01:45','01:50','01:55','02:00','02:05','02:10','02:15','02:20','02:25','02:30','02:35','02:40','02:45','02:50','02:55','03:00','03:05','03:10','03:15','03:20','03:25','03:30','03:35','03:40','03:45','03:50','03:55','04:00','04:05','04:10','04:15','04:20','04:25','04:30','04:35','04:40','04:45','04:50','04:55','05:00','05:05','05:10','05:15','05:20','05:25','05:30','05:35','05:40','05:45','05:50','05:55','06:00','06:05','06:10','06:15','06:20','06:25','06:30','06:35','06:40','06:45','06:50','06:55','07:00','07:05','07:10','07:15','07:20','07:25','07:30','07:35','07:40','07:45','07:50','07:55','08:00','08:05','08:10','08:15','08:20','08:25','08:30','08:35','08:40','08:45','08:50','08:55','09:00','09:05','09:10','09:15','09:20','09:25','09:30','09:35','09:40','09:45','09:50','09:55','10:00','10:05','10:10','10:15','10:20','10:25','10:30','10:35','10:40','10:45','10:50','10:55','11:00','11:05','11:10','11:15','11:20','11:25','11:30','11:35','11:40','11:45','11:50','11:55','12:00','12:05','12:10','12:15','12:20','12:25','12:30','12:35','12:40','12:45','12:50','12:55','13:00','13:05','13:10','13:15','13:20','13:25','13:30','13:35','13:40','13:45','13:50','13:55','14:00','14:05','14:10','14:15','14:20','14:25','14:30','14:35','14:40','14:45','14:50','14:55','15:00','15:05','15:10','15:15','15:20','15:25','15:30','15:35','15:40','15:45','15:50','15:55','16:00','16:05','16:10','16:15','16:20','16:25','16:30','16:35','16:40','16:45','16:50','16:55','17:00','17:05','17:10','17:15','17:20','17:25','17:30','17:35','17:40','17:45','17:50','17:55','18:00','18:05','18:10','18:15','18:20','18:25','18:30','18:35','18:40','18:45','18:50','18:55','19:00','19:05','19:10','19:15','19:20','19:25','19:30','19:35','19:40','19:45','19:50','19:55','20:00','20:05','20:10','20:15','20:20','20:25','20:30','20:35','20:40','20:45','20:50','20:55','21:00','21:05','21:10','21:15','21:20','21:25','21:30','21:35','21:40','21:45','21:50','21:55','22:00','22:05','22:10','22:15','22:20','22:25','22:30','22:35','22:40','22:45','22:50','22:55','23:00','23:05','23:10','23:15','23:20','23:25','23:30','23:35','23:40','23:45','23:50','23:55'],   
	 crosshair: true
	  }],  
	  yAxis: [{ // Primary yAxis
	    
	    title: {
	      text: 'Interval Based Tokenizations',
	      style: {
	        color:'#034e94'
	      }
	    }
	  }, { // Secondary yAxis
	    title: {
	      text: 'Total Tokenizations Today',
	      style: {
	        color: '#ba7330'
	      }
	    },
	    
	    opposite: true
	  }],
	  tooltip: {
	    shared: true
	  },
	  legend: {
	    align: 'left',
	    x: 100,
	    verticalAlign: 'bottom',
	    y: 22,
	    floating: true,
	    backgroundColor:
	      Highcharts.defaultOptions.legend.backgroundColor || // theme
	      'rgba(255,255,255,0.25)'
	  },
	  series: [{
	    name: '5 min Interval',
	    type: 'column',
	    color: '#034e94',
	    
	    data: ${getTimeIntervalTxn},
	 
	   	  }, {
	    name: 'Total Today',
	    type: 'spline',
	    color: '#ba7330',
	    yAxis: 1,
	    data: ${getTimeIntervalTotalTxnTill}
	  }]
	});

</script>


<script>
Highcharts.chart('container2', {
  chart: {
    zoomType: 'xy'
  },
  title: {
    text: 'Errors',
    align: 'center',
    style: {
      color: 'black'
    }
  },
  xAxis: [{
	  categories: ['<label style="color:#034e94;">${getInvalidaadhaarnumber}</label><br> Invalid Aadhaar',
	      '<label style="color:#034e94;">${getIpaddressisnotwhitelisted}</label><br> IP address is Invalid',
	      '<label style="color:#034e94;">${getInvalidauthkey}</label><br> Invalid Authkey',
	      '<label style="color:#034e94;">${getInvalidjwttoken}</label><br> Invalid JWT',
	      '<label style="color:#034e94;">${getInvalidinputdata}</label><br> Invalid input data',
	      '<label style="color:#034e94;">${getExpiredjwttoken}</label><br> Expired JWT',
	      '<label style="color:#034e94;">${getIncorrectusernameorpassword}</label><br> Invalid Credential',
	      '<label style="color:#034e94;">${getInvalidjwtsignature}</label><br> Invalid JWT Signature',
	      '<label style="color:#034e94;">${getTokennotexistinvault}</label><br> Token not exist in vault',
	      '<label style="color:#034e94;">${getFailedvalidatejwttoken}</label><br> Failed to validate JWT',
	      '<label style="color:#034e94;">${getFailedtoprocessbulktokenreq}</label><br> Bulk tokenization Error',
	      '<label style="color:red;"> ${getAdvError}</label><br>ADV Service Error'],
	  }],
  yAxis: [{ // Primary yAxis
    title: {
      text: '',
      style: {
        color: '#034e94'
      }
    }
  }],
  legend: {
    align: 'left',
    x: 100,
    verticalAlign: 'bottom',
    y: 22,
    floating: true,
    color: 'red'
  },
  series: [{
    name: 'Errors',
    type: 'column',
    data: [
      {
        y: ${tknSrvErrorCategoriesData.invalidaadhaarnumber},
        color: '#034e94'
      },
      {
        y: ${tknSrvErrorCategoriesData.ipaddressisnotwhitelisted},
        color: '#034e94'
      },
      {
        y: ${tknSrvErrorCategoriesData.invalidauthkey},
        color: '#034e94'
      },
      {
        y: ${tknSrvErrorCategoriesData.invalidjwttoken},
        color: '#034e94'
      },
      {
        y: ${tknSrvErrorCategoriesData.invalidinputdata},
        color: '#034e94'
      },
      {
        y: ${tknSrvErrorCategoriesData.expiredjwttoken},
        color: '#034e94'
      },
      {
        y: ${tknSrvErrorCategoriesData.incorrectusernameorpassword},
        color: '#034e94'
      },
      {
          y: ${tknSrvErrorCategoriesData.invalidjwtsignature},
          color: '#034e94'
        },
        {
          y: ${tknSrvErrorCategoriesData.tokennotexistinvault},
          color: '#034e94'
        },
        {
         y: ${tknSrvErrorCategoriesData.failedvalidatejwttoken},
         color: '#034e94'
       },
       {
           y: ${tknSrvErrorCategoriesData.failedtoprocessbulktokenreq},
           color: '#034e94'
         },
      {
        y: ${tknSrvErrorCategoriesData.advError},
        color: 'red'
      }
    ]
  }]
});
</script>



<script>
Highcharts.chart('container4', {
	  chart: {
	    zoomType: 'xy'
	  },
	  title: {
	    text: 'Total Requests: <b style="color:#034e94;">${IndexController.formatIndianCommaSeparated(sumRequnumber)}</b>',
	    align: 'center'
	  },
	  
	  xAxis: [{
		  categories: '${ReqdateList}'.split(',').map(item => item.replace('[', '').replace(']', '')),
	    crosshair: true
	  }],
	  yAxis: [{ // Primary yAxis
	    
	    title: {
	      text: 'Transactions (Request)'
	    }
	  },],
	  tooltip: {
	    shared: true
	  },
	  legend: {
	    align: 'left',
	    x: 100,
	    verticalAlign: 'bottom',
	    y: 22,
	    floating: true,
	   color:'#034e94'
	  },
	  series: [{
	    name: 'Request',
	    type: 'column',
	    color: '#034e94',
            maxPointWidth: 55,
	    data: ${ReqList}
	  }]
	});
</script>

<script>
Highcharts.chart('container5', {
	  chart: {
	    zoomType: 'xy'
	  },
	  title: {
	    text: 'New Tokenizations: <b style="color:#034e94;">${IndexController.formatIndianCommaSeparated(sumnumber)}</b>',
	    align: 'center'
	  },
	  
	  xAxis: [{
		  categories: '${dateList}'.split(',').map(item => item.replace('[', '').replace(']', '')),
	    crosshair: true
	  }],
	  yAxis: [{ // Primary yAxis
	    
	    title: {
	      text: 'Transactions (New Token)'
	    }
	  },],
	  tooltip: {
	    shared: true
	  },
	  legend: {
	    align: 'left',
	    x: 100,
	    verticalAlign: 'bottom',
	    y: 22,
	    floating: true,
	   color:'#034e94'
	  },
	  series: [{
	    name: 'New Token',
	    type: 'column',
	    color: '#ba7330',
            maxPointWidth: 55,
	    data: ${newToknList}
	  }]
	});
</script>

<script>
Highcharts.chart('container7', {
	  chart: {
	    zoomType: 'xy'
	  },
	  title: {
	    text: 'Duplicate Tokenizations: <b style="color:#034e94;">${IndexController.formatIndianCommaSeparated(SumTokenAlreadyExi)}</b>',
	    align: 'center'
	  },
	  
	  xAxis: [{
		  categories: '${getDateList}'.split(',').map(item => item.replace('[', '').replace(']', '')),
	    crosshair: true
	  }],
	  yAxis: [{ // Primary yAxis
	    
	    title: {
	      text: 'Transactions (Duplicate Token)'
	    }
	  },],
	  tooltip: {
	    shared: true
	  },
	  legend: {
	    align: 'left',
	    x: 100,
	    verticalAlign: 'bottom',
	    y: 22,
	    floating: true,
	   color:'#034e94'
	  },
	  series: [{
	    name: 'Duplicate Token',
	    type: 'column',
	    color: '#63cbd6',
            maxPointWidth: 55,
	    data: ${TokenAlreadyExiList}
	  }]
	});
</script>
<script>
Highcharts.chart('container8', {
	  chart: {
	    zoomType: 'xy'
	  },
	  title: {
	    text: 'Total Detokenizations: <b style="color:#034e94;">${IndexController.formatIndianCommaSeparated(sumRespnumberDEtoken)}</b>',
	    align: 'center'
	  },
	  
	  xAxis: [{
		  categories: '${getDateList}'.split(',').map(item => item.replace('[', '').replace(']', '')),
	    crosshair: true
	  }],
	  yAxis: [{ // Primary yAxis
	    
	    title: {
	      text: 'Transactions (Detoken)'
	    }
	  },],
	  tooltip: {
	    shared: true
	  },
	  legend: {
	    align: 'left',
	    x: 100,
	    verticalAlign: 'bottom',
	    y: 22,
	    floating: true,
	   color:'#034e94'
	  },
	  series: [{
	    name: 'Detoken',
	    type: 'column',
	    color: '#9c4646',
            maxPointWidth: 55,
	    data: ${DetknRespList}
	  }]
	});
</script>
<script type="text/javascript">
    $('.currencyinr').each(function() {
        var monetary_value = $(this).text();
        var formatted_value = formatToIndianNumberString(monetary_value);

        $(this).text(formatted_value);
    });

    function formatToIndianNumberString(number1) {
    	var number = parseInt(number1); 
    	var formattedValue = number.toLocaleString('en-IN');
    	console.log(formattedValue);
       

        // Join the parts with commas
        return formattedValue;
    }
</script>

</html>