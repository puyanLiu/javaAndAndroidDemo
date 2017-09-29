.class public Lcom/alipay/android/phone/mobilesdk/apm/strictmode/StrictModeDetector;
.super Ljava/lang/Object;
.source "StrictModeDetector.java"


# static fields
.field public static final a:Ljava/lang/String;

.field private static b:Lcom/alipay/android/phone/mobilesdk/apm/strictmode/StrictModeDetector;

.field private static f:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taobao/android/dexposed/XC_MethodHook$Unhook;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/reflect/Method;

.field private e:Ljava/lang/reflect/Field;

.field private g:Lcom/alipay/android/phone/mobilesdk/apm/strictmode/StrictModePrinter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/phone/mobilesdk/apm/strictmode/StrictModeDetector;->b:Lcom/alipay/android/phone/mobilesdk/apm/strictmode/StrictModeDetector;

    .line 31
    const-class v0, Lcom/alipay/android/phone/mobilesdk/apm/strictmode/StrictModeDetector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/mobilesdk/apm/strictmode/StrictModeDetector;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/16 v6, 0x10

    const/16 v5, 0xb

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    :try_start_0
    const-string/jumbo v0, "android.os.StrictMode$ViolationInfo"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 48
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Throwable;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Lcom/alipay/android/phone/mobilesdk/apm/strictmode/StrictModeDetector;->f:Ljava/lang/reflect/Constructor;

    .line 49
    const-string/jumbo v1, "dump"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/util/Printer;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/strictmode/StrictModeDetector;->d:Ljava/lang/reflect/Method;

    .line 50
    const-string/jumbo v1, "crashInfo"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/strictmode/StrictModeDetector;->e:Ljava/lang/reflect/Field;

    .line 51
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/strictmode/StrictModeDetector;->e:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/strictmode/StrictModeDetector;->c:Ljava/util/List;

    .line 57
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/apm/strictmode/StrictModePrinter;

    invoke-direct {v0}, Lcom/alipay/android/phone/mobilesdk/apm/strictmode/StrictModePrinter;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/strictmode/StrictModeDetector;->g:Lcom/alipay/android/phone/mobilesdk/apm/strictmode/StrictModePrinter;

    .line 59
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 61
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v5, :cond_1

    .line 62
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 78
    :cond_0
    :goto_1
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/mobilesdk/apm/strictmode/StrictModeDetector;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 65
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v5, v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v6, :cond_2

    .line 66
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedClosableObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    goto :goto_1

    .line 70
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_0

    .line 71
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedClosableObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedRegistrationObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    goto :goto_1
.end method

.method public static declared-synchronized a()Lcom/alipay/android/phone/mobilesdk/apm/strictmode/StrictModeDetector;
    .locals 2

    .prologue
    .line 39
    const-class v1, Lcom/alipay/android/phone/mobilesdk/apm/strictmode/StrictModeDetector;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/apm/strictmode/StrictModeDetector;->b:Lcom/alipay/android/phone/mobilesdk/apm/strictmode/StrictModeDetector;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/apm/strictmode/StrictModeDetector;

    invoke-direct {v0}, Lcom/alipay/android/phone/mobilesdk/apm/strictmode/StrictModeDetector;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/mobilesdk/apm/strictmode/StrictModeDetector;->b:Lcom/alipay/android/phone/mobilesdk/apm/strictmode/StrictModeDetector;

    .line 42
    :cond_0
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/apm/strictmode/StrictModeDetector;->b:Lcom/alipay/android/phone/mobilesdk/apm/strictmode/StrictModeDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/alipay/android/phone/mobilesdk/apm/strictmode/StrictModeDetector;Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/strictmode/StrictModeDetector;->e:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/strictmode/StrictModeDetector;->d:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/strictmode/StrictModeDetector;->d:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/strictmode/StrictModeDetector;->g:Lcom/alipay/android/phone/mobilesdk/apm/strictmode/StrictModePrinter;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, ""

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/strictmode/StrictModeDetector;->g:Lcom/alipay/android/phone/mobilesdk/apm/strictmode/StrictModePrinter;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/apm/strictmode/StrictModePrinter;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "stackFrame"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "performance"

    const-string/jumbo v2, "strict_mode"

    invoke-static {v0, v2, v1}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMUtil;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/strictmode/StrictModeDetector;->g:Lcom/alipay/android/phone/mobilesdk/apm/strictmode/StrictModePrinter;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/apm/strictmode/StrictModePrinter;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/mobilesdk/apm/strictmode/StrictModeDetector;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, " "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic c()Ljava/lang/reflect/Constructor;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/apm/strictmode/StrictModeDetector;->f:Ljava/lang/reflect/Constructor;

    return-object v0
.end method


# virtual methods
.method public final b()V
    .locals 5

    .prologue
    .line 81
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 83
    :try_start_0
    const-string/jumbo v0, "android.os.StrictMode$AndroidBlockGuardPolicy"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 84
    const-string/jumbo v1, "handleViolation"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "android.os.StrictMode$ViolationInfo"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lcom/alipay/android/phone/mobilesdk/apm/strictmode/a;

    invoke-direct {v4, p0}, Lcom/alipay/android/phone/mobilesdk/apm/strictmode/a;-><init>(Lcom/alipay/android/phone/mobilesdk/apm/strictmode/StrictModeDetector;)V

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/android/dexposed/XposedBridge;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lcom/taobao/android/dexposed/XC_MethodHook$Unhook;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/strictmode/StrictModeDetector;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    const-class v0, Landroid/os/StrictMode;

    const-string/jumbo v1, "onVmPolicyViolation"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/Throwable;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Lcom/alipay/android/phone/mobilesdk/apm/strictmode/b;

    invoke-direct {v4, p0}, Lcom/alipay/android/phone/mobilesdk/apm/strictmode/b;-><init>(Lcom/alipay/android/phone/mobilesdk/apm/strictmode/StrictModeDetector;)V

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/android/dexposed/XposedBridge;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lcom/taobao/android/dexposed/XC_MethodHook$Unhook;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/strictmode/StrictModeDetector;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/mobilesdk/apm/strictmode/StrictModeDetector;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
