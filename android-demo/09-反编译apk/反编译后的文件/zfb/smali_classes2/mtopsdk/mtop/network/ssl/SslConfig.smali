.class public Lmtopsdk/mtop/network/ssl/SslConfig;
.super Ljava/lang/Object;
.source "SslConfig.java"


# static fields
.field private static sslCallback:Lanetwork/channel/ssl/ISslCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lmtopsdk/mtop/network/ssl/SslConfig;->sslCallback:Lanetwork/channel/ssl/ISslCallback;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method synthetic constructor <init>(Lmtopsdk/mtop/network/ssl/SslConfig$1;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lmtopsdk/mtop/network/ssl/SslConfig;-><init>()V

    return-void
.end method

.method public static declared-synchronized instance()Lmtopsdk/mtop/network/ssl/SslConfig;
    .locals 2

    .prologue
    .line 40
    const-class v0, Lmtopsdk/mtop/network/ssl/SslConfig;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lmtopsdk/mtop/network/ssl/SslConfig$SingletonHelper;->access$100()Lmtopsdk/mtop/network/ssl/SslConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getSslCallback(Landroid/content/Context;)Lanetwork/channel/ssl/ISslCallback;
    .locals 2

    .prologue
    .line 44
    if-nez p1, :cond_0

    .line 45
    const/4 v0, 0x0

    .line 52
    :goto_0
    return-object v0

    .line 47
    :cond_0
    invoke-static {}, Lmtopsdk/mtop/network/ssl/SslConfig$SingletonHelper;->access$100()Lmtopsdk/mtop/network/ssl/SslConfig;

    move-result-object v1

    monitor-enter v1

    .line 48
    :try_start_0
    sget-object v0, Lmtopsdk/mtop/network/ssl/SslConfig;->sslCallback:Lanetwork/channel/ssl/ISslCallback;

    if-nez v0, :cond_1

    .line 49
    new-instance v0, Lanetwork/channel/ssl/SslCallbackImpl;

    invoke-direct {v0, p1}, Lanetwork/channel/ssl/SslCallbackImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lmtopsdk/mtop/network/ssl/SslConfig;->sslCallback:Lanetwork/channel/ssl/ISslCallback;

    .line 51
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    sget-object v0, Lmtopsdk/mtop/network/ssl/SslConfig;->sslCallback:Lanetwork/channel/ssl/ISslCallback;

    goto :goto_0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
