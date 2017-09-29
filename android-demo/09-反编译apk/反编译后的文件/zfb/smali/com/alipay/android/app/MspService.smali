.class public Lcom/alipay/android/app/MspService;
.super Landroid/app/Service;


# static fields
.field private static a:Z

.field private static final e:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field private b:Lcom/alipay/android/app/IServiceAdapter;

.field private c:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private d:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "<Unknown>"

    const-class v2, Lcom/alipay/android/app/MspService;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "onBind"

    const-string/jumbo v3, "com.alipay.android.app.MspService"

    const-string/jumbo v4, "android.content.Intent"

    const-string/jumbo v5, "arg0"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "android.os.IBinder"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x41

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/MspService;->e:Lorg/aspectj/lang/JoinPoint$StaticPart;

    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/app/MspService;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/MspService;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 49
    new-instance v0, Lcom/alipay/android/app/c;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/c;-><init>(Lcom/alipay/android/app/MspService;)V

    iput-object v0, p0, Lcom/alipay/android/app/MspService;->d:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/MspService;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alipay/android/app/MspService;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1
    sget-object v0, Lcom/alipay/android/app/MspService;->e:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v4, "Monitor"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "onBind:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, ",Intent:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v5, 0x0

    aget-object v3, v3, v5

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/alipay/android/app/MspService;->b:Lcom/alipay/android/app/IServiceAdapter;

    if-nez v2, :cond_0

    new-instance v2, Lcom/alipay/android/app/DefaultServiceAdapter;

    invoke-direct {v2}, Lcom/alipay/android/app/DefaultServiceAdapter;-><init>()V

    iput-object v2, p0, Lcom/alipay/android/app/MspService;->b:Lcom/alipay/android/app/IServiceAdapter;

    :cond_0
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    invoke-virtual {p0}, Lcom/alipay/android/app/MspService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.eg.android.AlipayGphone"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/alipay/android/app/MspService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.eg.android.AlipayGphoneRC"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_1
    const-string/jumbo v1, "com.alipay.android.app.IAliPay"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "com.eg.android.AlipayGphone.IAliPay"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/MspService;->b:Lcom/alipay/android/app/IServiceAdapter;

    invoke-interface {v0}, Lcom/alipay/android/app/IServiceAdapter;->d()Landroid/os/IBinder;

    move-result-object v0

    :goto_1
    check-cast v0, Landroid/os/IBinder;

    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/MspService;->b:Lcom/alipay/android/app/IServiceAdapter;

    invoke-interface {v0}, Lcom/alipay/android/app/IServiceAdapter;->e()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_1

    :cond_4
    const-string/jumbo v2, "com.alipay.android.app.IAliPay"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "com.eg.android.AlipayGphone.IAliPay"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/alipay/android/app/MspService;->b:Lcom/alipay/android/app/IServiceAdapter;

    invoke-interface {v0}, Lcom/alipay/android/app/IServiceAdapter;->d()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_1

    :cond_6
    const-string/jumbo v2, "com.alipay.android.app.IAlixPay"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "com.eg.android.AlipayGphone.IAlixPay"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/alipay/android/app/MspService;->b:Lcom/alipay/android/app/IServiceAdapter;

    invoke-interface {v0}, Lcom/alipay/android/app/IServiceAdapter;->e()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_1

    :cond_8
    sget-boolean v0, Lcom/alipay/android/app/pay/GlobalConstant;->SDK:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alipay/android/app/MspService;->b:Lcom/alipay/android/app/IServiceAdapter;

    invoke-interface {v0}, Lcom/alipay/android/app/IServiceAdapter;->f()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_1

    :cond_9
    move-object v0, v1

    goto :goto_1

    :cond_a
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 102
    const-string/jumbo v0, " msp service oncreate start "

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->f(Ljava/lang/String;)V

    .line 103
    const-string/jumbo v0, "oncreate"

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->b(Ljava/lang/String;)V

    .line 104
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 105
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v0

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "oncreate process run"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/util/LogUtils;->b(Ljava/lang/String;)V

    .line 107
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/alipay/android/app/sys/GlobalContext;->a(J)V

    .line 109
    sget-boolean v0, Lcom/alipay/android/app/MspService;->a:Z

    if-nez v0, :cond_0

    .line 110
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/app/helper/MspConfig;->r()Lcom/alipay/android/app/helper/MspConfig;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/alipay/android/app/sys/GlobalContext;->a(Landroid/content/Context;Lcom/alipay/android/app/IAppConfig;)V

    .line 111
    invoke-static {p0}, Lcom/alipay/android/app/assist/MspAssistUtil;->a(Landroid/content/Context;)V

    .line 112
    new-instance v0, Lcom/alipay/android/app/DefaultServiceAdapter;

    invoke-direct {v0}, Lcom/alipay/android/app/DefaultServiceAdapter;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/MspService;->b:Lcom/alipay/android/app/IServiceAdapter;

    .line 113
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/app/MspService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/sys/DeviceInfo;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/MspService;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 117
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/MspService;->d:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 119
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/android/app/MspService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 120
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/app/helper/MspConfig;->r()Lcom/alipay/android/app/helper/MspConfig;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/app/sys/GlobalContext;->a(Landroid/content/Context;Lcom/alipay/android/app/IAppConfig;)V

    .line 122
    sget-boolean v0, Lcom/alipay/android/app/MspService;->a:Z

    if-nez v0, :cond_2

    .line 123
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/android/app/MspService;->a:Z

    .line 124
    invoke-static {p0}, Lcom/alipay/android/app/MspInitAssistService;->initFirstCreate(Landroid/content/Context;)V

    .line 126
    :cond_2
    invoke-static {}, Lcom/alipay/android/app/MspInitAssistService;->initServiceCreate()V

    .line 127
    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->b()Z

    .line 128
    const-string/jumbo v0, " msp service oncreate end "

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->f(Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 139
    invoke-static {}, Lcom/alipay/android/app/MspInitAssistService;->stopServiceDestory()V

    .line 140
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/app/MspService;->a:Z

    .line 141
    const-string/jumbo v0, "MspService onDestroy"

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->b(Ljava/lang/String;)V

    .line 142
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 143
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 1

    .prologue
    .line 133
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 134
    const-string/jumbo v0, "MspService onStart"

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->b(Ljava/lang/String;)V

    .line 135
    return-void
.end method
