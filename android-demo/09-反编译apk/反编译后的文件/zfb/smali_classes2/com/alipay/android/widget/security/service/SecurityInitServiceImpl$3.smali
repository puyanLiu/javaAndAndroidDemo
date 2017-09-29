.class Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/util/List;

.field final synthetic this$0:Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl$3;->this$0:Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;

    iput-object p2, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl$3;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl$3;->this$0:Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;

    new-instance v1, Lcom/alipay/mobile/security/securitycommon/LogSb;

    invoke-direct {v1}, Lcom/alipay/mobile/security/securitycommon/LogSb;-><init>()V

    invoke-static {v0, v1}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->access$3(Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;Lcom/alipay/mobile/security/securitycommon/LogSb;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl$3;->this$0:Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;

    invoke-static {v0}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->access$4(Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;)Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl$3;->a:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl$3;->this$0:Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;

    invoke-static {v0}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->access$4(Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;)Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;->queryDeviceInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoBean;->getWalletTid()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SecurityInitServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "walletTid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl$3;->this$0:Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;

    invoke-static {v1}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->access$5(Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;)Lcom/alipay/mobile/security/securitycommon/LogSb;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "walletTid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/security/securitycommon/LogSb;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl$3;->this$0:Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;

    invoke-static {v1}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->access$4(Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;)Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;->queryCertification()Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getTid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl$3;->this$0:Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;

    new-instance v2, Lcom/alipay/android/widget/security/a/a;

    invoke-direct {v2}, Lcom/alipay/android/widget/security/a/a;-><init>()V

    invoke-static {v0, v2}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->access$6(Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;Lcom/alipay/android/widget/security/a/a;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl$3;->this$0:Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;

    invoke-static {v0}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->access$7(Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;)Lcom/alipay/android/widget/security/a/a;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl$3;->a:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/widget/security/a/a;->a(Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;Ljava/util/List;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl$3;->this$0:Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;

    invoke-virtual {v1, v0}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->handleUpdateLoginResult(Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl$3;->this$0:Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;

    invoke-static {v0}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->access$4(Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;)Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl$3;->this$0:Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;

    invoke-static {v0}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->access$5(Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;)Lcom/alipay/mobile/security/securitycommon/LogSb;

    move-result-object v0

    const-string/jumbo v1, "getDeviceService() = null"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/securitycommon/LogSb;->a(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl$3;->a:Ljava/util/List;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl$3;->this$0:Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;

    invoke-static {v0}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->access$5(Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;)Lcom/alipay/mobile/security/securitycommon/LogSb;

    move-result-object v0

    const-string/jumbo v1, "userIdList = null"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/securitycommon/LogSb;->a(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl$3;->this$0:Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;

    invoke-static {v0}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->access$5(Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;)Lcom/alipay/mobile/security/securitycommon/LogSb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/securitycommon/LogSb;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/security/securitycommon/LoggerUtils;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
