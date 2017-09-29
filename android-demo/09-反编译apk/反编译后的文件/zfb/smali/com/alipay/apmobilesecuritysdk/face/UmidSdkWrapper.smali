.class public Lcom/alipay/apmobilesecuritysdk/face/UmidSdkWrapper;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static volatile b:Z

.field private static c:Landroid/content/Context;

.field private static d:Lcom/alipay/apmobilesecuritysdk/face/UmidSdkWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/face/UmidSdkWrapper;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/apmobilesecuritysdk/face/UmidSdkWrapper;->b:Z

    sput-object v1, Lcom/alipay/apmobilesecuritysdk/face/UmidSdkWrapper;->c:Landroid/content/Context;

    sput-object v1, Lcom/alipay/apmobilesecuritysdk/face/UmidSdkWrapper;->d:Lcom/alipay/apmobilesecuritysdk/face/UmidSdkWrapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    sput-boolean p0, Lcom/alipay/apmobilesecuritysdk/face/UmidSdkWrapper;->b:Z

    return p0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/alipay/apmobilesecuritysdk/face/UmidSdkWrapper;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/UmidSdkWrapper;
    .locals 2

    sget-object v0, Lcom/alipay/apmobilesecuritysdk/face/UmidSdkWrapper;->d:Lcom/alipay/apmobilesecuritysdk/face/UmidSdkWrapper;

    if-nez v0, :cond_1

    const-class v1, Lcom/alipay/apmobilesecuritysdk/face/UmidSdkWrapper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/apmobilesecuritysdk/face/UmidSdkWrapper;->d:Lcom/alipay/apmobilesecuritysdk/face/UmidSdkWrapper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/apmobilesecuritysdk/face/UmidSdkWrapper;

    invoke-direct {v0}, Lcom/alipay/apmobilesecuritysdk/face/UmidSdkWrapper;-><init>()V

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/face/UmidSdkWrapper;->d:Lcom/alipay/apmobilesecuritysdk/face/UmidSdkWrapper;

    sput-object p0, Lcom/alipay/apmobilesecuritysdk/face/UmidSdkWrapper;->c:Landroid/content/Context;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/alipay/apmobilesecuritysdk/face/UmidSdkWrapper;->d:Lcom/alipay/apmobilesecuritysdk/face/UmidSdkWrapper;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getSecurityToken()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/apmobilesecuritysdk/face/UmidSdkWrapper;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/alipay/apmobilesecuritysdk/face/UmidSdkWrapper;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/dp/DeviceSecuritySDK;->getInstance(Landroid/content/Context;)Lcom/taobao/dp/DeviceSecuritySDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/dp/DeviceSecuritySDK;->getSecurityToken()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/face/UmidSdkWrapper;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v0, Lcom/alipay/apmobilesecuritysdk/face/UmidSdkWrapper;->a:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public startUmidTaskSync(I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/alipay/apmobilesecuritysdk/face/UmidSdkWrapper;->b:Z

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    sget-object v0, Lcom/alipay/apmobilesecuritysdk/face/UmidSdkWrapper;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/dp/DeviceSecuritySDK;->getInstance(Landroid/content/Context;)Lcom/taobao/dp/DeviceSecuritySDK;

    move-result-object v0

    const-string/jumbo v1, ""

    const/4 v2, 0x0

    new-instance v3, Lcom/alipay/apmobilesecuritysdk/face/UmidSdkWrapper$1;

    invoke-direct {v3, p0}, Lcom/alipay/apmobilesecuritysdk/face/UmidSdkWrapper$1;-><init>(Lcom/alipay/apmobilesecuritysdk/face/UmidSdkWrapper;)V

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/taobao/dp/DeviceSecuritySDK;->initAsync(Ljava/lang/String;ILcom/taobao/dp/http/IUrlRequestService;Lcom/taobao/dp/client/IInitResultListener;)V

    const/16 v0, 0xbb8

    :goto_0
    sget-boolean v1, Lcom/alipay/apmobilesecuritysdk/face/UmidSdkWrapper;->b:Z

    if-nez v1, :cond_1

    if-lez v0, :cond_1

    const-wide/16 v1, 0xa

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    add-int/lit8 v0, v0, -0xa

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/alipay/apmobilesecuritysdk/face/UmidSdkWrapper;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/dp/DeviceSecuritySDK;->getInstance(Landroid/content/Context;)Lcom/taobao/dp/DeviceSecuritySDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/dp/DeviceSecuritySDK;->getSecurityToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/face/UmidSdkWrapper;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    sget-object v0, Lcom/alipay/apmobilesecuritysdk/face/UmidSdkWrapper;->a:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Umid request error."

    invoke-static {v1}, Lcom/alipay/security/mobile/module/commonutils/Dbg;->log(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/LOG;->getStackString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/Dbg;->log(Ljava/lang/String;)V

    goto :goto_1
.end method
