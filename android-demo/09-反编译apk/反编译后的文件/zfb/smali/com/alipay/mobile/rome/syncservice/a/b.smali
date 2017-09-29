.class public final Lcom/alipay/mobile/rome/syncservice/a/b;
.super Ljava/lang/Object;
.source "LinkSyncUserInfo.java"


# static fields
.field private static volatile a:Ljava/lang/String;

.field private static volatile b:Ljava/lang/String;


# direct methods
.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/a/b;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/a/b;->c()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/syncservice/a/b;->a:Ljava/lang/String;

    .line 53
    :cond_0
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/a/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 33
    const-class v1, Lcom/alipay/mobile/rome/syncservice/a/b;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/a/b;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    sput-object p0, Lcom/alipay/mobile/rome/syncservice/a/b;->a:Ljava/lang/String;

    .line 36
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/c/a;->a()V

    .line 40
    :cond_0
    sput-object p0, Lcom/alipay/mobile/rome/syncservice/a/b;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    monitor-exit v1

    return-void

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/a/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    sput-object p0, Lcom/alipay/mobile/rome/syncservice/a/b;->b:Ljava/lang/String;

    .line 74
    return-void
.end method

.method private static c()Ljava/lang/String;
    .locals 5

    .prologue
    .line 78
    const-string/jumbo v0, ""

    .line 81
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/e/a;->a()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    .line 83
    if-eqz v1, :cond_0

    .line 84
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 90
    :cond_0
    :goto_0
    return-object v0

    .line 86
    :catch_0
    move-exception v1

    .line 87
    const-string/jumbo v2, "LinkSyncUserInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getUserIdCurrent: [ Exception="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " ]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
