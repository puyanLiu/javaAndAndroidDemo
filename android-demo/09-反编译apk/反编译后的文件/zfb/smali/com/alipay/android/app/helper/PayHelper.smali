.class public Lcom/alipay/android/app/helper/PayHelper;
.super Ljava/lang/Object;
.source "PayHelper.java"


# static fields
.field private static a:Lcom/alipay/android/app/helper/PayHelper;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/alipay/android/app/IAlixPay;

.field private d:Ljava/lang/Object;

.field private e:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/app/helper/PayHelper;->a:Lcom/alipay/android/app/helper/PayHelper;

    .line 43
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-class v0, Lcom/alipay/android/app/IAlixPay;

    iput-object v0, p0, Lcom/alipay/android/app/helper/PayHelper;->d:Ljava/lang/Object;

    .line 67
    new-instance v0, Lcom/alipay/android/app/helper/c;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/helper/c;-><init>(Lcom/alipay/android/app/helper/PayHelper;)V

    iput-object v0, p0, Lcom/alipay/android/app/helper/PayHelper;->e:Landroid/content/ServiceConnection;

    .line 63
    iput-object p1, p0, Lcom/alipay/android/app/helper/PayHelper;->b:Landroid/content/Context;

    .line 65
    return-void
.end method

.method public static final a(Landroid/content/Context;)Lcom/alipay/android/app/helper/PayHelper;
    .locals 2

    .prologue
    .line 53
    sget-object v0, Lcom/alipay/android/app/helper/PayHelper;->a:Lcom/alipay/android/app/helper/PayHelper;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/alipay/android/app/helper/PayHelper;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/helper/PayHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/android/app/helper/PayHelper;->a:Lcom/alipay/android/app/helper/PayHelper;

    .line 55
    invoke-static {p0}, Lcom/alipay/android/app/assist/MspAssistUtil;->a(Landroid/content/Context;)V

    .line 56
    invoke-static {}, Lcom/alipay/android/app/helper/MspConfig;->r()Lcom/alipay/android/app/helper/MspConfig;

    move-result-object v0

    .line 57
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/alipay/android/app/sys/GlobalContext;->a(Landroid/content/Context;Lcom/alipay/android/app/IAppConfig;)V

    .line 59
    :cond_0
    sget-object v0, Lcom/alipay/android/app/helper/PayHelper;->a:Lcom/alipay/android/app/helper/PayHelper;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/alipay/android/app/IRemoteServiceCallback;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 85
    new-instance v1, Lcom/alipay/android/app/WallServiceAdapter;

    invoke-direct {v1}, Lcom/alipay/android/app/WallServiceAdapter;-><init>()V

    .line 87
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/alipay/android/app/WallServiceAdapter;->a(Lcom/alipay/android/app/IRemoteServiceCallback;)V

    .line 88
    invoke-virtual {v1, p0}, Lcom/alipay/android/app/WallServiceAdapter;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 92
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/android/app/helper/PayHelper;)V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/helper/PayHelper;->c:Lcom/alipay/android/app/IAlixPay;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/alipay/android/app/helper/PayHelper;->b:Landroid/content/Context;

    .line 132
    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 131
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 133
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 134
    if-nez v0, :cond_0

    .line 150
    :cond_0
    return-void
.end method

.method public final declared-synchronized b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/helper/PayHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/android/app/assist/MspAssistUtil;->d(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 158
    :goto_0
    monitor-exit p0

    return-object v0

    .line 155
    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 158
    const-string/jumbo v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
