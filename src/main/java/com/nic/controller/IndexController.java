package com.nic.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.nic.pojo.AppData;
import com.nic.pojo.AppList;
import com.nic.pojo.ServerStatus;
import com.nic.pojo.TknSrvError;
import com.nic.pojo.TknSrvError15Min;
import com.nic.pojo.TknSrvErrorCategories;
import com.nic.pojo.TknSrvReq;
import com.nic.pojo.TknSrvReq15Min;
import com.nic.pojo.TknSrvResp;
import com.nic.pojo.TknSrvUserError;
import com.nic.pojo.TknTotalTxnInterval;
import com.nic.repository.AppDataRepository;
import com.nic.repository.AppListRepository;
import com.nic.repository.ServerStatusRepository;
import com.nic.repository.TknSrvErrorCategoriesRepository;
import com.nic.repository.TknSrvErrorRepository;
import com.nic.repository.TknSrvErrorRepository15Min;
import com.nic.repository.TknSrvReqRepository;
import com.nic.repository.TknSrvReqRepository15Min;
import com.nic.repository.TknSrvRespRepository;
import com.nic.repository.TknSrvUserErrorRepository;
import com.nic.repository.TknTotalTxnIntervalRepository;
import com.opencsv.exceptions.CsvValidationException;

@Controller
public class IndexController {

	@Autowired
	AppListRepository applicationDetailsRepository;

	@Autowired
	TknSrvReqRepository tokenWiseReqestDataRepository;

	@Autowired
	TknSrvRespRepository tokenWiseResponseDataRepository;

	@Autowired
	TknSrvReqRepository15Min tokenWiseReqestDataRepository15Min;

	@Autowired
	TknSrvErrorRepository15Min tokenWiseErrorDataRepository15Min;

	@Autowired
	TknSrvErrorRepository tokenWiseErrorDataRepository;

	@Autowired
	TknSrvErrorCategoriesRepository tknSrvErrorCategoriesRepository;

	@Autowired
	TknSrvUserErrorRepository tokenWiseUserErrorDataRepository;

	@Autowired
	AppDataRepository appWiseDataRepository;

	@Autowired
	TknTotalTxnIntervalRepository tknTotalTimeIntervalTxnRepository;

	@Autowired
	ServerStatusRepository serverStatusRepository;

	@RequestMapping("/")
	public ModelAndView index(HttpServletRequest request, HttpSession session) throws CsvValidationException {

		ModelAndView model = new ModelAndView();
		model.setViewName("index");

		/**************** START SERVER STATUS CHECK WITH PORT *****************/

		List<ServerStatus> serveripsData = serverStatusRepository.findAll();
		model.addObject("serveripsData", serveripsData);

		/**************** END SERVER STATUS CHECK WITH PORT *****************/

		LocalDateTime currentDate = LocalDateTime.now();
		// DateTimeFormatter formatter = DateTimeFormatter.ISO_LOCAL_DATE_TIME;
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		String Date = currentDate.format(formatter);
		LocalTime time1 = LocalTime.of(0, 00);
		LocalTime time2 = LocalTime.of(0, 15);
		LocalTime currentTime = LocalTime.now();
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd-MM-yyyy");
		LocalDateTime now = LocalDateTime.now();

		Date TodayDate = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
		String formattedDate = dateFormat.format(TodayDate);
		String[] dateComponents = formattedDate.split("-");
		String dayValue = dateComponents[0];
		model.addObject("dayValue", dayValue);

		// Assuming your input date format is "yyyy-MM-dd HH:mm:ss"
		String inputDateFormat = "yyyy-MM-dd";
		String outputDateFormat = "dd-MM-yyyy"; // Desired output date format
		String RequestCurrentDate = dtf.format(now);

		if (currentTime.isAfter(time1) && currentTime.isBefore(time2)) {
			LocalDate today = LocalDate.now();
			LocalDate yesterday = today.minusDays(1);
			DateTimeFormatter formatter1 = DateTimeFormatter.ofPattern("yyyy-MM-dd");
			Date = yesterday.format(formatter1);
		}
		System.out.println("DATE: " + Date);
		/************************************************************************************************/
		List<String> ApplicationCode = applicationDetailsRepository.findAllApplicationCode();
		try {
			if (ApplicationCode != null && !ApplicationCode.isEmpty()) {
				System.out.println("ApplicationCode:" + ApplicationCode);
				model.addObject("ApplicationCode", ApplicationCode);
			}
		} catch (Exception e) {
			model.addObject("ApplicationCode", Collections.emptyList());
		}
		/********************************************************************************************/

		/************************************************************************************************/

		try {
			List<TknSrvReq> tokenWiseReqestData = tokenWiseReqestDataRepository
					.findAllByDateContainingOrderByTokenIdDesc(Date);

			if (tokenWiseReqestData != null && !tokenWiseReqestData.isEmpty()) {
				System.out.println("tokenWiseReqestData:" + tokenWiseReqestData);
				model.addObject("tokenWiseReqestData", tokenWiseReqestData);

				String getToken1Req = formatIndianCommaSeparated(tokenWiseReqestData.get(0).getToken1Req());
				String getToken2Req = formatIndianCommaSeparated(tokenWiseReqestData.get(0).getToken2Req());
				String getToken3Req = formatIndianCommaSeparated(tokenWiseReqestData.get(0).getToken3Req());
				String getToken4Req = formatIndianCommaSeparated(tokenWiseReqestData.get(0).getToken4Req());
				String getToken5Req = formatIndianCommaSeparated(tokenWiseReqestData.get(0).getToken5Req());
				String getToken6Req = formatIndianCommaSeparated(tokenWiseReqestData.get(0).getToken6Req());
				String getToken7Req = formatIndianCommaSeparated(tokenWiseReqestData.get(0).getToken7Req());
				String getToken8Req = formatIndianCommaSeparated(tokenWiseReqestData.get(0).getToken8Req());
				RequestCurrentDate = tokenWiseReqestData.get(0).getDate();
				model.addObject("getToken1Req", getToken1Req);
				model.addObject("getToken2Req", getToken2Req);
				model.addObject("getToken3Req", getToken3Req);
				model.addObject("getToken4Req", getToken4Req);
				model.addObject("getToken5Req", getToken5Req);
				model.addObject("getToken6Req", getToken6Req);
				model.addObject("getToken7Req", getToken7Req);
				model.addObject("getToken8Req", getToken8Req);

				/* update date in top of index page formte change get date from DB */
				SimpleDateFormat inputFormatterr = new SimpleDateFormat(inputDateFormat);
				Date datee = inputFormatterr.parse(RequestCurrentDate);
				SimpleDateFormat outputFormatterr = new SimpleDateFormat(outputDateFormat);
				String formattedDatee = outputFormatterr.format(datee);
				model.addObject("RequestCurrentDate", formattedDatee);
				/****************************************/
				long totalReq = tokenWiseReqestData.get(0).getToken1Req() + tokenWiseReqestData.get(0).getToken2Req()
						+ tokenWiseReqestData.get(0).getToken3Req() + tokenWiseReqestData.get(0).getToken4Req()
						+ tokenWiseReqestData.get(0).getToken5Req() + tokenWiseReqestData.get(0).getToken6Req()
						+ tokenWiseReqestData.get(0).getToken7Req() + tokenWiseReqestData.get(0).getToken8Req();
				model.addObject("totalReq", formatIndianCommaSeparated(totalReq));
			}
		} catch (Exception e) {
			model.addObject("tokenWiseReqestData", Collections.emptyList());

			model.addObject("RequestCurrentDate", RequestCurrentDate);
		}

		/************************************************************************************************/
		try {
			List<TknSrvResp> tokenWiseResponseData = tokenWiseResponseDataRepository
					.findAllByDateContainingOrderByTokenIdDesc(Date);
			if (tokenWiseResponseData != null && !tokenWiseResponseData.isEmpty()) {
				System.out.println("tokenWiseResponseData:" + tokenWiseResponseData);
				model.addObject("tokenWiseResponseData", tokenWiseResponseData);

				String getToken1Resp = formatIndianCommaSeparated(tokenWiseResponseData.get(0).getToken1Resp());
				String getToken2Resp = formatIndianCommaSeparated(tokenWiseResponseData.get(0).getToken2Resp());
				String getToken3Resp = formatIndianCommaSeparated(tokenWiseResponseData.get(0).getToken3Resp());
				String getToken4Resp = formatIndianCommaSeparated(tokenWiseResponseData.get(0).getToken4Resp());
				String getToken5Resp = formatIndianCommaSeparated(tokenWiseResponseData.get(0).getToken5Resp());
				String getToken6Resp = formatIndianCommaSeparated(tokenWiseResponseData.get(0).getToken6Resp());
				String getToken7Resp = formatIndianCommaSeparated(tokenWiseResponseData.get(0).getToken7Resp());
				String getToken8Resp = formatIndianCommaSeparated(tokenWiseResponseData.get(0).getToken8Resp());
				model.addObject("getToken1Resp", getToken1Resp);
				model.addObject("getToken2Resp", getToken2Resp);
				model.addObject("getToken3Resp", getToken3Resp);
				model.addObject("getToken4Resp", getToken4Resp);
				model.addObject("getToken5Resp", getToken5Resp);
				model.addObject("getToken6Resp", getToken6Resp);
				model.addObject("getToken7Resp", getToken7Resp);
				model.addObject("getToken8Resp", getToken8Resp);

			}
		} catch (Exception e) {
			model.addObject("tokenWiseResponseData", Collections.emptyList());
		}

		/*******************************************************************************************************************/

		/**********************
		 * 15 min request and response
		 ************************************************************************************************/

		try {
			List<TknSrvReq15Min> tokenWiseReqestData15Min = tokenWiseReqestDataRepository15Min
					.findAllByDateContainingOrderByTokenIdDesc(Date);
			if (tokenWiseReqestData15Min != null && !tokenWiseReqestData15Min.isEmpty()) {
				System.out.println("tokenWiseReqestData15Min:" + tokenWiseReqestData15Min);
				model.addObject("tokenWiseReqestData15Min", tokenWiseReqestData15Min);

				String getToken1Req15Min = formatIndianCommaSeparated(tokenWiseReqestData15Min.get(0).getToken1Req());
				String getToken2Req15Min = formatIndianCommaSeparated(tokenWiseReqestData15Min.get(0).getToken2Req());
				String getToken3Req15Min = formatIndianCommaSeparated(tokenWiseReqestData15Min.get(0).getToken3Req());
				String getToken4Req15Min = formatIndianCommaSeparated(tokenWiseReqestData15Min.get(0).getToken4Req());
				String getToken5Req15Min = formatIndianCommaSeparated(tokenWiseReqestData15Min.get(0).getToken5Req());
				String getToken6Req15Min = formatIndianCommaSeparated(tokenWiseReqestData15Min.get(0).getToken6Req());
				String getToken7Req15Min = formatIndianCommaSeparated(tokenWiseReqestData15Min.get(0).getToken7Req());
				String getToken8Req15Min = formatIndianCommaSeparated(tokenWiseReqestData15Min.get(0).getToken8Req());
				model.addObject("getToken1Req15Min", getToken1Req15Min);
				model.addObject("getToken2Req15Min", getToken2Req15Min);
				model.addObject("getToken3Req15Min", getToken3Req15Min);
				model.addObject("getToken4Req15Min", getToken4Req15Min);
				model.addObject("getToken5Req15Min", getToken5Req15Min);
				model.addObject("getToken6Req15Min", getToken6Req15Min);
				model.addObject("getToken7Req15Min", getToken7Req15Min);
				model.addObject("getToken8Req15Min", getToken8Req15Min);

				long totalReq15Min = tokenWiseReqestData15Min.get(0).getToken1Req()
						+ tokenWiseReqestData15Min.get(0).getToken2Req()
						+ tokenWiseReqestData15Min.get(0).getToken3Req()
						+ tokenWiseReqestData15Min.get(0).getToken4Req()
						+ tokenWiseReqestData15Min.get(0).getToken5Req()
						+ tokenWiseReqestData15Min.get(0).getToken6Req()
						+ tokenWiseReqestData15Min.get(0).getToken7Req()
						+ tokenWiseReqestData15Min.get(0).getToken8Req();
				model.addObject("totalReq15Min", formatIndianCommaSeparated(totalReq15Min));
			}
		} catch (Exception e) {
			model.addObject("tokenWiseReqestData15Min", Collections.emptyList());
		}

		/******************************************************************************************/
		try {
			List<TknSrvError15Min> tokenWiseErrorData15Min = tokenWiseErrorDataRepository15Min
					.findAllByDateContainingOrderByErrIdDesc(Date);
			System.out.println("tokenWiseErrorData15Min:" + tokenWiseErrorData15Min);
			if (tokenWiseErrorData15Min != null && !tokenWiseErrorData15Min.isEmpty()) {
				System.out.println("tokenWiseErrorData15Min:" + tokenWiseErrorData15Min);

				model.addObject("tokenWiseErrorData15Min", tokenWiseErrorData15Min);

				String getToken1Err15Min = formatIndianCommaSeparated(tokenWiseErrorData15Min.get(0).getToken1Err());
				String getToken2Err15Min = formatIndianCommaSeparated(tokenWiseErrorData15Min.get(0).getToken2Err());
				String getToken3Err15Min = formatIndianCommaSeparated(tokenWiseErrorData15Min.get(0).getToken3Err());
				String getToken4Err15Min = formatIndianCommaSeparated(tokenWiseErrorData15Min.get(0).getToken4Err());
				String getToken5Err15Min = formatIndianCommaSeparated(tokenWiseErrorData15Min.get(0).getToken5Err());
				String getToken6Err15Min = formatIndianCommaSeparated(tokenWiseErrorData15Min.get(0).getToken6Err());
				String getToken7Err15Min = formatIndianCommaSeparated(tokenWiseErrorData15Min.get(0).getToken7Err());
				String getToken8Err15Min = formatIndianCommaSeparated(tokenWiseErrorData15Min.get(0).getToken8Err());
				model.addObject("getToken1Err15Min", getToken1Err15Min);
				model.addObject("getToken2Err15Min", getToken2Err15Min);
				model.addObject("getToken3Err15Min", getToken3Err15Min);
				model.addObject("getToken4Err15Min", getToken4Err15Min);
				model.addObject("getToken5Err15Min", getToken5Err15Min);
				model.addObject("getToken6Err15Min", getToken6Err15Min);
				model.addObject("getToken7Err15Min", getToken7Err15Min);
				model.addObject("getToken8Err15Min", getToken8Err15Min);

				long totalADVError15Min = tokenWiseErrorData15Min.get(0).getToken1Err()
						+ tokenWiseErrorData15Min.get(0).getToken2Err() + tokenWiseErrorData15Min.get(0).getToken3Err()
						+ tokenWiseErrorData15Min.get(0).getToken4Err() + tokenWiseErrorData15Min.get(0).getToken5Err()
						+ tokenWiseErrorData15Min.get(0).getToken6Err() + tokenWiseErrorData15Min.get(0).getToken7Err()
						+ tokenWiseErrorData15Min.get(0).getToken8Err();
				model.addObject("totalADVError15Min", formatIndianCommaSeparated(totalADVError15Min));
			}
		} catch (Exception e) {
			model.addObject("tokenWiseErrorData15Min", Collections.emptyList());
		}
		/*****
		 * end 15 min request and response code
		 **********************************************************/

		try {
			List<TknSrvError> tokenWiseErrorData = tokenWiseErrorDataRepository
					.findAllByDateContainingOrderByErrIdDesc(Date);
			System.out.println("tokenWiseErrorData:" + tokenWiseErrorData);
			if (tokenWiseErrorData != null && !tokenWiseErrorData.isEmpty()) {
				System.out.println("tokenWiseErrorData:" + tokenWiseErrorData);

				model.addObject("tokenWiseErrorData", tokenWiseErrorData);

				String getToken1Err = formatIndianCommaSeparated(tokenWiseErrorData.get(0).getToken1Err());
				String getToken2Err = formatIndianCommaSeparated(tokenWiseErrorData.get(0).getToken2Err());
				String getToken3Err = formatIndianCommaSeparated(tokenWiseErrorData.get(0).getToken3Err());
				String getToken4Err = formatIndianCommaSeparated(tokenWiseErrorData.get(0).getToken4Err());
				String getToken5Err = formatIndianCommaSeparated(tokenWiseErrorData.get(0).getToken5Err());
				String getToken6Err = formatIndianCommaSeparated(tokenWiseErrorData.get(0).getToken6Err());
				String getToken7Err = formatIndianCommaSeparated(tokenWiseErrorData.get(0).getToken7Err());
				String getToken8Err = formatIndianCommaSeparated(tokenWiseErrorData.get(0).getToken8Err());
				model.addObject("getToken1Err", getToken1Err);
				model.addObject("getToken2Err", getToken2Err);
				model.addObject("getToken3Err", getToken3Err);
				model.addObject("getToken4Err", getToken4Err);
				model.addObject("getToken5Err", getToken5Err);
				model.addObject("getToken6Err", getToken6Err);
				model.addObject("getToken7Err", getToken7Err);
				model.addObject("getToken8Err", getToken8Err);
			}
		} catch (Exception e) {
			model.addObject("tokenWiseErrorData", Collections.emptyList());
		}
		/**************************************************************************************/
		/*******************************************************************************************************************/
		try {
			List<TknSrvUserError> tokenWiseUserErrorData = tokenWiseUserErrorDataRepository
					.findAllByDateContainingOrderByErrIdDesc(Date);
			System.out.println("tokenWiseUserErrorData:" + tokenWiseUserErrorData);
			if (tokenWiseUserErrorData != null && !tokenWiseUserErrorData.isEmpty()) {
				System.out.println("tokenWiseUserErrorData:" + tokenWiseUserErrorData);

				model.addObject("tokenWiseUserErrorData", tokenWiseUserErrorData);

				String getToken1UserErr = formatIndianCommaSeparated(tokenWiseUserErrorData.get(0).getToken1UserErr());
				String getToken2UserErr = formatIndianCommaSeparated(tokenWiseUserErrorData.get(0).getToken2UserErr());
				String getToken3UserErr = formatIndianCommaSeparated(tokenWiseUserErrorData.get(0).getToken3UserErr());
				String getToken4UserErr = formatIndianCommaSeparated(tokenWiseUserErrorData.get(0).getToken4UserErr());
				String getToken5UserErr = formatIndianCommaSeparated(tokenWiseUserErrorData.get(0).getToken5UserErr());
				String getToken6UserErr = formatIndianCommaSeparated(tokenWiseUserErrorData.get(0).getToken6UserErr());
				String getToken7UserErr = formatIndianCommaSeparated(tokenWiseUserErrorData.get(0).getToken7UserErr());
				String getToken8UserErr = formatIndianCommaSeparated(tokenWiseUserErrorData.get(0).getToken8UserErr());
				model.addObject("getToken1UserErr", getToken1UserErr);
				model.addObject("getToken2UserErr", getToken2UserErr);
				model.addObject("getToken3UserErr", getToken3UserErr);
				model.addObject("getToken4UserErr", getToken4UserErr);
				model.addObject("getToken5UserErr", getToken5UserErr);
				model.addObject("getToken6UserErr", getToken6UserErr);
				model.addObject("getToken7UserErr", getToken7UserErr);
				model.addObject("getToken8UserErr", getToken8UserErr);
			}
		} catch (Exception e) {
			model.addObject("tokenWiseUserErrorData", Collections.emptyList());
		}
		/**************************************************************************************/

		/*******************************************************************************************************************/
		try {
			TknSrvErrorCategories tknSrvErrorCategoriesData = tknSrvErrorCategoriesRepository
					.findFirstByDateContainingOrderByDateDesc(Date);
			System.out.println("tknSrvErrorCategoriesData:" + tknSrvErrorCategoriesData);
			if (tknSrvErrorCategoriesData != null) {
				System.out.println("tknSrvErrorCategoriesData:" + tknSrvErrorCategoriesData);

				model.addObject("tknSrvErrorCategoriesData", tknSrvErrorCategoriesData);

				String getAdvError = formatIndianCommaSeparated(Long.valueOf(tknSrvErrorCategoriesData.getAdvError()));

				System.out.println("getAdvError::::::::::" + getAdvError);
				String getExpiredjwttoken = formatIndianCommaSeparated(
						Long.valueOf(tknSrvErrorCategoriesData.getExpiredjwttoken()));
				String getIncorrectusernameorpassword = formatIndianCommaSeparated(
						Long.valueOf(tknSrvErrorCategoriesData.getIncorrectusernameorpassword()));
				String getInvalidaadhaarnumber = formatIndianCommaSeparated(
						Long.valueOf(tknSrvErrorCategoriesData.getInvalidaadhaarnumber()));
				String getInvalidauthkey = formatIndianCommaSeparated(
						Long.valueOf(tknSrvErrorCategoriesData.getInvalidauthkey()));
				String getInvalidinputdata = formatIndianCommaSeparated(
						Long.valueOf(tknSrvErrorCategoriesData.getInvalidinputdata()));
				String getInvalidjwttoken = formatIndianCommaSeparated(
						Long.valueOf(tknSrvErrorCategoriesData.getInvalidjwttoken()));
				String getIpaddressisnotwhitelisted = formatIndianCommaSeparated(
						Long.valueOf(tknSrvErrorCategoriesData.getIpaddressisnotwhitelisted()));
				String getInvalidjwtsignature = formatIndianCommaSeparated(
						Long.valueOf(tknSrvErrorCategoriesData.getInvalidjwtsignature()));
				String getTokennotexistinvault = formatIndianCommaSeparated(
						Long.valueOf(tknSrvErrorCategoriesData.getTokennotexistinvault()));
				String getFailedvalidatejwttoken = formatIndianCommaSeparated(
						Long.valueOf(tknSrvErrorCategoriesData.getFailedvalidatejwttoken()));
				String getFailedtoprocessbulktokenreq = formatIndianCommaSeparated(
						Long.valueOf(tknSrvErrorCategoriesData.getFailedtoprocessbulktokenreq()));
				model.addObject("getAdvError", getAdvError);
				model.addObject("getExpiredjwttoken", getExpiredjwttoken);
				model.addObject("getIncorrectusernameorpassword", getIncorrectusernameorpassword);
				model.addObject("getInvalidaadhaarnumber", getInvalidaadhaarnumber);
				model.addObject("getInvalidauthkey", getInvalidauthkey);
				model.addObject("getInvalidinputdata", getInvalidinputdata);
				model.addObject("getInvalidjwttoken", getInvalidjwttoken);
				model.addObject("getIpaddressisnotwhitelisted", getIpaddressisnotwhitelisted);
				model.addObject("getInvalidjwtsignature", getInvalidjwtsignature);
				model.addObject("getTokennotexistinvault", getTokennotexistinvault);
				model.addObject("getFailedvalidatejwttoken", getFailedvalidatejwttoken);
				model.addObject("getFailedtoprocessbulktokenreq", getFailedtoprocessbulktokenreq);
			}
		} catch (Exception e) {
			model.addObject("tknSrvErrorCategoriesData", Collections.emptyList());
		}
		/**************************************************************************************/
		try {
			List<String> totalTxnList1 = new ArrayList<String>();
			List<String> totalTxnList2 = new ArrayList<String>();
			List<String> totalTxnList3 = new ArrayList<String>();
			List<TknTotalTxnInterval> tknTotalTimeIntervalTxn = tknTotalTimeIntervalTxnRepository
					.findAllByDateContainingOrderByTimeOutAsc(Date);
			List<TknTotalTxnInterval> totalTxnList = tknTotalTimeIntervalTxnRepository
					.findAllByDateContainingOrderByDateDesc(Date);
//			TknTotalTimeIntervalTxn newToknData = tknTotalTimeIntervalTxnRepository
//					.findFirstByDateContainingOrderByDateDesc(Date);

			// System.out.println("newToknData:"+newToknData.getTimeIntervalTotalTxnTill());

			System.out.println("tknTotalTimeIntervalTxn:" + tknTotalTimeIntervalTxn);
			if (tknTotalTimeIntervalTxn != null && !tknTotalTimeIntervalTxn.isEmpty()) {
				System.out.println("tknTotalTimeIntervalTxn:" + tknTotalTimeIntervalTxn);

				for (TknTotalTxnInterval tknTotalTimeInterval : tknTotalTimeIntervalTxn) {

					totalTxnList1.add(tknTotalTimeInterval.getTxnPerInterval());
					totalTxnList2.add(tknTotalTimeInterval.getTotalTxnPerInterval());
					String tknTotalTimeIntervalTime = tknTotalTimeInterval.getTimeIn();

					int index = tknTotalTimeIntervalTime.indexOf("T") + 1;
					String value = tknTotalTimeIntervalTime.substring(index, index + 5);
					totalTxnList3.add(value);
				}
				long TotalTXN1 = 0 ;
				for (TknTotalTxnInterval totalTxn : totalTxnList) {
					String totalTXN = totalTxn.getTotalTxnPerInterval();
					TotalTXN1 = (Long.parseLong(totalTXN));

				}
				model.addObject("TotalTXN", TotalTXN1);
				System.out.println("totalTxnList1:" + totalTxnList1);
				model.addObject("getTimeIntervalTxn", totalTxnList1);
				model.addObject("getTimeIntervalTotalTxnTill", totalTxnList2);
				model.addObject("getTimeInterval", totalTxnList3);
				model.addObject("tknTotalTimeIntervalTxn", tknTotalTimeIntervalTxn);
				model.addObject("totalTxnList", totalTxnList);
			}
		} catch (Exception e) {
			model.addObject("TotalTXN", Collections.emptyList());
			model.addObject("tknTotalTimeIntervalTxn", Collections.emptyList());
			model.addObject("totalTxn", Collections.emptyList());

		}
		/*****************************************************************************************************************************/

		List<AppData> aapdata = new ArrayList<>();
		List<String> newAppName = new ArrayList<>();

		try {
			Integer totalnewtokenforcompair = 0;
			for (String applicationCode : ApplicationCode) {
				// Do something with each applicationDetails object
				System.out.println("application Code: " + applicationCode.toString());

				if (applicationCode.equals("ADVTESTPROD")) {

				} else {

					HashSet<AppData> appWiseData = appWiseDataRepository
							.findFirstDistinctByApplicationCodeAndDateContainingOrderByTimeInDesc(applicationCode,
									Date);

					aapdata.addAll(appWiseData); // add the values to the ArrayList
					System.out.println("appWiseData:" + appWiseData.toString());

					/*****************START**** adding data for sum of newtoken *******************/
					
					for (AppData tokendata : aapdata) {
						Integer newtokenData = Integer.parseInt(tokendata.getTokenTokensIssued());
						totalnewtokenforcompair = totalnewtokenforcompair + newtokenData;
						
						System.out.println("totalnewtokenforcompair::::::"+totalnewtokenforcompair);
					}
					/****************END**** adding data for sum of newtoken *******************/
					
					List<AppList> appName = applicationDetailsRepository
							.findApplicationNameByApplicationCode(applicationCode);
					for (AppList applName : appName) {
						String appliName = applName.getApplicationName();
						newAppName.add(appliName);

						System.out.println("appliName: " + appliName);
					}
				}

			}
			System.out.println("newAppName: " + newAppName);
			model.addObject("newAppName", newAppName);

			model.addObject("totalnewtokenforcompair", totalnewtokenforcompair);
			AppData appData = appWiseDataRepository.findFirstByDateContainingOrderByTimeInDesc(Date);
			String[] timeOutParts = appData.getTimeOut().split(":"); // split the time string by colon separator
			String hourOut = timeOutParts[0];
			String minuteOut = timeOutParts[1];

			String[] timeInParts = appData.getTimeIn().split(":"); // split the time string by colon separator
			String hourIn = timeInParts[0];
			String minuteIn = timeInParts[1];

			model.addObject("appDataInTime", hourIn + ":" + minuteIn);
			model.addObject("appDataOutTime", hourOut + ":" + minuteOut);
			model.addObject("appWiseData", aapdata);
			model.addObject("CurrentDate", dtf.format(now));
			System.out.println("aapdsssssssssata:" + aapdata.get(2).getCheckUID());
		}

		catch (Exception e) {
			model.addObject("CurrentDate", dtf.format(now));
			model.addObject("appWiseData", Collections.emptyList());
		}

		/****************************************************************
		 * MONTHLY REPORT
		 ********************************************/

		List<String> newToknList = new ArrayList<String>();
		List<String> ReqList = new ArrayList<String>();
		List<String> dateList = new ArrayList<String>();
		List<String> ReqdateList = new ArrayList<String>();
		try {
			String datepicker = request.getParameter("datepicker");
			model.addObject("datepickerSession", datepicker);
			model.addObject("datepicker", datepicker);
			session.setAttribute("datepickerSession", datepicker);
			System.out.println("getParameter datepicker:" + datepicker);
			String fromDate;
			String toDate;
			String inputFormatt = "dd/MM/yyyy";
			String outputFormatt = "yyyy-MM-dd";

			SimpleDateFormat inputFormatterr = new SimpleDateFormat(inputFormatt);
			SimpleDateFormat outputFormatterr = new SimpleDateFormat(outputFormatt);
			if (datepicker != null) {
				String[] pickDate = datepicker.split("-");
				System.out.println("pickDate: " + pickDate);
				System.out.println("datepicker: " + datepicker);
				fromDate = pickDate[0];
				toDate = pickDate[1];

				System.out.println("fromDate: " + fromDate + "toDate: " + toDate);

				try {
					Date FROMDATE = inputFormatterr.parse(fromDate);
					fromDate = outputFormatterr.format(FROMDATE);
					Date TODATE = inputFormatterr.parse(toDate);
					toDate = outputFormatterr.format(TODATE);
				} catch (ParseException e) {
					e.printStackTrace();
				}
			} else {
				LocalDate currentDate1 = LocalDate.now();

				// Get the first date of the current month
				LocalDate firstDateOfMonth = currentDate1.withDayOfMonth(1);

				// Get the last date of the current month
				LocalDate lastDateOfMonth = currentDate1.withDayOfMonth(currentDate1.lengthOfMonth());

				// Format the dates as "yyyy-MM-dd"
				DateTimeFormatter formatter1 = DateTimeFormatter.ofPattern("yyyy-MM-dd");
				fromDate = firstDateOfMonth.format(formatter1);
				toDate = lastDateOfMonth.format(formatter1);
			}
			System.out.println("fromDate: " + fromDate);
			System.out.println("toDate: " + toDate);

			List<String> tknTotalTimeIntervalTxn = tknTotalTimeIntervalTxnRepository
					.findLastByDateBetweenOrderByTimeInDescDateDesc(fromDate, toDate);
			List<String> findLastByDate = tknTotalTimeIntervalTxnRepository.findLastByDat(fromDate, toDate);
			// .findLastTotalTxnPerIntervalByDateBetweenOrderByTimeInDescAndDateDesc(formattedFirstDateOfMonth,
			// formattedCurrentDate);
			List<String> requestData = tokenWiseReqestDataRepository.sumByDateBetween(fromDate, toDate);
			List<String> findDatesBetween = tokenWiseReqestDataRepository.findDatesBetween(fromDate, toDate);
			int sumnumber = 0;
			for (String data : tknTotalTimeIntervalTxn) {
				newToknList.add(data);

			}
			for (String addnumber : newToknList) {
				sumnumber += Integer.parseInt(addnumber);
			}
			for (String findLast : findLastByDate) {
				SimpleDateFormat inputFormat = new SimpleDateFormat("yyyy-MM-dd");
				SimpleDateFormat outputFormat = new SimpleDateFormat("d MMM");
				try {
					// Parse the input date
					Date date = inputFormat.parse(findLast);

					// Format the date to the desired output format
					String outputDate = outputFormat.format(date);
					String modifiedDate = outputDate.replaceAll(" ", "");
					dateList.add(modifiedDate);
					System.out.println("Output Date: " + outputDate);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}

			int sumRequnumber = 0;
			for (String requestDatadata : requestData) {
				ReqList.add(requestDatadata);

			}
			for (String addReqnumber : ReqList) {
				sumRequnumber += Integer.parseInt(addReqnumber);
			}
			for (String DatesBetween : findDatesBetween) {
				SimpleDateFormat inputFormat = new SimpleDateFormat("yyyy-MM-dd");
				SimpleDateFormat outputFormat = new SimpleDateFormat("d MMM");
				try {
					// Parse the input date
					Date Reqdate = inputFormat.parse(DatesBetween);

					// Format the date to the desired output format
					String ReqoutputDate = outputFormat.format(Reqdate);
					String ReqmodifiedDate = ReqoutputDate.replaceAll(" ", "");
					ReqdateList.add(ReqmodifiedDate);
					System.out.println("Output Date: " + ReqoutputDate);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}

			model.addObject("sumnumber", sumnumber);
			model.addObject("newToknList", newToknList);
			model.addObject("dateList", dateList);

			model.addObject("sumRequnumber", sumRequnumber);
			model.addObject("ReqList", ReqList);
			model.addObject("ReqdateList", ReqdateList);
			System.out.println("sumRequnumber: " + sumRequnumber);
			System.out.println("ReqList: " + ReqList);
			System.out.println("ReqdateList: " + ReqdateList);
			System.out.println("newToknList :" + newToknList + "dateList:  " + dateList);

			/*************** START PERIODIC REPORT FOR DETOKEN REQUEST **************/

			List<String> TokenAlreadyExiList = new ArrayList<String>();
			List<String> DetknRespList = new ArrayList<String>();
			List<String> getDateList = new ArrayList<String>();

			List<String> getDateWiseTokenAlreadyExi = appWiseDataRepository.getDateWiseTokenAlreadyExi(fromDate,
					toDate);
			long SumTokenAlreadyExi = appWiseDataRepository.getTotalSumTokenAlreadyExi(fromDate, toDate);

			for (String TokenAlreadyExidata : getDateWiseTokenAlreadyExi) {
				TokenAlreadyExiList.add(TokenAlreadyExidata);

			}

			List<String> getDateWiseDetokenResponseList = appWiseDataRepository.getDateWiseDetokenResponse(fromDate,
					toDate);

			long sumRespnumberDEtoken = appWiseDataRepository.getTotalSumDetokenResponse(fromDate, toDate);

			for (String detokRespdata : getDateWiseDetokenResponseList) {
				DetknRespList.add(detokRespdata);

			}

			List<String> getDate = appWiseDataRepository.getDate(fromDate, toDate);
			for (String getDateBetween : getDate) {
				SimpleDateFormat inputFormat1 = new SimpleDateFormat("yyyy-MM-dd");
				SimpleDateFormat outputFormat1 = new SimpleDateFormat("d MMM");
				try {
					// Parse the input date
					Date getAllDate = inputFormat1.parse(getDateBetween);

					// Format the date to the desired output format
					String getDataDate = outputFormat1.format(getAllDate);
					String ReqmodifiedDate = getDataDate.replaceAll(" ", "");
					getDateList.add(ReqmodifiedDate);
					System.out.println("getDataDate: " + getDataDate);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}

			model.addObject("TokenAlreadyExiList", TokenAlreadyExiList);
			model.addObject("SumTokenAlreadyExi", SumTokenAlreadyExi);
			model.addObject("DetknRespList", DetknRespList);
			model.addObject("sumRespnumberDEtoken", sumRespnumberDEtoken);
			model.addObject("getDateList", getDateList);
			System.err.println("getDateList::::::" + getDateList);
			System.err.println("DetknRespList::::::" + DetknRespList);
			System.err.println("sumRequnumberDEtoken::::::" + sumRespnumberDEtoken);

			/*************** END PERIODIC REPORT FOR DETOKEN REQUEST **************/

			model.setViewName("index");
		}

		catch (Exception e) {

			System.out.println("Exception in Monthly report :" + e);

			model.addObject("sumnumber", Collections.emptyList());
			model.addObject("newToknList", Collections.emptyList());
			model.addObject("sumRequnumber", Collections.emptyList());
			model.addObject("ReqList", Collections.emptyList());
			model.addObject("dateList", Collections.emptyList());
		}

		return model;
	}

	/*
	 * @GetMapping("/updateData") public ResponseEntity<List<ServerStatus>>
	 * getServerStatus() { List<ServerStatus> serveripsData =
	 * serverStatusRepository.findAll(); return ResponseEntity.ok(serveripsData); }
	 */
	/***********************************************************************************/

	public static String formatIndianCommaSeparated(long count) {
		// remove sign if present
		String raw = String.valueOf(Math.abs(count));
		int numDigits = raw.length();
		StringBuilder sb = new StringBuilder(raw);
		// Reverse the string to start from right most digits
		sb = sb.reverse();
		// Counter to keep track of number of commas placed
		int commas = 0;
		for (int i = 0; i < numDigits; i++) {
			// Insert a comma if i is in the range [3, 5, 7, 9, ...)
			if (i % 2 == 1 && i != 1) {
				sb.insert(i + commas, ",");
				commas++;
			}
		}
		// Reverse the string back to get original number
		String sign = (count < 0) ? "-" : "";
		return sign + sb.reverse().toString();
	}

	public String removeDate(String str) {

		return str;
	}
}
