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

public class UploadAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 4746811755252333192L;
	private List<File> upload;
	private List<String> uploadContentType;
	private List<String> uploadFileName;
	private String result;

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

		uploadFileName = new ArrayList<String>();
		// 循环将批量上传的文件保存到本地

		try {
			if (upload.isEmpty()) {
				return "upload_success";
			} else {
				for (int i = 0; i < upload.size(); i++) {
					String temp = null;

					temp = String.valueOf(java.util.UUID.randomUUID()) + "_.jpg";

					uploadFileName.add(path + temp);
					FileUtils.copyFile(upload.get(i), new File(uploadFileName.get(i)));
					System.out.println(upload.get(i) + "    " + uploadFileName.get(i));
					if (upload.get(0).exists()) {
						me.setPhoto("/account/" + myrole + uid + "/images/" + temp);
					} 
					if (upload.get(1).exists()){
						me.setWeixin("/account/" + myrole + uid + "/images/" + temp);
					}
				}
				result = "上传成功";
				return "upload_success";

			}

		} catch (Exception e) {
			e.printStackTrace();
			result = "上传错误";
			return "upload_success";
		}

	}

}