.class Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/security/DeviceCallBack;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl$2;->this$0:Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateDidCallBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SecurityInitServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u751f\u6210tid\u540e\u8fdb\u884c\u56de\u8c03\uff0c\u8fd4\u56detid\u6570\u636e,tid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl$2;->this$0:Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;

    invoke-static {v0}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->access$2(Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;)Lcom/alipay/mobile/security/securitycommon/LogSb;

    move-result-object v0

    const-string/jumbo v1, "generateTidCallBack success"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/securitycommon/LogSb;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SecurityInitServiceImpl"

    const-string/jumbo v2, "\u751f\u6210tid\u6210\u529f"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl$2;->this$0:Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;

    invoke-static {v0}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->access$2(Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;)Lcom/alipay/mobile/security/securitycommon/LogSb;

    move-result-object v0

    const-string/jumbo v1, "generateTidCallBack fail"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/securitycommon/LogSb;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
