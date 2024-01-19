<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="com.nic.controller.IndexController"%>
<%@ page import="java.util.Date"%>

<div class="row" style="border: 2px solid black;">
	<div class="telnetcolumnleftmenu">
		<div class="columncenter">
			<h4>Tokenization Server</h4>
		</div>
		<table>
			<tr class="no-border">
				<th class="no-border"></th>
				<th class="no-border">T1 (.6)</th>
				<th class="no-border">T2 (.7)</th>
				<th class="no-border">T3 (.8)</th>
				<th class="no-border">T4 (.9)</th>
				<th class="no-border">T5 (.34)</th>
				<th class="no-border">T6 (.35)</th>
				<th class="no-border">T7 (.36)</th>
				<th class="no-border">T8 (.37)</th>
			</tr>
			<!-- <div class="tooltip">
				<label class="roundlabel "><b>Port: 443&nbsp;&nbsp;</b></label>
			</div> -->

			<tr>
				<th class="no-border">443</th>
				<td class="no-border"><c:forEach var="entry"
						items="${serveripsData}">
						<c:choose>
							<c:when test="${entry.ip=='10.246.135.6' && entry.port=='443'}">
								<div class="tooltip data-entry ${entry.status == 'OK' ? 'green' : 'red'}">
    <c:choose>
        <c:when test="${entry.space > '75%' && entry.space < '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel1">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel3">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space > '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel2">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel4">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space <= '75%' && entry.status == 'ERR' }">
            <label class="roundlabel5">${entry.status} | ${entry.space}</label>
        </c:when>
        <c:otherwise>
            <label class="roundlabel">${entry.status} | ${entry.space}</label>
        </c:otherwise>
    </c:choose>
    <!--  <span class="tooltiptext">${entry.ip}:${entry.port}</span>-->
</div>
							</c:when>
						</c:choose>
					</c:forEach></td>
				<td class="no-border"><c:forEach var="entry"
						items="${serveripsData}">
						<c:choose>
							<c:when test="${entry.ip=='10.246.135.7' && entry.port=='443'}">
								<div class="tooltip data-entry ${entry.status == 'OK' ? 'green' : 'red'}">
    <c:choose>
        <c:when test="${entry.space > '75%' && entry.space < '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel1">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel3">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space > '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel2">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel4">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space <= '75%' && entry.status == 'ERR' }">
            <label class="roundlabel5">${entry.status} | ${entry.space}</label>
        </c:when>
        <c:otherwise>
            <label class="roundlabel">${entry.status} | ${entry.space}</label>
        </c:otherwise>
    </c:choose>
   <!-- <span class="tooltiptext">${entry.ip}:${entry.port}</span>-->
</div>
							</c:when>
						</c:choose>
					</c:forEach></td>
				<td class="no-border"><c:forEach var="entry"
						items="${serveripsData}">
						<c:choose>
							<c:when test="${entry.ip=='10.246.135.8' && entry.port=='443'}">
								<div class="tooltip data-entry ${entry.status == 'OK' ? 'green' : 'red'}">
    <c:choose>
        <c:when test="${entry.space > '75%' && entry.space < '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel1">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel3">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space > '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel2">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel4">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space <= '75%' && entry.status == 'ERR' }">
            <label class="roundlabel5">${entry.status} | ${entry.space}</label>
        </c:when>
        <c:otherwise>
            <label class="roundlabel">${entry.status} | ${entry.space}</label>
        </c:otherwise>
    </c:choose>
 <!--     <span class="tooltiptext">${entry.ip}:${entry.port}</span> -->
</div>
							</c:when>
						</c:choose>
					</c:forEach></td>
				<td class="no-border"><c:forEach var="entry"
						items="${serveripsData}">
						<c:choose>
							<c:when test="${entry.ip=='10.246.135.9' && entry.port=='443'}">
								<div class="tooltip data-entry ${entry.status == 'OK' ? 'green' : 'red'}">
    <c:choose>
        <c:when test="${entry.space > '75%' && entry.space < '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel1">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel3">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space > '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel2">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel4">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space <= '75%' && entry.status == 'ERR' }">
            <label class="roundlabel5">${entry.status} | ${entry.space}</label>
        </c:when>
        <c:otherwise>
            <label class="roundlabel">${entry.status} | ${entry.space}</label>
        </c:otherwise>
    </c:choose>
<!--      <span class="tooltiptext">${entry.ip}:${entry.port}</span> -->
</div>
							</c:when>
						</c:choose>
					</c:forEach></td>
				<td class="no-border"><c:forEach var="entry"
						items="${serveripsData}">
						<c:choose>
							<c:when test="${entry.ip=='10.246.135.34' && entry.port=='443'}">
								<div class="tooltip data-entry ${entry.status == 'OK' ? 'green' : 'red'}">
    <c:choose>
        <c:when test="${entry.space > '75%' && entry.space < '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel1">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel3">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space > '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel2">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel4">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space <= '75%' && entry.status == 'ERR' }">
            <label class="roundlabel5">${entry.status} | ${entry.space}</label>
        </c:when>
        <c:otherwise>
            <label class="roundlabel">${entry.status} | ${entry.space}</label>
        </c:otherwise>
    </c:choose>
 <!--     <span class="tooltiptext">${entry.ip}:${entry.port}</span>-->
</div>
							</c:when>
						</c:choose>
					</c:forEach></td>
				<td class="no-border"><c:forEach var="entry"
						items="${serveripsData}">
						<c:choose>
							<c:when test="${entry.ip=='10.246.135.35' && entry.port=='443'}">
								<div class="tooltip data-entry ${entry.status == 'OK' ? 'green' : 'red'}">
    <c:choose>
        <c:when test="${entry.space > '75%' && entry.space < '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel1">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel3">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space > '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel2">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel4">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space <= '75%' && entry.status == 'ERR' }">
            <label class="roundlabel5">${entry.status} | ${entry.space}</label>
        </c:when>
        <c:otherwise>
            <label class="roundlabel">${entry.status} | ${entry.space}</label>
        </c:otherwise>
    </c:choose>
  <!--    <span class="tooltiptext">${entry.ip}:${entry.port}</span> -->
</div>
							</c:when>
						</c:choose>
					</c:forEach></td>
				<td class="no-border"><c:forEach var="entry"
						items="${serveripsData}">
						<c:choose>
							<c:when test="${entry.ip=='10.246.135.36' && entry.port=='443'}">
								<div class="tooltip data-entry ${entry.status == 'OK' ? 'green' : 'red'}">
    <c:choose>
        <c:when test="${entry.space > '75%' && entry.space < '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel1">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel3">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space > '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel2">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel4">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space <= '75%' && entry.status == 'ERR' }">
            <label class="roundlabel5">${entry.status} | ${entry.space}</label>
        </c:when>
        <c:otherwise>
            <label class="roundlabel">${entry.status} | ${entry.space}</label>
        </c:otherwise>
    </c:choose>
<!--      <span class="tooltiptext">${entry.ip}:${entry.port}</span> -->
</div>
							</c:when>
						</c:choose>
					</c:forEach></td>
				<td class="no-border"><c:forEach var="entry"
						items="${serveripsData}">
						<c:choose>
							<c:when test="${entry.ip=='10.246.135.37' && entry.port=='443'}">
								<div class="tooltip data-entry ${entry.status == 'OK' ? 'green' : 'red'}">
    <c:choose>
        <c:when test="${entry.space > '75%' && entry.space < '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel1">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel3">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space > '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel2">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel4">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space <= '75%' && entry.status == 'ERR' }">
            <label class="roundlabel5">${entry.status} | ${entry.space}</label>
        </c:when>
        <c:otherwise>
            <label class="roundlabel">${entry.status} | ${entry.space}</label>
        </c:otherwise>
    </c:choose>
 <!--     <span class="tooltiptext">${entry.ip}:${entry.port}</span> -->
</div>
							</c:when>
						</c:choose>
					</c:forEach></td>
			</tr>

			<tr>
				<th class="no-border">8011</th>
				<td class="no-border"><c:forEach var="entry"
						items="${serveripsData}">
						<c:choose>
							<c:when test="${entry.ip=='10.246.135.6' && entry.port=='8011'}">
								<div class="tooltip data-entry ${entry.status == 'OK' ? 'green' : 'red'}">
    <c:choose>
        <c:when test="${entry.space > '75%' && entry.space < '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel1">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel3">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space > '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel2">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel4">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space <= '75%' && entry.status == 'ERR' }">
            <label class="roundlabel5">${entry.status} | ${entry.space}</label>
        </c:when>
        <c:otherwise>
            <label class="roundlabel">${entry.status} | ${entry.space}</label>
        </c:otherwise>
    </c:choose>
 <!--     <span class="tooltiptext">${entry.ip}:${entry.port}</span> -->
</div>
							</c:when>
						</c:choose>
					</c:forEach></td>
				<td class="no-border"><c:forEach var="entry"
						items="${serveripsData}">
						<c:choose>
							<c:when test="${entry.ip=='10.246.135.7' && entry.port=='8011'}">
								<div class="tooltip data-entry ${entry.status == 'OK' ? 'green' : 'red'}">
    <c:choose>
        <c:when test="${entry.space > '75%' && entry.space < '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel1">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel3">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space > '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel2">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel4">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space <= '75%' && entry.status == 'ERR' }">
            <label class="roundlabel5">${entry.status} | ${entry.space}</label>
        </c:when>
        <c:otherwise>
            <label class="roundlabel">${entry.status} | ${entry.space}</label>
        </c:otherwise>
    </c:choose>
  <!--    <span class="tooltiptext">${entry.ip}:${entry.port}</span> -->
</div>
							</c:when>
						</c:choose>
					</c:forEach></td>
				<td class="no-border"><c:forEach var="entry"
						items="${serveripsData}">
						<c:choose>
							<c:when test="${entry.ip=='10.246.135.8' && entry.port=='8011'}">
								<div class="tooltip data-entry ${entry.status == 'OK' ? 'green' : 'red'}">
    <c:choose>
        <c:when test="${entry.space > '75%' && entry.space < '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel1">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel3">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space > '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel2">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel4">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space <= '75%' && entry.status == 'ERR' }">
            <label class="roundlabel5">${entry.status} | ${entry.space}</label>
        </c:when>
        <c:otherwise>
            <label class="roundlabel">${entry.status} | ${entry.space}</label>
        </c:otherwise>
    </c:choose>
<!--      <span class="tooltiptext">${entry.ip}:${entry.port}</span>-->
</div>
							</c:when>
						</c:choose>
					</c:forEach></td>
				<td class="no-border"><c:forEach var="entry"
						items="${serveripsData}">
						<c:choose>
							<c:when test="${entry.ip=='10.246.135.9' && entry.port=='8011'}">
								<div class="tooltip data-entry ${entry.status == 'OK' ? 'green' : 'red'}">
    <c:choose>
        <c:when test="${entry.space > '75%' && entry.space < '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel1">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel3">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space > '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel2">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel4">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space <= '75%' && entry.status == 'ERR' }">
            <label class="roundlabel5">${entry.status} | ${entry.space}</label>
        </c:when>
        <c:otherwise>
            <label class="roundlabel">${entry.status} | ${entry.space}</label>
        </c:otherwise>
    </c:choose>
 <!--     <span class="tooltiptext">${entry.ip}:${entry.port}</span>-->
</div>
							</c:when>
						</c:choose>
					</c:forEach></td>
				<td class="no-border"><c:forEach var="entry"
						items="${serveripsData}">
						<c:choose>
							<c:when test="${entry.ip=='10.246.135.34' && entry.port=='8011'}">
								<div class="tooltip data-entry ${entry.status == 'OK' ? 'green' : 'red'}">
    <c:choose>
        <c:when test="${entry.space > '75%' && entry.space < '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel1">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel3">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space > '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel2">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel4">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space <= '75%' && entry.status == 'ERR' }">
            <label class="roundlabel5">${entry.status} | ${entry.space}</label>
        </c:when>
        <c:otherwise>
            <label class="roundlabel">${entry.status} | ${entry.space}</label>
        </c:otherwise>
    </c:choose>
  <!--    <span class="tooltiptext">${entry.ip}:${entry.port}</span> -->
</div>
							</c:when>
						</c:choose>
					</c:forEach></td>
				<td class="no-border"><c:forEach var="entry"
						items="${serveripsData}">
						<c:choose>
							<c:when test="${entry.ip=='10.246.135.35' && entry.port=='8011'}">
								<div class="tooltip data-entry ${entry.status == 'OK' ? 'green' : 'red'}">
    <c:choose>
        <c:when test="${entry.space > '75%' && entry.space < '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel1">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel3">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space > '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel2">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel4">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space <= '75%' && entry.status == 'ERR' }">
            <label class="roundlabel5">${entry.status} | ${entry.space}</label>
        </c:when>
        <c:otherwise>
            <label class="roundlabel">${entry.status} | ${entry.space}</label>
        </c:otherwise>
    </c:choose>
 <!--     <span class="tooltiptext">${entry.ip}:${entry.port}</span>-->
</div>
							</c:when>
						</c:choose>
					</c:forEach></td>
				<td class="no-border"><c:forEach var="entry"
						items="${serveripsData}">
						<c:choose>
							<c:when test="${entry.ip=='10.246.135.36' && entry.port=='8011'}">
								<div class="tooltip data-entry ${entry.status == 'OK' ? 'green' : 'red'}">
    <c:choose>
        <c:when test="${entry.space > '75%' && entry.space < '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel1">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel3">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space > '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel2">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel4">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space <= '75%' && entry.status == 'ERR' }">
            <label class="roundlabel5">${entry.status} | ${entry.space}</label>
        </c:when>
        <c:otherwise>
            <label class="roundlabel">${entry.status} | ${entry.space}</label>
        </c:otherwise>
    </c:choose>
 <!--     <span class="tooltiptext">${entry.ip}:${entry.port}</span>-->
</div>
							</c:when>
						</c:choose>
					</c:forEach></td>
				<td class="no-border"><c:forEach var="entry"
						items="${serveripsData}">
						<c:choose>
							<c:when test="${entry.ip=='10.246.135.37' && entry.port=='8011'}">
								<div class="tooltip data-entry ${entry.status == 'OK' ? 'green' : 'red'}">
    <c:choose>
        <c:when test="${entry.space > '75%' && entry.space < '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel1">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel3">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space > '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel2">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel4">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space <= '75%' && entry.status == 'ERR' }">
            <label class="roundlabel5">${entry.status} | ${entry.space}</label>
        </c:when>
        <c:otherwise>
            <label class="roundlabel">${entry.status} | ${entry.space}</label>
        </c:otherwise>
    </c:choose>
  <!--    <span class="tooltiptext">${entry.ip}:${entry.port}</span>-->
</div>
							</c:when>
						</c:choose>
					</c:forEach></td>
			<tr>
				<th class="no-border">9002</th>
				<td class="no-border"><c:forEach var="entry"
						items="${serveripsData}">
						<c:choose>
							<c:when test="${entry.ip=='10.246.135.6' && entry.port=='9002'}">
								<div class="tooltip data-entry ${entry.status == 'OK' ? 'green' : 'red'}">
    <c:choose>
        <c:when test="${entry.space > '75%' && entry.space < '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel1">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel3">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space > '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel2">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel4">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space <= '75%' && entry.status == 'ERR' }">
            <label class="roundlabel5">${entry.status} | ${entry.space}</label>
        </c:when>
        <c:otherwise>
            <label class="roundlabel">${entry.status} | ${entry.space}</label>
        </c:otherwise>
    </c:choose>
  <!--    <span class="tooltiptext">${entry.ip}:${entry.port}</span>-->
</div>
							</c:when>
						</c:choose>
					</c:forEach></td>
				<td class="no-border"><c:forEach var="entry"
						items="${serveripsData}">
						<c:choose>
							<c:when test="${entry.ip=='10.246.135.7' && entry.port=='9002'}">
								<div class="tooltip data-entry ${entry.status == 'OK' ? 'green' : 'red'}">
    <c:choose>
        <c:when test="${entry.space > '75%' && entry.space < '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel1">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel3">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space > '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel2">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel4">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space <= '75%' && entry.status == 'ERR' }">
            <label class="roundlabel5">${entry.status} | ${entry.space}</label>
        </c:when>
        <c:otherwise>
            <label class="roundlabel">${entry.status} | ${entry.space}</label>
        </c:otherwise>
    </c:choose>
 <!--     <span class="tooltiptext">${entry.ip}:${entry.port}</span>-->
</div>
							</c:when>
						</c:choose>
					</c:forEach></td>
				<td class="no-border"><c:forEach var="entry"
						items="${serveripsData}">
						<c:choose>
							<c:when test="${entry.ip=='10.246.135.8' && entry.port=='9002'}">
								<div class="tooltip data-entry ${entry.status == 'OK' ? 'green' : 'red'}">
    <c:choose>
        <c:when test="${entry.space > '75%' && entry.space < '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel1">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel3">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space > '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel2">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel4">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space <= '75%' && entry.status == 'ERR' }">
            <label class="roundlabel5">${entry.status} | ${entry.space}</label>
        </c:when>
        <c:otherwise>
            <label class="roundlabel">${entry.status} | ${entry.space}</label>
        </c:otherwise>
    </c:choose>
   <!--   <span class="tooltiptext">${entry.ip}:${entry.port}</span>-->
</div>
							</c:when>
						</c:choose>
					</c:forEach></td>
				<td class="no-border"><c:forEach var="entry"
						items="${serveripsData}">
						<c:choose>
							<c:when test="${entry.ip=='10.246.135.9' && entry.port=='9002'}">
								<div class="tooltip data-entry ${entry.status == 'OK' ? 'green' : 'red'}">
    <c:choose>
        <c:when test="${entry.space > '75%' && entry.space < '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel1">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel3">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space > '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel2">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel4">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space <= '75%' && entry.status == 'ERR' }">
            <label class="roundlabel5">${entry.status} | ${entry.space}</label>
        </c:when>
        <c:otherwise>
            <label class="roundlabel">${entry.status} | ${entry.space}</label>
        </c:otherwise>
    </c:choose>
<!--      <span class="tooltiptext">${entry.ip}:${entry.port}</span>-->
</div>
							</c:when>
						</c:choose>
					</c:forEach></td>
				<td class="no-border"><c:forEach var="entry"
						items="${serveripsData}">
						<c:choose>
							<c:when test="${entry.ip=='10.246.135.34' && entry.port=='9002'}">
								<div class="tooltip data-entry ${entry.status == 'OK' ? 'green' : 'red'}">
    <c:choose>
        <c:when test="${entry.space > '75%' && entry.space < '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel1">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel3">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space > '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel2">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel4">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space <= '75%' && entry.status == 'ERR' }">
            <label class="roundlabel5">${entry.status} | ${entry.space}</label>
        </c:when>
        <c:otherwise>
            <label class="roundlabel">${entry.status} | ${entry.space}</label>
        </c:otherwise>
    </c:choose>
 <!--     <span class="tooltiptext">${entry.ip}:${entry.port}</span>-->
</div>
							</c:when>
						</c:choose>
					</c:forEach></td>
				<td class="no-border"><c:forEach var="entry"
						items="${serveripsData}">
						<c:choose>
							<c:when test="${entry.ip=='10.246.135.35' && entry.port=='9002'}">
								<div class="tooltip data-entry ${entry.status == 'OK' ? 'green' : 'red'}">
    <c:choose>
        <c:when test="${entry.space > '75%' && entry.space < '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel1">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel3">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space > '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel2">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel4">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space <= '75%' && entry.status == 'ERR' }">
            <label class="roundlabel5">${entry.status} | ${entry.space}</label>
        </c:when>
        <c:otherwise>
            <label class="roundlabel">${entry.status} | ${entry.space}</label>
        </c:otherwise>
    </c:choose>
<!--      <span class="tooltiptext">${entry.ip}:${entry.port}</span>-->
</div>
							</c:when>
						</c:choose>
					</c:forEach></td>
				<td class="no-border"><c:forEach var="entry"
						items="${serveripsData}">
						<c:choose>
							<c:when test="${entry.ip=='10.246.135.36' && entry.port=='9002'}">
								<div class="tooltip data-entry ${entry.status == 'OK' ? 'green' : 'red'}">
    <c:choose>
        <c:when test="${entry.space > '75%' && entry.space < '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel1">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel3">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space > '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel2">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel4">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space <= '75%' && entry.status == 'ERR' }">
            <label class="roundlabel5">${entry.status} | ${entry.space}</label>
        </c:when>
        <c:otherwise>
            <label class="roundlabel">${entry.status} | ${entry.space}</label>
        </c:otherwise>
    </c:choose>
 <!--     <span class="tooltiptext">${entry.ip}:${entry.port}</span>-->
</div>
							</c:when>
						</c:choose>
					</c:forEach></td>
				<td class="no-border"><c:forEach var="entry"
						items="${serveripsData}">
						<c:choose>
							<c:when test="${entry.ip=='10.246.135.37' && entry.port=='9002'}">
								<div class="tooltip data-entry ${entry.status == 'OK' ? 'green' : 'red'}">
    <c:choose>
        <c:when test="${entry.space > '75%' && entry.space < '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel1">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel3">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space > '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel2">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel4">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space <= '75%' && entry.status == 'ERR' }">
            <label class="roundlabel5">${entry.status} | ${entry.space}</label>
        </c:when>
        <c:otherwise>
            <label class="roundlabel">${entry.status} | ${entry.space}</label>
        </c:otherwise>
    </c:choose>
 <!--     <span class="tooltiptext">${entry.ip}:${entry.port}</span>-->
</div>

							</c:when>
						</c:choose>
					</c:forEach></td>
			</tr>
		</table>
	</div>

	<div class="telnetcolumnrightmenu">
		<div class="columncenter">
			<h4>HSM, Admin, Token</h4>
		</div>
		<table>
			<tr class="no-border">
				<th class="no-border"></th>
				<th class="no-border">TKN LB (.208)</th>
				<th class="no-border">ADV Admin (.12)</th>
				<th class="no-border">ADV Admin (.13)</th>
			</tr>

			<tr>
				<th class="no-border">443</th>
				<td class="no-border"><c:forEach var="entry"
						items="${serveripsData}">
						<c:choose>
							<c:when test="${entry.ip=='10.246.135.208' && entry.port=='443'}">
								<div
									class="tooltip data-entry ${entry.status == 'OK' ? 'green' : 'red'}">

									<label class="roundlabel ">&nbsp;&nbsp;&nbsp;&nbsp;${entry.status}&nbsp;&nbsp;&nbsp;&nbsp;</label> <span
										class="tooltiptext">${entry.ip }:${entry.port }</span>
								</div>
							</c:when>
						</c:choose>
					</c:forEach></td>
				<td class="no-border"><c:forEach var="entry"
						items="${serveripsData}">
						<c:choose>
							<c:when test="${entry.ip=='10.246.135.12' && entry.port=='443'}">
								<div class="tooltip data-entry ${entry.status == 'OK' ? 'green' : 'red'}">
    <c:choose>
        <c:when test="${entry.space > '75%' && entry.space < '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel1">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel3">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space > '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel2">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel4">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space <= '75%' && entry.status == 'ERR' }">
            <label class="roundlabel5">${entry.status} | ${entry.space}</label>
        </c:when>
        <c:otherwise>
            <label class="roundlabel">${entry.status} | ${entry.space}</label>
        </c:otherwise>
    </c:choose>
   <!--   <span class="tooltiptext">${entry.ip}:${entry.port}</span>-->
</div>

							</c:when>
						</c:choose>
					</c:forEach></td>
				<td class="no-border"><c:forEach var="entry"
						items="${serveripsData}">
						<c:choose>
							<c:when test="${entry.ip=='10.246.135.13' && entry.port=='443'}">
								<div class="tooltip data-entry ${entry.status == 'OK' ? 'green' : 'red'}">
    <c:choose>
        <c:when test="${entry.space > '75%' && entry.space < '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel1">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel3">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space > '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel2">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel4">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space <= '75%' && entry.status == 'ERR' }">
            <label class="roundlabel5">${entry.status} | ${entry.space}</label>
        </c:when>
        <c:otherwise>
            <label class="roundlabel">${entry.status} | ${entry.space}</label>
        </c:otherwise>
    </c:choose>
<!--      <span class="tooltiptext">${entry.ip}:${entry.port}</span>-->
</div>

							</c:when>
						</c:choose>
					</c:forEach></td>

			</tr>
			<tr class="no-border">
				<th class="no-border"></th>
				<th class="no-border">HSM LB (.204)</th>
				<th class="no-border">HSM1 (.180)</th>
				<th class="no-border">HSM2 (.181)</th>
			</tr>
			<tr>
				<th class="no-border">8004</th>
				<td class="no-border"><c:forEach var="entry"
						items="${serveripsData}">
						<c:choose>
							<c:when
								test="${entry.ip=='10.246.135.204' && entry.port=='8004'}">
								<div
									class="tooltip data-entry ${entry.status == 'OK' ? 'green' : 'red'}">

									<label class="roundlabel ">&nbsp;&nbsp;&nbsp;&nbsp;${entry.status}&nbsp;&nbsp;&nbsp;&nbsp;</label> 
								<!--  	<span class="tooltiptext">${entry.ip }:${entry.port }</span> -->
								</div>
							</c:when>
						</c:choose>
					</c:forEach></td>
				<td class="no-border"><c:forEach var="entry"
						items="${serveripsData}">
						<c:choose>
							<c:when
								test="${entry.ip=='10.246.135.180' && entry.port=='8004'}">
								<div
									class="tooltip data-entry ${entry.status == 'OK' ? 'green' : 'red'}">

									<label class="roundlabel ">&nbsp;&nbsp;&nbsp;&nbsp;${entry.status}&nbsp;&nbsp;&nbsp;&nbsp;</label> 
									<!--  <span	class="tooltiptext">${entry.ip }:${entry.port }</span>-->
								</div>
							</c:when>
						</c:choose>
					</c:forEach></td>
				<td class="no-border"><c:forEach var="entry"
						items="${serveripsData}">
						<c:choose>
							<c:when
								test="${entry.ip=='10.246.135.181' && entry.port=='8004'}">
								<div
									class="tooltip data-entry ${entry.status == 'OK' ? 'green' : 'red'}">

									<label class="roundlabel ">&nbsp;&nbsp;&nbsp;&nbsp;${entry.status}&nbsp;&nbsp;&nbsp;&nbsp;</label>
								<!--  	 <span	class="tooltiptext">${entry.ip }:${entry.port }</span> -->
								</div>
							</c:when>
						</c:choose>
					</c:forEach></td>
			</tr>
		</table>
	</div>


	<div class="telnetcolumnrightmenu">
		<div class="columncenter">
			<h4>HA Proxy, Admin</h4>
		</div>
		<table>
			<tr class="no-border">
				<th class="no-border"></th>
				<th class="no-border">HA Proxy (.25)</th>
				<th class="no-border">HA Proxy (.26)</th>
			</tr>
			<tr>
				<th class="no-border">80</th>
				<td class="no-border"><c:forEach var="entry"
						items="${serveripsData}">
						<c:choose>
							<c:when test="${entry.ip=='10.246.135.25' && entry.port=='80'}">
								<div class="tooltip data-entry ${entry.status == 'OK' ? 'green' : 'red'}">
    <c:choose>
        <c:when test="${entry.space > '75%' && entry.space < '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel1">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel3">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space > '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel2">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel4">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space <= '75%' && entry.status == 'ERR' }">
            <label class="roundlabel5">${entry.status} | ${entry.space}</label>
        </c:when>
        <c:otherwise>
            <label class="roundlabel">${entry.status} | ${entry.space}</label>
        </c:otherwise>
    </c:choose>
 <!--     <span class="tooltiptext">${entry.ip}:${entry.port}</span> -->
</div>

							</c:when>
						</c:choose>
					</c:forEach></td>
				<td class="no-border"><c:forEach var="entry"
						items="${serveripsData}">
						<c:choose>
							<c:when test="${entry.ip=='10.246.135.26' && entry.port=='80'}">
								<div class="tooltip data-entry ${entry.status == 'OK' ? 'green' : 'red'}">
    <c:choose>
        <c:when test="${entry.space > '75%' && entry.space < '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel1">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel3">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space > '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel2">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel4">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space <= '75%' && entry.status == 'ERR' }">
            <label class="roundlabel5">${entry.status} | ${entry.space}</label>
        </c:when>
        <c:otherwise>
            <label class="roundlabel">${entry.status} | ${entry.space}</label>
        </c:otherwise>
    </c:choose>
  <!--    <span class="tooltiptext">${entry.ip}:${entry.port}</span>-->
</div>

							</c:when>
						</c:choose>
					</c:forEach></td>

			</tr>
			<tr class="no-border">
				<th class="no-border"></th>
				<th class="no-border">ADV Admin (.12)</th>
				<th class="no-border">ADV Admin (.13)</th>
			</tr>
			<tr>
				<th class="no-border">5001</th>
				<td class="no-border"><c:forEach var="entry"
						items="${serveripsData}">
						<c:choose>
							<c:when test="${entry.ip=='10.246.135.12' && entry.port=='5001'}">
								<div class="tooltip data-entry ${entry.status == 'OK' ? 'green' : 'red'}">
    <c:choose>
        <c:when test="${entry.space > '75%' && entry.space < '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel1">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel3">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space > '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel2">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel4">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space <= '75%' && entry.status == 'ERR' }">
            <label class="roundlabel5">${entry.status} | ${entry.space}</label>
        </c:when>
        <c:otherwise>
            <label class="roundlabel">${entry.status} | ${entry.space}</label>
        </c:otherwise>
    </c:choose>
 <!--     <span class="tooltiptext">${entry.ip}:${entry.port}</span>-->
</div>

							</c:when>
						</c:choose>
					</c:forEach></td>
				<td class="no-border"><c:forEach var="entry"
						items="${serveripsData}">
						<c:choose>
							<c:when test="${entry.ip=='10.246.135.13' && entry.port=='5001'}">
								<div class="tooltip data-entry ${entry.status == 'OK' ? 'green' : 'red'}">
    <c:choose>
        <c:when test="${entry.space > '75%' && entry.space < '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel1">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel3">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space > '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel2">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel4">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space <= '75%' && entry.status == 'ERR' }">
            <label class="roundlabel5">${entry.status} | ${entry.space}</label>
        </c:when>
        <c:otherwise>
            <label class="roundlabel">${entry.status} | ${entry.space}</label>
        </c:otherwise>
    </c:choose>
  <!--    <span class="tooltiptext">${entry.ip}:${entry.port}</span> -->
</div>

							</c:when>
						</c:choose>
					</c:forEach></td>
			</tr>
		</table>
	</div>
	<div class="telnetcolumn2ndrightmenu">
		<div class="columncenter">
			<h4>DB Server on 5432</h4>
		</div>
		<table>
			<tr class="no-border">
				<th class="no-border">(.16)</th>
				<th class="no-border">(.17)</th>
				<th class="no-border">(.18)</th>
				<th class="no-border">(.19)</th>
				<th class="no-border">(.20)</th>
			</tr>
			<tr>
				<td class="no-border"><c:forEach var="entry"
						items="${serveripsData}">
						<c:choose>
							<c:when test="${entry.ip=='10.246.135.16' && entry.port=='5432'}">
								<div class="tooltip data-entry ${entry.status == 'OK' ? 'green' : 'red'}">
    <c:choose>
        <c:when test="${entry.space > '75%' && entry.space < '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel1">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel3">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space > '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel2">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel4">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space <= '75%' && entry.status == 'ERR' }">
            <label class="roundlabel5">${entry.status} | ${entry.space}</label>
        </c:when>
        <c:otherwise>
            <label class="roundlabel">${entry.status} | ${entry.space}</label>
        </c:otherwise>
    </c:choose>
<!--      <span class="tooltiptext">${entry.ip}:${entry.port}</span> -->
</div>

							</c:when>
						</c:choose>
					</c:forEach></td>
				<td class="no-border"><c:forEach var="entry"
						items="${serveripsData}">
						<c:choose>
							<c:when test="${entry.ip=='10.246.135.17' && entry.port=='5432'}">
								<div class="tooltip data-entry ${entry.status == 'OK' ? 'green' : 'red'}">
    <c:choose>
        <c:when test="${entry.space > '75%' && entry.space < '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel1">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel3">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space > '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel2">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel4">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space <= '75%' && entry.status == 'ERR' }">
            <label class="roundlabel5">${entry.status} | ${entry.space}</label>
        </c:when>
        <c:otherwise>
            <label class="roundlabel">${entry.status} | ${entry.space}</label>
        </c:otherwise>
    </c:choose>
 <!--     <span class="tooltiptext">${entry.ip}:${entry.port}</span> -->
</div>

							</c:when>
						</c:choose>
					</c:forEach></td>
				<td class="no-border"><c:forEach var="entry"
						items="${serveripsData}">
						<c:choose>
							<c:when test="${entry.ip=='10.246.135.18' && entry.port=='5432'}">
								<div class="tooltip data-entry ${entry.status == 'OK' ? 'green' : 'red'}">
    <c:choose>
        <c:when test="${entry.space > '75%' && entry.space < '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel1">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel3">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space > '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel2">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel4">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space <= '75%' && entry.status == 'ERR' }">
            <label class="roundlabel5">${entry.status} | ${entry.space}</label>
        </c:when>
        <c:otherwise>
            <label class="roundlabel">${entry.status} | ${entry.space}</label>
        </c:otherwise>
    </c:choose>
 <!--     <span class="tooltiptext">${entry.ip}:${entry.port}</span>-->
</div>

							</c:when>
						</c:choose>
					</c:forEach></td>
				<td class="no-border"><c:forEach var="entry"
						items="${serveripsData}">
						<c:choose>
							<c:when test="${entry.ip=='10.246.135.19' && entry.port=='5432'}">
								<div class="tooltip data-entry ${entry.status == 'OK' ? 'green' : 'red'}">
    <c:choose>
        <c:when test="${entry.space > '75%' && entry.space < '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel1">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel3">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space > '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel2">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel4">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space <= '75%' && entry.status == 'ERR' }">
            <label class="roundlabel5">${entry.status} | ${entry.space}</label>
        </c:when>
        <c:otherwise>
            <label class="roundlabel">${entry.status} | ${entry.space}</label>
        </c:otherwise>
    </c:choose>
 <!--     <span class="tooltiptext">${entry.ip}:${entry.port}</span> -->
</div>

							</c:when>
						</c:choose>
					</c:forEach></td>
				<td class="no-border"><c:forEach var="entry"
						items="${serveripsData}">
						<c:choose>
							<c:when test="${entry.ip=='10.246.135.20' && entry.port=='5432'}">
								<div class="tooltip data-entry ${entry.status == 'OK' ? 'green' : 'red'}">
    <c:choose>
        <c:when test="${entry.space > '75%' && entry.space < '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel1">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel3">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space > '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel2">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel4">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space <= '75%' && entry.status == 'ERR' }">
            <label class="roundlabel5">${entry.status} | ${entry.space}</label>
        </c:when>
        <c:otherwise>
            <label class="roundlabel">${entry.status} | ${entry.space}</label>
        </c:otherwise>
    </c:choose>
 <!--     <span class="tooltiptext">${entry.ip}:${entry.port}</span> -->
</div>

							</c:when>
						</c:choose>
					</c:forEach></td>

			</tr>
			<tr class="no-border">
				<th class="no-border">(.21)</th>
				<th class="no-border">(.22)</th>
				<th class="no-border">(.23)</th>
				<th class="no-border">(.24)</th>
				<th class="no-border">(.28)</th>
			</tr>
			<tr>
				<td class="no-border"><c:forEach var="entry"
						items="${serveripsData}">
						<c:choose>
							<c:when test="${entry.ip=='10.246.135.21' && entry.port=='5432'}">
								<div class="tooltip data-entry ${entry.status == 'OK' ? 'green' : 'red'}">
    <c:choose>
        <c:when test="${entry.space > '75%' && entry.space < '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel1">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel3">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space > '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel2">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel4">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space <= '75%' && entry.status == 'ERR' }">
            <label class="roundlabel5">${entry.status} | ${entry.space}</label>
        </c:when>
        <c:otherwise>
            <label class="roundlabel">${entry.status} | ${entry.space}</label>
        </c:otherwise>
    </c:choose>
<!--      <span class="tooltiptext">${entry.ip}:${entry.port}</span>-->
</div>

							</c:when>
						</c:choose>
					</c:forEach></td>
				<td class="no-border"><c:forEach var="entry"
						items="${serveripsData}">
						<c:choose>
							<c:when test="${entry.ip=='10.246.135.22' && entry.port=='5432'}">
								<div class="tooltip data-entry ${entry.status == 'OK' ? 'green' : 'red'}">
    <c:choose>
        <c:when test="${entry.space > '75%' && entry.space < '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel1">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel3">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space > '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel2">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel4">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space <= '75%' && entry.status == 'ERR' }">
            <label class="roundlabel5">${entry.status} | ${entry.space}</label>
        </c:when>
        <c:otherwise>
            <label class="roundlabel">${entry.status} | ${entry.space}</label>
        </c:otherwise>
    </c:choose>
<!--      <span class="tooltiptext">${entry.ip}:${entry.port}</span>-->
</div>

							</c:when>
						</c:choose>
					</c:forEach></td>
				<td class="no-border"><c:forEach var="entry"
						items="${serveripsData}">
						<c:choose>
							<c:when test="${entry.ip=='10.246.135.23' && entry.port=='5432'}">
								<div class="tooltip data-entry ${entry.status == 'OK' ? 'green' : 'red'}">
    <c:choose>
        <c:when test="${entry.space > '75%' && entry.space < '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel1">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel3">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space > '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel2">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel4">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space <= '75%' && entry.status == 'ERR' }">
            <label class="roundlabel5">${entry.status} | ${entry.space}</label>
        </c:when>
        <c:otherwise>
            <label class="roundlabel">${entry.status} | ${entry.space}</label>
        </c:otherwise>
    </c:choose>
   <!--   <span class="tooltiptext">${entry.ip}:${entry.port}</span>-->
</div>

							</c:when>
						</c:choose>
					</c:forEach></td>
				<td class="no-border"><c:forEach var="entry"
						items="${serveripsData}">
						<c:choose>
							<c:when test="${entry.ip=='10.246.135.24' && entry.port=='5432'}">
								<div class="tooltip data-entry ${entry.status == 'OK' ? 'green' : 'red'}">
    <c:choose>
        <c:when test="${entry.space > '75%' && entry.space < '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel1">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel3">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space > '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel2">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel4">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space <= '75%' && entry.status == 'ERR' }">
            <label class="roundlabel5">${entry.status} | ${entry.space}</label>
        </c:when>
        <c:otherwise>
            <label class="roundlabel">${entry.status} | ${entry.space}</label>
        </c:otherwise>
    </c:choose>
 <!--     <span class="tooltiptext">${entry.ip}:${entry.port}</span>-->
</div>

							</c:when>
						</c:choose>
					</c:forEach></td>
				<td class="no-border"><c:forEach var="entry"
						items="${serveripsData}">
						<c:choose>
							<c:when test="${entry.ip=='10.246.135.28' && entry.port=='5432'}">
								<div class="tooltip data-entry ${entry.status == 'OK' ? 'green' : 'red'}">
    <c:choose>
        <c:when test="${entry.space > '75%' && entry.space < '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel1">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel3">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space > '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel2">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel4">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space <= '75%' && entry.status == 'ERR' }">
            <label class="roundlabel5">${entry.status} | ${entry.space}</label>
        </c:when>
        <c:otherwise>
            <label class="roundlabel">${entry.status} | ${entry.space}</label>
        </c:otherwise>
    </c:choose>
 <!--     <span class="tooltiptext">${entry.ip}:${entry.port}</span>-->
</div>

							</c:when>
						</c:choose>
					</c:forEach></td>

			</tr>
			<tr class="no-border">
				<th class="no-border">(.29)</th>
				<th class="no-border">(.30)</th>
				<th class="no-border">(.45)</th>
				<th class="no-border">(.46)</th>
				<th class="no-border">(.47)</th>
			</tr>
			<tr>
				<td class="no-border"><c:forEach var="entry"
						items="${serveripsData}">
						<c:choose>
							<c:when test="${entry.ip=='10.246.135.29' && entry.port=='5432'}">
								<div class="tooltip data-entry ${entry.status == 'OK' ? 'green' : 'red'}">
    <c:choose>
        <c:when test="${entry.space > '75%' && entry.space < '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel1">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel3">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space > '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel2">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel4">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space <= '75%' && entry.status == 'ERR' }">
            <label class="roundlabel5">${entry.status} | ${entry.space}</label>
        </c:when>
        <c:otherwise>
            <label class="roundlabel">${entry.status} | ${entry.space}</label>
        </c:otherwise>
    </c:choose>
<!--      <span class="tooltiptext">${entry.ip}:${entry.port}</span>-->
</div>

							</c:when>
						</c:choose>
					</c:forEach></td>
				<td class="no-border"><c:forEach var="entry"
						items="${serveripsData}">
						<c:choose>
							<c:when test="${entry.ip=='10.246.135.30' && entry.port=='5432'}">
								<div class="tooltip data-entry ${entry.status == 'OK' ? 'green' : 'red'}">
    <c:choose>
        <c:when test="${entry.space > '75%' && entry.space < '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel1">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel3">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space > '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel2">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel4">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space <= '75%' && entry.status == 'ERR' }">
            <label class="roundlabel5">${entry.status} | ${entry.space}</label>
        </c:when>
        <c:otherwise>
            <label class="roundlabel">${entry.status} | ${entry.space}</label>
        </c:otherwise>
    </c:choose>
<!--      <span class="tooltiptext">${entry.ip}:${entry.port}</span>-->
</div>

							</c:when>
						</c:choose>
					</c:forEach></td>
				<td class="no-border"><c:forEach var="entry"
						items="${serveripsData}">
						<c:choose>
							<c:when test="${entry.ip=='10.246.135.45' && entry.port=='5432'}">
								<div class="tooltip data-entry ${entry.status == 'OK' ? 'green' : 'red'}">
    <c:choose>
        <c:when test="${entry.space > '75%' && entry.space < '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel1">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel3">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space > '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel2">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel4">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space <= '75%' && entry.status == 'ERR' }">
            <label class="roundlabel5">${entry.status} | ${entry.space}</label>
        </c:when>
        <c:otherwise>
            <label class="roundlabel">${entry.status} | ${entry.space}</label>
        </c:otherwise>
    </c:choose>
 <!--     <span class="tooltiptext">${entry.ip}:${entry.port}</span>-->
</div>

							</c:when>
						</c:choose>
					</c:forEach></td>
				<td class="no-border"><c:forEach var="entry"
						items="${serveripsData}">
						<c:choose>
							<c:when test="${entry.ip=='10.246.135.46' && entry.port=='5432'}">
								<div class="tooltip data-entry ${entry.status == 'OK' ? 'green' : 'red'}">
    <c:choose>
        <c:when test="${entry.space > '75%' && entry.space < '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel1">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel3">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space > '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel2">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel4">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space <= '75%' && entry.status == 'ERR' }">
            <label class="roundlabel5">${entry.status} | ${entry.space}</label>
        </c:when>
        <c:otherwise>
            <label class="roundlabel">${entry.status} | ${entry.space}</label>
        </c:otherwise>
    </c:choose>
   <!--   <span class="tooltiptext">${entry.ip}:${entry.port}</span>-->
</div>

							</c:when>
						</c:choose>
					</c:forEach></td>
				<td class="no-border"><c:forEach var="entry"
						items="${serveripsData}">
						<c:choose>
							<c:when test="${entry.ip=='10.246.135.47' && entry.port=='5432'}">
								<div class="tooltip data-entry ${entry.status == 'OK' ? 'green' : 'red'}">
    <c:choose>
        <c:when test="${entry.space > '75%' && entry.space < '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel1">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel3">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space > '90%'}">
            <c:choose>
                <c:when test="${entry.status == 'OK' }">
                    <label class="roundlabel2">${entry.status} | ${entry.space}</label>
                </c:when>
                <c:when test="${entry.status == 'ERR' }">
                    <label class="roundlabel4">${entry.status} | ${entry.space}</label>
                </c:when>
            </c:choose>
        </c:when>
        <c:when test="${entry.space <= '75%' && entry.status == 'ERR' }">
            <label class="roundlabel5">${entry.status} | ${entry.space}</label>
        </c:when>
        <c:otherwise>
            <label class="roundlabel">${entry.status} | ${entry.space}</label>
        </c:otherwise>
    </c:choose>
   <!--   <span class="tooltiptext">${entry.ip}:${entry.port}</span>-->
</div>

							</c:when>
						</c:choose>
					</c:forEach></td>
			</tr>
		</table>
	</div>
</div>

<script>
	function updateData() {
		$.ajax({
			url : "updateData", // Replace with your endpoint
			type : "GET",
			dataType : "json",
			success : function(data) {
				if (data) {
					data.forEach(function(entry, index) {
						var colorClass = entry.status === 'OK' ? 'green'
								: 'red';
						$('.data-entry').eq(index).removeClass('green red')
								.addClass(colorClass);
						$('.roundlabel', $('.data-entry').eq(index)).text(
								entry.status);
					});
				}
			},
			error : function(xhr, status, error) {
				console.error("Error fetching updated data:", error);
			}
		});
	}

	// Call the updateData function every 10 seconds
	setInterval(updateData, 10000);
</script>