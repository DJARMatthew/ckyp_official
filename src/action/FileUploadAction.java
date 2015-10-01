package action;

import java.io.File;
import java.util.List;
import java.util.Map;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.hibernate.Session;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import entity.Users;

public class FileUploadAction extends ActionSupport {

	/**
	 * 此方法包括各种方式（覆盖源文件或不覆盖） & 各种用户类型的上传和下载
	 */
	private static final long serialVersionUID = 831531886763295848L;

	// 建立实体属性
	private List<File> upload;
	private List<String> uploadContentType;
	private List<String> uploadFileName;
	private String result;

	// 实体的方法
	public List<File> getUpload() {
		return upload;
	}

	public void setUpload(List<File> upload) {
		this.upload = upload;
	}

	public List<String> getUploadContentType() {
		return uploadContentType;
	}

	public void setUploadContentType(List<String> uploadContentType) {
		this.uploadContentType = uploadContentType;
	}

	public List<String> getUploadFileName() {
		return uploadFileName;
	}

	public void setUploadFileName(List<String> uploadFileName) {
		this.uploadFileName = uploadFileName;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}
	
	
	
	Map me = ActionContext.getContext().getSession();
	
	// 用户上传自己的头像、微信（类型&文件名一致算一个文件）
	public String mypic() throws Exception {

		String path = ServletActionContext.getServletContext().getRealPath("/account/profilepic/");
		File file = new File(path);

		if (!file.exists()) {
			file.mkdir();
		}

		// 循环将批量上传的文件保存到本地
		for (int i = 0; i < upload.size(); i++) {
			FileUtils.copyFile(upload.get(i), new File(file, uploadFileName.get(i)));
		}
		result = "上传成功";
		return "upload_success";
	}

}
