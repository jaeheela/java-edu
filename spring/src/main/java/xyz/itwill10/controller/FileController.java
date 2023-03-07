package xyz.itwill10.controller;

import java.io.File;
import java.io.IOException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Controller
public class FileController {
	@RequestMapping(value = "/upload", method = RequestMethod.GET)
	public String upload() {
		return "file/upload_form";
	}
	
	//요청 처리 메소드에 MultipartHttpServletRequest 인터페이스로 매개변수를 선언하면 Front
	//Controller에 의해 MultipartHttpServletRequest 객체를 제공받아 사용 가능
	//MultipartHttpServletRequest 객체 : [multipart/form-data] 형식으로 전달된 값 또는 파일을
	//처리하기 위한 객체
	@RequestMapping(value = "/upload", method = RequestMethod.POST)
	public String upload(MultipartHttpServletRequest request) throws IOException {
		//MultipartHttpServletRequest.getParameter(String name) : [multipart/form-data] 
		//형식으로 전달된 값을 문자열(String 객체)로 반환하는 메소드
		String username=request.getParameter("username");
		
		//MultipartHttpServletRequest.getFile(String name) : [multipart/form-data] 형식으로 
		//전달된 파일을 MultipartFile 객체로 반환하는 메소드
		//MultipartFile 객체 : 사용자로부터 입력되어 전달된 파일정보를 저장하기 위한 객체
		MultipartFile filename=request.getFile("filename");
	
		//전달받은 파일에 대한 검증 작업
		//MultipartFile.isEmpty() : MultipartFile 객체에 파일정보가 없는 경우 [false]를 반환하고 
		//파일정보가 있는 경우 [true]를 반환하는 메소드
		if(filename.isEmpty()) {
			return "file/upload_fail";
		}
		
		//MultipartFile.getContentType() :  MultipartFile 객체에 저장된 파일의 형식(MimeType)를 반환하는 메소드 
		System.out.println("파일 형식 = "+filename.getContentType());
		//MultipartFile.getBytes() : MultipartFile 객체에 저장된 파일정보를 byte 배열로 반환하는 메소드
		System.out.println("파일 크기 = "+filename.getBytes().length);
	
		//전달파일을 저장하기 위한 서버 디렉토리의 시스템 경로를 반환받아 저장
		String uploadDirectory=request.getServletContext().getRealPath("/resources/images/upload");
		System.out.println("uploadDirectory = "+uploadDirectory);
		
		//전달파일을 서버 디렉토리에 저장하기 위한 File 객체 생성
		//File 객체 : 시스템에 존재하는 파일정보를 저장하기 위한 객체
		//MultipartFile.getOriginalFilename() : 전달파일의 파일명을 반환하는 메소드
		File file=new File(uploadDirectory, filename.getOriginalFilename());
		
		//MultipartFile.transferTo(File file) : MultipartFile 객체에 저장된 파일정보를
		//File 객체에 저장된 파일정보로 전달하여 저장하는 메소드 - 업로드 처리 메소드
		filename.transferTo(file);
		
		request.setAttribute("username", username);
		request.setAttribute("filename", filename.getOriginalFilename());
		
		return "file/upload_ok";
	}
}











