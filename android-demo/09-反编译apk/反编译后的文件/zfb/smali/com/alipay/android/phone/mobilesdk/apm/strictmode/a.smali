.class final Lcom/alipay/android/phone/mobilesdk/apm/strictmode/a;
.super Lcom/taobao/android/dexposed/XC_MethodHook;
.source "StrictModeDetector.java"


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/mobilesdk/apm/strictmode/StrictModeDetector;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mobilesdk/apm/strictmode/StrictModeDetector;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/strictmode/a;->a:Lcom/alipay/android/phone/mobilesdk/apm/strictmode/StrictModeDetector;

    invoke-direct {p0}, Lcom/taobao/android/dexposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected final beforeHookedMethod(Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;)V
    .locals 3

    .prologue
    .line 86
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/mobilesdk/apm/strictmode/StrictModeDetector;->a:Ljava/lang/String;

    const-string/jumbo v2, "ActivityManagerNative  onStrictModeViolation"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/strictmode/a;->a:Lcom/alipay/android/phone/mobilesdk/apm/strictmode/StrictModeDetector;

    iget-object v1, p1, Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/alipay/android/phone/mobilesdk/apm/strictmode/StrictModeDetector;->a(Lcom/alipay/android/phone/mobilesdk/apm/strictmode/StrictModeDetector;Ljava/lang/Object;)V

    .line 88
    return-void
.end method
