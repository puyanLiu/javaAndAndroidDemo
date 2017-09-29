.class public Lcom/alipay/mobile/logmonitor/util/UploadConstants;
.super Ljava/lang/Object;
.source "UploadConstants.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field public static j:Ljava/lang/String;

.field public static k:Ljava/lang/String;

.field public static l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-string/jumbo v0, "/loggw/extLog.do"

    sput-object v0, Lcom/alipay/mobile/logmonitor/util/UploadConstants;->a:Ljava/lang/String;

    .line 9
    const-string/jumbo v0, "/loggw/report_diangosis_upload_status.htm"

    sput-object v0, Lcom/alipay/mobile/logmonitor/util/UploadConstants;->b:Ljava/lang/String;

    .line 11
    const-string/jumbo v0, "logcat"

    sput-object v0, Lcom/alipay/mobile/logmonitor/util/UploadConstants;->c:Ljava/lang/String;

    .line 12
    const-string/jumbo v0, "applog"

    sput-object v0, Lcom/alipay/mobile/logmonitor/util/UploadConstants;->d:Ljava/lang/String;

    .line 13
    const-string/jumbo v0, "trafficLog"

    sput-object v0, Lcom/alipay/mobile/logmonitor/util/UploadConstants;->e:Ljava/lang/String;

    .line 14
    const-string/jumbo v0, "storagetrace"

    sput-object v0, Lcom/alipay/mobile/logmonitor/util/UploadConstants;->f:Ljava/lang/String;

    .line 15
    const-string/jumbo v0, "anrLog"

    sput-object v0, Lcom/alipay/mobile/logmonitor/util/UploadConstants;->g:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, "anrtrace"

    sput-object v0, Lcom/alipay/mobile/logmonitor/util/UploadConstants;->h:Ljava/lang/String;

    .line 17
    const-string/jumbo v0, "traceviewWallet"

    sput-object v0, Lcom/alipay/mobile/logmonitor/util/UploadConstants;->i:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, "traceviewPush"

    sput-object v0, Lcom/alipay/mobile/logmonitor/util/UploadConstants;->j:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, "stacktracerWallet"

    sput-object v0, Lcom/alipay/mobile/logmonitor/util/UploadConstants;->k:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, "stacktracerPush"

    sput-object v0, Lcom/alipay/mobile/logmonitor/util/UploadConstants;->l:Ljava/lang/String;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->getLogHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/logmonitor/util/UploadConstants;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->getLogHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/logmonitor/util/UploadConstants;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
