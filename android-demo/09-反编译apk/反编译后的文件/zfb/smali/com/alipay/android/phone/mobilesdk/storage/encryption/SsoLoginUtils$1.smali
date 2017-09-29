.class Lcom/alipay/android/phone/mobilesdk/storage/encryption/SsoLoginUtils$1;
.super Ljava/lang/Object;
.source "SsoLoginUtils.java"

# interfaces
.implements Lcom/alibaba/wireless/security/open/initialize/IInitializeComponent$IInitFinishListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onError()V
    .locals 3

    .prologue
    .line 59
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "xxxxxx"

    const-string/jumbo v2, "so load faild!!!"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public onSuccess()V
    .locals 3

    .prologue
    .line 53
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "xxxxxx"

    const-string/jumbo v2, "so load Success!!!"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method
