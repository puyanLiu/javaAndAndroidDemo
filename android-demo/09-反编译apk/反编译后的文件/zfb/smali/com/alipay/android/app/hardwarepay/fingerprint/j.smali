.class Lcom/alipay/android/app/hardwarepay/fingerprint/j;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final b:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/hardwarepay/fingerprint/i;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "<Unknown>"

    const-class v2, Lcom/alipay/android/app/hardwarepay/fingerprint/j;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "onReceive"

    const-string/jumbo v3, "com.alipay.android.app.hardwarepay.fingerprint.FingerPrintPay$3$2$2$1"

    const-string/jumbo v4, "android.content.Context:android.content.Intent"

    const-string/jumbo v5, "arg0:arg1"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x112

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/hardwarepay/fingerprint/j;->b:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method constructor <init>(Lcom/alipay/android/app/hardwarepay/fingerprint/i;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/j;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/i;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .prologue
    .line 1
    sget-object v0, Lcom/alipay/android/app/hardwarepay/fingerprint/j;->b:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1, p2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v3

    const/4 v0, 0x1

    aget-object v0, v2, v0

    const-string/jumbo v2, "com.alipay.mobile.framework.ACTIVITY_DATA"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "FingerprintSettingMainActivity"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/j;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/i;

    iget-object v2, v2, Lcom/alipay/android/app/hardwarepay/fingerprint/i;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/g;

    iget-object v2, v2, Lcom/alipay/android/app/hardwarepay/fingerprint/g;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/c;

    iget-object v2, v2, Lcom/alipay/android/app/hardwarepay/fingerprint/c;->b:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;

    invoke-virtual {v2}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;->c()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/j;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/i;

    iget-object v2, v2, Lcom/alipay/android/app/hardwarepay/fingerprint/i;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/g;

    iget-object v2, v2, Lcom/alipay/android/app/hardwarepay/fingerprint/g;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/c;

    iget v2, v2, Lcom/alipay/android/app/hardwarepay/fingerprint/c;->c:I

    const-string/jumbo v4, "true"

    invoke-static {v2, v4}, Lcom/alipay/android/app/assist/MspAssistUtil;->a(ILjava/lang/String;)V

    :goto_0
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    instance-of v2, v0, Landroid/content/Intent;

    if-eqz v2, :cond_1

    const-string/jumbo v2, "Monitor"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onReceive:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/j;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/i;

    iget-object v2, v2, Lcom/alipay/android/app/hardwarepay/fingerprint/i;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/g;

    iget-object v2, v2, Lcom/alipay/android/app/hardwarepay/fingerprint/g;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/c;

    iget-object v2, v2, Lcom/alipay/android/app/hardwarepay/fingerprint/c;->d:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    iget-object v4, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/j;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/i;

    iget-object v4, v4, Lcom/alipay/android/app/hardwarepay/fingerprint/i;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/g;

    iget-object v4, v4, Lcom/alipay/android/app/hardwarepay/fingerprint/g;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/c;

    iget-object v4, v4, Lcom/alipay/android/app/hardwarepay/fingerprint/c;->b:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;

    const/16 v5, 0xc8

    iget-object v6, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/j;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/i;

    iget-object v6, v6, Lcom/alipay/android/app/hardwarepay/fingerprint/i;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/g;

    iget-object v6, v6, Lcom/alipay/android/app/hardwarepay/fingerprint/g;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/c;

    iget v6, v6, Lcom/alipay/android/app/hardwarepay/fingerprint/c;->c:I

    invoke-static {v2, v4, v5, v6}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$400(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;II)V

    goto :goto_0
.end method
