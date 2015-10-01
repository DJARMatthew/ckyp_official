package action;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
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
	private List<String> filePath;

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

	public List<String> getFilePath() {
		return filePath;
	}

	public void setFilePath(List<String> filePath) {
		this.filePath = filePath;
	}

	Map<String, Object> session = ActionContext.getContext().getSession();

	// 用户上传自己的头像、微信图片
	public String mypic() throws Exception {
		Users me = (Users) session.get("accountinfo");
		String myrole = me.getRole();
		String uid = String.valueOf(me.getUid());

		String path = ServletActionContext.getServletContext().getRealPath("/account/" + myrole + uid + "/images/");
		File file = new File(path);

		if (!file.exists()) {
			file.mkdir();
		}
		filePath = new ArrayList<String>();
		// 循环将批量上传的文件保存到本地
		for (int i = 0; i < upload.size(); i++) {
			String temp = null;

			temp = String.valueOf(java.util.UUID.randomUUID()) + "_.jpg";

			filePath.add(path + temp);
			FileUtils.copyFile(upload.get(i), new File(file, temp));
			

		}
		System.out.println(filePath);
		result = "上传成功";
		return "upload_success";

	}

}
