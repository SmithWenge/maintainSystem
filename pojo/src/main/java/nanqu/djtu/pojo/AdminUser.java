package nanqu.djtu.pojo;

public class AdminUser {
    private String adminUserId;  // 主键Id
    private String adminName;  // 工作人员姓名
    private int adminGender;  // 工作人员性别
    private String adminEmail;  // 工作人员邮箱
    private String adminNumber;  // 工作人员工作证号
    private String userId;

    public String getHiddenUsername() {
        return hiddenUsername;
    }

    public void setHiddenUsername(String hiddenUsername) {
        this.hiddenUsername = hiddenUsername;
    }

    private String hiddenUsername;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    private String username;
    private String password;

    public String getHiddenAdminNumber() {
        return hiddenAdminNumber;
    }

    public void setHiddenAdminNumber(String hiddenAdminNumber) {
        this.hiddenAdminNumber = hiddenAdminNumber;
    }

    private String hiddenAdminNumber;
    private int adminState;  // 工作人员状态
    private String adminCard;  // 工作人员身份证号
    private String adminTelephone;  // 维修人员联系电话

    public void setAdminName(String adminName) {
        this.adminName = adminName;
    }

    public void setAdminGender(int adminGender) {
        this.adminGender = adminGender;
    }

    public void setAdminEmail(String adminEmail) {
        this.adminEmail = adminEmail;
    }

    public void setAdminNumber(String adminNumber) {
        this.adminNumber = adminNumber;
    }

    public void setAdminState(int adminState) {
        this.adminState = adminState;
    }

    public void setAdminCard(String adminCard) {
        this.adminCard = adminCard;
    }

    public void setAdminTelephone(String adminTelephone) {
        this.adminTelephone = adminTelephone;
    }

    public void setAdminUserId(String adminUserId) {
        this.adminUserId = adminUserId;
    }

    public String getAdminUserId() {

        return adminUserId;
    }

    public String getAdminName() {
        return adminName;
    }

    public int getAdminGender() {
        return adminGender;
    }

    public String getAdminEmail() {
        return adminEmail;
    }

    public String getAdminNumber() {
        return adminNumber;
    }

    public int getAdminState() {
        return adminState;
    }

    public String getAdminCard() {
        return adminCard;
    }

    public String getAdminTelephone() {
        return adminTelephone;
    }
}
