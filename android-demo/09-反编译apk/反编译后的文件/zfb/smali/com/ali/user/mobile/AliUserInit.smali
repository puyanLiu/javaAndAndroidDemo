.class public Lcom/ali/user/mobile/AliUserInit;
.super Ljava/lang/Object;
.source "AliUserInit.java"


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Z

.field private static c:Ljava/lang/String;

.field private static d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/ali/user/mobile/AliUserInit;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/ali/user/mobile/AliUserInit;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 42
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    sput-object v0, Lcom/ali/user/mobile/AliUserInit;->a:Landroid/content/Context;

    .line 44
    :cond_0
    sget-object v0, Lcom/ali/user/mobile/AliUserInit;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/ali/user/mobile/AliUserInit;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/ali/user/mobile/AliUserInit;->a:Landroid/content/Context;

    .line 49
    sget-object v0, Lcom/ali/user/mobile/AliUserInit;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    :try_start_0
    sget-object v0, Lcom/ali/user/mobile/AliUserInit;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v3, Lcom/ali/user/mobile/AliUserInit;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x4000

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/ali/user/mobile/AliUserInit;->b:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_1
    sget-object v0, Lcom/ali/user/mobile/AliUserInit;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/SsoLoginUtils;->init(Landroid/content/Context;)V

    .line 52
    sget-object v0, Lcom/ali/user/mobile/AliUserInit;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ali/user/mobile/login/rds/RDSWraper;->init(Landroid/content/Context;)V

    .line 53
    invoke-static {}, Lcom/ali/user/mobile/info/DeviceInfo;->getInstance()Lcom/ali/user/mobile/info/DeviceInfo;

    move-result-object v0

    sget-object v2, Lcom/ali/user/mobile/AliUserInit;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/info/DeviceInfo;->init(Landroid/content/Context;)V

    .line 54
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    sget-object v2, Lcom/ali/user/mobile/AliUserInit;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/info/AppInfo;->init(Landroid/content/Context;)V

    .line 55
    invoke-static {}, Lcom/ali/user/mobile/info/NetWorkInfo;->getInstance()Lcom/ali/user/mobile/info/NetWorkInfo;

    move-result-object v0

    sget-object v2, Lcom/ali/user/mobile/AliUserInit;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/info/NetWorkInfo;->init(Landroid/content/Context;)V

    .line 56
    invoke-static {}, Lcom/ali/user/mobile/info/LocationInfo;->getInstance()Lcom/ali/user/mobile/info/LocationInfo;

    move-result-object v0

    sget-object v2, Lcom/ali/user/mobile/AliUserInit;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/info/LocationInfo;->init(Landroid/content/Context;)V

    .line 57
    invoke-static {}, Lcom/ali/user/mobile/info/SensorInfoCollector;->getInstance()Lcom/ali/user/mobile/info/SensorInfoCollector;

    move-result-object v0

    sget-object v2, Lcom/ali/user/mobile/AliUserInit;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/info/SensorInfoCollector;->init(Landroid/content/Context;)V

    .line 58
    sget-object v0, Lcom/ali/user/mobile/AliUserInit;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 60
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 50
    goto :goto_0

    :catch_0
    move-exception v0

    sput-boolean v2, Lcom/ali/user/mobile/AliUserInit;->b:Z

    goto :goto_1
.end method

.method public static isAppDebug(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 77
    sget-boolean v0, Lcom/ali/user/mobile/AliUserInit;->b:Z

    return v0
.end method

.method public static isDebugable()Z
    .locals 1

    .prologue
    .line 81
    sget-boolean v0, Lcom/ali/user/mobile/AliUserInit;->b:Z

    return v0
.end method

.method public static setAppDataProvider(Lcom/ali/user/mobile/dataprovider/AppDataProvider;)V
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ali/user/mobile/info/AppInfo;->setDataProvider(Lcom/ali/user/mobile/dataprovider/AppDataProvider;)V

    .line 64
    return-void
.end method

.method public static setUid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    sput-object p0, Lcom/ali/user/mobile/AliUserInit;->c:Ljava/lang/String;

    .line 38
    return-void
.end method
