.class public Lcom/alipay/security/mobile/module/http/model/ConvertUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertFrom(Lcom/alipay/tscenter/biz/rpc/pb/result/AppListCmdResult;)Lcom/alipay/security/mobile/module/http/model/AppListResponseModel;
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alipay/security/mobile/module/http/model/AppListResponseModel;

    iget-object v1, p0, Lcom/alipay/tscenter/biz/rpc/pb/result/AppListCmdResult;->appListCmdData:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/tscenter/biz/rpc/pb/result/AppListCmdResult;->appListCmdVersion:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/alipay/security/mobile/module/http/model/AppListResponseModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/tscenter/biz/rpc/pb/result/AppListCmdResult;->success:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/alipay/security/mobile/module/http/model/AppListResponseModel;->success:Z

    iget-object v1, p0, Lcom/alipay/tscenter/biz/rpc/pb/result/AppListCmdResult;->resultCode:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/security/mobile/module/http/model/AppListResponseModel;->resultCode:Ljava/lang/String;

    goto :goto_0
.end method

.method public static convertFrom(Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;)Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;
    .locals 4

    new-instance v0, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;

    invoke-direct {v0}, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;-><init>()V

    if-nez p0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->success:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->success:Z

    iget-object v1, p0, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->resultCode:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->resultCode:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->apdid:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->apdid:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->token:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->token:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->currentTime:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->currentTime:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->rpcVersion:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->version:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->appListCmdVer:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->appListVer:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->drmSwitch:Ljava/lang/String;

    const-string/jumbo v2, "0"

    iput-object v2, v0, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->bugTrackSwitch:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->bugTrackSwitch:Ljava/lang/String;

    goto :goto_0
.end method

.method public static convertFrom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/tscenter/biz/rpc/pb/request/AppListCmdRequest;
    .locals 1

    new-instance v0, Lcom/alipay/tscenter/biz/rpc/pb/request/AppListCmdRequest;

    invoke-direct {v0}, Lcom/alipay/tscenter/biz/rpc/pb/request/AppListCmdRequest;-><init>()V

    iput-object p3, v0, Lcom/alipay/tscenter/biz/rpc/pb/request/AppListCmdRequest;->apdid:Ljava/lang/String;

    iput-object p0, v0, Lcom/alipay/tscenter/biz/rpc/pb/request/AppListCmdRequest;->os:Ljava/lang/String;

    iput-object p2, v0, Lcom/alipay/tscenter/biz/rpc/pb/request/AppListCmdRequest;->token:Ljava/lang/String;

    iput-object p1, v0, Lcom/alipay/tscenter/biz/rpc/pb/request/AppListCmdRequest;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public static convertFrom(Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;)Lcom/alipay/tscenter/biz/rpc/pb/request/DeviceDataReportRequest;
    .locals 7

    const/4 v2, 0x0

    new-instance v3, Lcom/alipay/tscenter/biz/rpc/pb/request/DeviceDataReportRequest;

    invoke-direct {v3}, Lcom/alipay/tscenter/biz/rpc/pb/request/DeviceDataReportRequest;-><init>()V

    if-nez p0, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;->getDataMap()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v0, ""

    :cond_2
    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/LOG;->logException(Ljava/lang/Throwable;)V

    move-object v0, v2

    goto :goto_0

    :cond_3
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "dataMap"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "os"

    invoke-virtual {p0}, Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;->getOs()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "apdid"

    invoke-virtual {p0}, Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;->getApdid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "pubApdid"

    invoke-virtual {p0}, Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;->getPubApdid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "priApdid"

    invoke-virtual {p0}, Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;->getPriApdid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "token"

    invoke-virtual {p0}, Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "umidToken"

    invoke-virtual {p0}, Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;->getUmidToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "lastTime"

    invoke-virtual {p0}, Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;->getLastTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;->getVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/alipay/tscenter/biz/rpc/pb/request/DeviceDataReportRequest;->rpcVersion:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/tscenter/biz/rpc/pb/request/DeviceDataReportRequest;->deviceData:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v3

    goto/16 :goto_0
.end method
