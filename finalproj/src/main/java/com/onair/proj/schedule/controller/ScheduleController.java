package com.onair.proj.schedule.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.xml.parsers.ParserConfigurationException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.xml.sax.SAXException;

import com.onair.proj.airport.model.AirportService;
import com.onair.proj.airport.model.AirportVO;
import com.onair.proj.common.ConstUtil;
import com.onair.proj.common.PaginationInfo;
import com.onair.proj.common.ScheduleSearchVO;
import com.onair.proj.schedule.model.ScheduleInfoExplorer;
import com.onair.proj.schedule.model.ScheduleService;
import com.onair.proj.schedule.model.ScheduleVO;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class ScheduleController {
	
	 private static final Logger logger
	 =LoggerFactory.getLogger(ScheduleController.class);
	 
	 private final AirportService airportService;
	 
	 private final ScheduleService scheduleService;


	//검색시 데이터가 없으면 db에 추가하도록 처리한다.
    @RequestMapping("/booking/flight-round-trip.do") 
    public void searchInfo(HttpServletRequest req, Model model, @ModelAttribute ScheduleSearchVO searchVo) throws ParserConfigurationException, SAXException, IOException {
    	String arr=req.getParameter("arrival");
    	String dep=req.getParameter("departure");
    	String date=req.getParameter("datepicker");
    	String upDown1=req.getParameter("numberUpDown1");
    	String upDown2=req.getParameter("numberUpDown2");
    	logger.info("파싱 스타트 체크");
        ScheduleInfoExplorer apiExplorer = new ScheduleInfoExplorer();
        
        //파싱하여 리턴한 데이터 값들을 list에 담아주기 위해 사용
        List<ScheduleVO> list = apiExplorer.parsingData(arr, dep, date); //뷰페이지에서 입력값 받아와야 함 선택출발공항, 선택도착공항, 선택날짜

        //List에 담겨있는 정보들을 db에 넣기 위해서 사용
        for (ScheduleVO vo : list) {
        	scheduleService.insertScheduleApi(vo);
        }
        
    	//페이징에 필요한 변수 셋팅
        int RECORD_COUNT=10;
  		PaginationInfo pagingInfo=new PaginationInfo();
  		pagingInfo.setBlockSize(ConstUtil.BLOCKSIZE);
  		pagingInfo.setCurrentPage(searchVo.getCurrentPage());
  		pagingInfo.setRecordCountPerPage(RECORD_COUNT);

  		searchVo.setRecordCountPerPage(RECORD_COUNT);
  		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
  		
  		int totalRecord=scheduleService.selectTotalRecord(searchVo);
		pagingInfo.setTotalRecord(totalRecord);
		
        //
        List<AirportVO> list2 = airportService.selectAllAirport();

        //
        model.addAttribute("selectAllScheduleApi",scheduleService.selectAllScheduleApi(searchVo));
        model.addAttribute("selectAllAirport",list2);
		model.addAttribute("pagingInfo",pagingInfo);

        logger.info("파싱 정보 입력끝");
    }
    
    

}
