.class Lcom/ali/user/mobile/report/ReportLocationService$2;
.super Ljava/lang/Object;
.source "ReportLocationService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field final synthetic this$0:Lcom/ali/user/mobile/report/ReportLocationService;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/report/ReportLocationService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/report/ReportLocationService$2;->this$0:Lcom/ali/user/mobile/report/ReportLocationService;

    iput-object p2, p0, Lcom/ali/user/mobile/report/ReportLocationService$2;->a:Ljava/lang/String;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/report/ReportLocationService$2;->this$0:Lcom/ali/user/mobile/report/ReportLocationService;

    iget-object v0, v0, Lcom/ali/user/mobile/report/ReportLocationService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ali/user/mobile/report/ReportConfig;->getInstance(Landroid/content/Context;)Lcom/ali/user/mobile/report/ReportConfig;

    move-result-object v0

    const-string/jumbo v1, ".LocationCfg"

    const-string/jumbo v2, "unifylogin$"

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/report/ReportConfig;->checkReportConfig(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    const-string/jumbo v0, "ReportLocationService"

    const-string/jumbo v1, "disallow report alive time"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/report/ReportLocationService$2;->this$0:Lcom/ali/user/mobile/report/ReportLocationService;

    iget-object v1, p0, Lcom/ali/user/mobile/report/ReportLocationService$2;->this$0:Lcom/ali/user/mobile/report/ReportLocationService;

    iget-object v1, v1, Lcom/ali/user/mobile/report/ReportLocationService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->getInstance(Landroid/content/Context;)Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->getLastKnownLBSInfo()Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/report/ReportLocationService;->access$1(Lcom/ali/user/mobile/report/ReportLocationService;Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;)V

    .line 105
    iget-object v0, p0, Lcom/ali/user/mobile/report/ReportLocationService$2;->this$0:Lcom/ali/user/mobile/report/ReportLocationService;

    invoke-static {v0}, Lcom/ali/user/mobile/report/ReportLocationService;->access$2(Lcom/ali/user/mobile/report/ReportLocationService;)Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;

    move-result-object v0

    iget-object v0, v0, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;->extraInfos:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/ali/user/mobile/report/ReportLocationService$2;->this$0:Lcom/ali/user/mobile/report/ReportLocationService;

    invoke-static {v0}, Lcom/ali/user/mobile/report/ReportLocationService;->access$2(Lcom/ali/user/mobile/report/ReportLocationService;)Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;->extraInfos:Ljava/util/Map;

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/report/ReportLocationService$2;->this$0:Lcom/ali/user/mobile/report/ReportLocationService;

    invoke-static {v0}, Lcom/ali/user/mobile/report/ReportLocationService;->access$2(Lcom/ali/user/mobile/report/ReportLocationService;)Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;

    move-result-object v0

    iget-object v0, v0, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;->extraInfos:Ljava/util/Map;

    const-string/jumbo v1, "viewId"

    iget-object v2, p0, Lcom/ali/user/mobile/report/ReportLocationService$2;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    new-instance v1, Lcom/alipay/alideviceinfo/vo/DeviceLocationVO;

    invoke-direct {v1}, Lcom/alipay/alideviceinfo/vo/DeviceLocationVO;-><init>()V

    .line 110
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getApdid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/alideviceinfo/vo/DeviceLocationVO;->apdId:Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/ali/user/mobile/report/ReportLocationService$2;->this$0:Lcom/ali/user/mobile/report/ReportLocationService;

    invoke-static {v0}, Lcom/ali/user/mobile/report/ReportLocationService;->access$2(Lcom/ali/user/mobile/report/ReportLocationService;)Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/alideviceinfo/vo/DeviceLocationVO;->lbsInfo:Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/ali/user/mobile/report/ReportLocationService$2;->this$0:Lcom/ali/user/mobile/report/ReportLocationService;

    invoke-static {v0}, Lcom/ali/user/mobile/report/ReportLocationService;->access$3(Lcom/ali/user/mobile/report/ReportLocationService;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/alideviceinfo/facade/DeviceLocationFacade;

    invoke-interface {v0, v1}, Lcom/alipay/alideviceinfo/facade/DeviceLocationFacade;->reportDeviceLocation(Lcom/alipay/alideviceinfo/vo/DeviceLocationVO;)Lcom/alipay/alideviceinfo/vo/DeviceLocationRes;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/ali/user/mobile/report/ReportLocationService$2;->this$0:Lcom/ali/user/mobile/report/ReportLocationService;

    iget-object v1, v1, Lcom/ali/user/mobile/report/ReportLocationService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/ali/user/mobile/report/ReportConfig;->getInstance(Landroid/content/Context;)Lcom/ali/user/mobile/report/ReportConfig;

    move-result-object v1

    const-string/jumbo v2, ".LocationCfg"

    const-string/jumbo v3, "unifylogin$"

    iget-object v4, v0, Lcom/alipay/alideviceinfo/vo/DeviceLocationRes;->clientReportConfig:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/ali/user/mobile/report/ReportConfig;->setReportConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/ali/user/mobile/report/ReportLocationService$2;->this$0:Lcom/ali/user/mobile/report/ReportLocationService;

    invoke-static {v1, v0}, Lcom/ali/user/mobile/report/ReportLocationService;->access$4(Lcom/ali/user/mobile/report/ReportLocationService;Lcom/alipay/alideviceinfo/vo/DeviceLocationRes;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    const-string/jumbo v1, "ReportLocationService"

    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
