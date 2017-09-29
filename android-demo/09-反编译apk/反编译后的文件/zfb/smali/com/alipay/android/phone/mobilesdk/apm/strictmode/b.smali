.class final Lcom/alipay/android/phone/mobilesdk/apm/strictmode/b;
.super Lcom/taobao/android/dexposed/XC_MethodHook;
.source "StrictModeDetector.java"


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/mobilesdk/apm/strictmode/StrictModeDetector;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mobilesdk/apm/strictmode/StrictModeDetector;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/strictmode/b;->a:Lcom/alipay/android/phone/mobilesdk/apm/strictmode/StrictModeDetector;

    invoke-direct {p0}, Lcom/taobao/android/dexposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected final beforeHookedMethod(Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 94
    iget-object v0, p1, Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v0, v0, v5

    .line 95
    if-eqz v0, :cond_0

    .line 96
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/mobilesdk/apm/strictmode/StrictModeDetector;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ActivityManagerNative  onVmPolicyViolation :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/strictmode/StrictModeDetector;->c()Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    check-cast v0, Ljava/lang/Throwable;

    aput-object v0, v2, v3

    const/16 v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/strictmode/b;->a:Lcom/alipay/android/phone/mobilesdk/apm/strictmode/StrictModeDetector;

    invoke-static {v1, v0}, Lcom/alipay/android/phone/mobilesdk/apm/strictmode/StrictModeDetector;->a(Lcom/alipay/android/phone/mobilesdk/apm/strictmode/StrictModeDetector;Ljava/lang/Object;)V

    .line 100
    :cond_0
    return-void
.end method
