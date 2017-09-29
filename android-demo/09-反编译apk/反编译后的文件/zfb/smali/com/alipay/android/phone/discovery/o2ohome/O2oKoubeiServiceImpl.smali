.class public Lcom/alipay/android/phone/discovery/o2ohome/O2oKoubeiServiceImpl;
.super Lcom/alipay/android/phone/o2o/o2ocommon/services/O2oKoubeiService;
.source "O2oKoubeiServiceImpl.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string/jumbo v0, "O2oKoubeiService"

    sput-object v0, Lcom/alipay/android/phone/discovery/o2ohome/O2oKoubeiServiceImpl;->TAG:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/alipay/android/phone/o2o/o2ocommon/services/O2oKoubeiService;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurAreaCode()Ljava/lang/String;
    .locals 5

    .prologue
    .line 16
    invoke-static {}, Lcom/alipay/android/phone/discovery/o2ohome/CurAreaCodeMgr;->getInstance()Lcom/alipay/android/phone/discovery/o2ohome/CurAreaCodeMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/CurAreaCodeMgr;->getAdCode()Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/discovery/o2ohome/O2oKoubeiServiceImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "current adCode: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return-object v0
.end method
