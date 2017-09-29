.class public Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;
.super Lcom/alipay/security/mobile/module/http/model/BaseResponseModel;


# instance fields
.field public apdid:Ljava/lang/String;

.field public appListVer:Ljava/lang/String;

.field public bugTrackSwitch:Ljava/lang/String;

.field public currentTime:Ljava/lang/String;

.field public token:Ljava/lang/String;

.field public version:Ljava/lang/String;

.field public vkeySwitch:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/security/mobile/module/http/model/BaseResponseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getApdid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->apdid:Ljava/lang/String;

    return-object v0
.end method

.method public getAppListVer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->appListVer:Ljava/lang/String;

    return-object v0
.end method

.method public getBugTrackSwitch()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->bugTrackSwitch:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->currentTime:Ljava/lang/String;

    return-object v0
.end method

.method public getLogSwitch()Z
    .locals 2

    const-string/jumbo v0, "1"

    iget-object v1, p0, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->bugTrackSwitch:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->version:Ljava/lang/String;

    return-object v0
.end method

.method public getVkeySwitch()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->vkeySwitch:Ljava/lang/String;

    return-object v0
.end method

.method public isTrueSuccess()Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->apdid:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->success:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setApdid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->apdid:Ljava/lang/String;

    return-void
.end method

.method public setAppListVer(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->appListVer:Ljava/lang/String;

    return-void
.end method

.method public setBugTrackSwitch(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->bugTrackSwitch:Ljava/lang/String;

    return-void
.end method

.method public setCurrentTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->currentTime:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->token:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->version:Ljava/lang/String;

    return-void
.end method

.method public setVkeySwitch(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->vkeySwitch:Ljava/lang/String;

    return-void
.end method
