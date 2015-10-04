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
	
    Map<String, Object> session = ActionContext.getContext().getSession();
    Users accountinfo = (Users) session.get("accountinfo");
    
    public String execute() throws Exception {
        String role = accountinfo.getRole();
        String uid = String.valueOf(accountinfo.getUid());
        String path = ServletActionContext.getServletContext().getRealPath("/account/"+role+"_"+uid+"/images/");
        File fp = new File(path);
        if (!fp.exists()) {
			fp.mkdir();
		}
        try {
            File f = this.getFile();
            
            if(!this.getFileFileName().endsWith(".jpg")){
                message="对不起,你上传的文件格式不允许!!!";
                return ERROR;
            }
            FileInputStream inputStream = new FileInputStream(f);
            FileOutputStream outputStream = new FileOutputStream(path +this.getFileFileName());
            byte[] buf = new byte[1024];
            int length = 0;
            while ((length = inputStream.read(buf)) != -1) {
                outputStream.write(buf, 0, length);
            }
            
            String filepath = "/account/"+role+"_"+uid+"/images/"+this.getFileFileName();
            System.out.println(filepath);
            
            String type = (String) this.getType();
            System.out.println(type);
            if ("weixin".equals(type)) {
            	accountinfo.setWeixin(filepath);
			}
            if ("photo".equals(type)) {
            	accountinfo.setPhoto(filepath);
			}
            System.out.println(accountinfo.getWeixin()+"      "+accountinfo.getPhoto());
            
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