.class public Lanetwork/channel/http/NetworkSdkSetting;
.super Ljava/lang/Object;
.source "NetworkSdkSetting.java"


# static fields
.field static a:Ljava/lang/Boolean;

.field public static b:Landroid/content/Context;

.field private static c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 27
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "api.m.taobao.com"

    aput-object v1, v0, v2

    sput-object v0, Lanetwork/channel/http/NetworkSdkSetting;->c:[Ljava/lang/String;

    .line 28
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lanetwork/channel/http/NetworkSdkSetting;->a:Ljava/lang/Boolean;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 36
    if-nez p0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 39
    :cond_0
    :try_start_0
    sget-object v1, Lanetwork/channel/http/NetworkSdkSetting;->a:Ljava/lang/Boolean;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :try_start_1
    sget-object v0, Lanetwork/channel/http/NetworkSdkSetting;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 41
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lanetwork/channel/http/NetworkSdkSetting;->a:Ljava/lang/Boolean;

    .line 42
    sput-object p0, Lanetwork/channel/http/NetworkSdkSetting;->b:Landroid/content/Context;

    .line 43
    invoke-static {p0}, Lanetwork/channel/http/NetworkStatusHelper;->a(Landroid/content/Context;)V

    .line 44
    invoke-static {p0}, Lanetwork/channel/dns/DnsMgr;->a(Landroid/content/Context;)V

    .line 45
    sget-object v0, Lanetwork/channel/http/NetworkSdkSetting;->c:[Ljava/lang/String;

    invoke-static {v0}, Lanetwork/channel/dns/DNSOptimize;->a([Ljava/lang/String;)V

    .line 46
    invoke-static {p0}, Lanetwork/channel/cookie/CookieMgr;->a(Landroid/content/Context;)V

    .line 47
    invoke-static {p0}, Lanetwork/channel/util/NetworkSharePerferenceMgr;->a(Landroid/content/Context;)V

    .line 48
    invoke-static {p0}, Lanetwork/channel/monitor/Monitor;->a(Landroid/content/Context;)V

    .line 49
    invoke-static {}, Lanetwork/channel/degrade/util/DegradeHelper;->a()V

    .line 50
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lanetwork/channel/http/b;

    invoke-direct {v2, p0}, Lanetwork/channel/http/b;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 75
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 78
    :catch_0
    move-exception v0

    .line 77
    const-string/jumbo v1, "ANet.NetworkSdkSetting"

    const-string/jumbo v2, "[init]"

    invoke-static {v1, v2, v0}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
