package funfun.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;

import funfun.service.FileUploadService;


@Controller
public class FileUploadCtrl {
	
	
	@Value("${upload}")
	private String upload; // 저장위치
	
	@Value("${tmpUpload}")
	private String tmpUpload; // 임시저장위치
	//파일업로드페이지
	@RequestMapping("/test1.do")
	public String test1() {
		
		System.out.println("파일업로드테스트시작");
			
		return "WEB-INF\\views\\main\\fileUploadTest.jsp";
	}
	
	//파일업로드처리
	@RequestMapping("/fileUpload.do")
	public String fileUpload(@RequestParam("myfile") MultipartFile[] myfiles) {
		
		System.out.println("파일업로드처리");
		System.out.println(upload);
		System.out.println(tmpUpload);
		upload(myfiles[0]);
		
		return "";
	}
	
	private void upload(MultipartFile file) {
		String fileName=file.getOriginalFilename();
		if(fileName!=null&&!fileName.equals("")) {
			try {
				File tmpFile = new File(tmpUpload+fileName);
				//insertRepo(fileName); db에 파일이름 넣는 것
				
				file.transferTo(tmpFile);
				File orgFile = new File(upload+fileName);
				System.out.println(upload+fileName);
				Files.copy(tmpFile.toPath(), orgFile.toPath());
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}
