package funfun.util;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.multipart.MultipartFile;

public class Uploader {
	
	@Value("${upload}")
	private String upload; // 저장위치
	
	@Value("${tmpUpload}")
	private String tmpUpload; // 임시저장위치
	
	private String upload(MultipartFile file) {
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
			String result="/z01/"+fileName;
			return result;
		} else {
			return "";
		}
		
	}
}
