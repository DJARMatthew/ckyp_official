package action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.Map;

import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import entity.Users;

@SuppressWarnings("serial")
public class FileUpload extends ActionSupport {

	private File file;
	private String fileFileName;
	private String fileFileContentType;
	private String type;
	private String message = "你已成功上传文件";
	private String uploadtype;
	private String useruid;

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public File getFile() {
		return file;
	}

	public void setFile(File file) {
		this.file = file;
	}

	public String getFileFileName() {
		return fileFileName;
	}

	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}

	public String getFileFileContentType() {
		return fileFileContentType;
	}

	public void setFileFileContentType(String fileFileContentType) {
		this.fileFileContentType = fileFileContentType;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getUploadtype() {
		return uploadtype;
	}

	public void setUploadtype(String uploadtype) {
		this.uploadtype = uploadtype;
	}

	public String getUseruid() {
		return useruid;
	}

	public void setUseruid(String useruid) {
		this.useruid = useruid;
	}

	public String mypic() throws Exception {
		Map<String, Object> session = ActionContext.getContext().getSession();
		Users accountinfo = (Users) session.get("accountinfo");
		String uploadtype = this.getUploadtype();
		String useruid = this.getUseruid();
		String type = (String) this.getType();
		File f = this.getFile();
		String fileFileName=this.getFileFileName();
		if ("profile".equals(uploadtype)) {
			uploadtype = "/account/";
			useruid = String.valueOf(accountinfo.getUid());
			String path = ServletActionContext.getServletContext().getRealPath(uploadtype + useruid + "/assets/");
			try {
				
				File fp = new File(path);
				if (!fp.exists()) {
					fp.mkdirs();
				}
				if (!fileFileName.endsWith(".jpg")) {
					message = "对不起,你上传的文件格式不允许!!!";
					return ERROR;
				}
				
				FileInputStream inputStream = new FileInputStream(f);
				FileOutputStream outputStream = new FileOutputStream(path + type + fileFileName);
				byte[] buf = new byte[1024];
				int length = 0;
				while ((length = inputStream.read(buf)) != -1) {
					outputStream.write(buf, 0, length);
				}

				String filepath = uploadtype + useruid + "/assets/" + type + fileFileName;

				if ("weixin".equals(type)) {
					accountinfo.setWeixin(filepath);
				}
				if ("photo".equals(type)) {
					accountinfo.setPhoto(filepath);
				}

				inputStream.close();
				outputStream.flush();
				outputStream.close();

			} catch (Exception e) {
				e.printStackTrace();
				message = "对不起,文件上传失败了!!!!";
			}
			return SUCCESS;
		} else if ("adduser".equals(uploadtype)) {
			uploadtype = "/account/";
			String path = ServletActionContext.getServletContext().getRealPath(uploadtype + useruid + "/assets/");
			try {
				
				File fp = new File(path);
				if (!fp.exists()) {
					fp.mkdirs();
				}
				if (!fileFileName.endsWith(".jpg")) {
					message = "对不起,你上传的文件格式不允许!!!";
					return ERROR;
				}
				FileInputStream inputStream = new FileInputStream(f);
				FileOutputStream outputStream = new FileOutputStream(path + type + fileFileName);
				byte[] buf = new byte[1024];
				int length = 0;
				while ((length = inputStream.read(buf)) != -1) {
					outputStream.write(buf, 0, length);
				}

				String filepath = uploadtype + useruid + "/assets/" + type + fileFileName;

				if ("weixin".equals(type)) {
					session.put("adduserweixin", filepath);
				}
				if ("photo".equals(type)) {
					session.put("adduserphoto", filepath);
				}

				inputStream.close();
				outputStream.flush();
				outputStream.close();

			} catch (Exception e) {
				e.printStackTrace();
				message = "对不起,文件上传失败了!!!!";
			}
			return SUCCESS;
		} else if ("edituser".equals(uploadtype)) {
			uploadtype = "/account/";
			String path = ServletActionContext.getServletContext().getRealPath(uploadtype + useruid + "/assets/");
			try {
				
				File fp = new File(path);
				if (!fp.exists()) {
					fp.mkdirs();
				}
				if (!fileFileName.endsWith(".jpg")) {
					message = "对不起,你上传的文件格式不允许!!!";
					return ERROR;
				}
				FileInputStream inputStream = new FileInputStream(f);
				FileOutputStream outputStream = new FileOutputStream(path + type + fileFileName);
				byte[] buf = new byte[1024];
				int length = 0;
				while ((length = inputStream.read(buf)) != -1) {
					outputStream.write(buf, 0, length);
				}

				String filepath = uploadtype + useruid + "/assets/" + type + fileFileName;

				if ("weixin".equals(type)) {
					session.put("edituserweixin",filepath);
				}
				if ("photo".equals(type)) {
					session.put("edituserphoto",filepath);
				}

				inputStream.close();
				outputStream.flush();
				outputStream.close();

			} catch (Exception e) {
				e.printStackTrace();
				message = "对不起,文件上传失败了!!!!";
			}
			return SUCCESS;
		} else {
			uploadtype = "/front_end/";
			String path = ServletActionContext.getServletContext().getRealPath(uploadtype + "/images/@stock");
			try {
				
				File fp = new File(path);
				if (!fp.exists()) {
					fp.mkdirs();
				}
				
				FileInputStream inputStream = new FileInputStream(f);
				FileOutputStream outputStream = new FileOutputStream(path +fileFileName);
				byte[] buf = new byte[1024];
				int length = 0;
				while ((length = inputStream.read(buf)) != -1) {
					outputStream.write(buf, 0, length);
				}

				String filepath = uploadtype + "/images/@stock/"+fileFileName;
				
				//文件保存

				inputStream.close();
				outputStream.flush();
				outputStream.close();

			} catch (Exception e) {
				e.printStackTrace();
				message = "对不起,文件上传失败了!!!!";
			}
			return SUCCESS;
		}

	}

}