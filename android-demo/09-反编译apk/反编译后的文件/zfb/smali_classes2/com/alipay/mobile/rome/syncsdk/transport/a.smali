.class public Lcom/alipay/mobile/rome/syncsdk/transport/a;
.super Ljava/lang/Object;
.source "TransportManager.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static volatile b:Ljava/lang/String;

.field private static volatile c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/alipay/mobile/rome/syncsdk/transport/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/transport/a;->a:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, "spdy"

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/transport/a;->b:Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    sput v0, Lcom/alipay/mobile/rome/syncsdk/transport/a;->c:I

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 50
    const-class v1, Lcom/alipay/mobile/rome/syncsdk/transport/a;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "ssl"

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/transport/a;->b:Ljava/lang/String;

    .line 52
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/transport/a;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    const-string/jumbo v0, "ssl"

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/transport/a;->b:Ljava/lang/String;

    .line 60
    :cond_0
    :goto_0
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/transport/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getSelectedChannel: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/alipay/mobile/rome/syncsdk/transport/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/rome/syncsdk/transport/a;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " 1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/transport/a;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 55
    :cond_1
    :try_start_1
    sget v0, Lcom/alipay/mobile/rome/syncsdk/transport/a;->c:I

    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    .line 56
    const-string/jumbo v0, "spdy"

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/transport/a;->b:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 71
    const-class v1, Lcom/alipay/mobile/rome/syncsdk/transport/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/transport/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setChannelConfig: [ channel="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ][ currChannel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 72
    sget-object v3, Lcom/alipay/mobile/rome/syncsdk/transport/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    sput-object p0, Lcom/alipay/mobile/rome/syncsdk/transport/a;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit v1

    return-void

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    const-class v0, Lcom/alipay/mobile/rome/syncsdk/transport/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/transport/a;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized c()V
    .locals 2

    .prologue
    .line 110
    const-class v0, Lcom/alipay/mobile/rome/syncsdk/transport/a;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    sput v1, Lcom/alipay/mobile/rome/syncsdk/transport/a;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    monitor-exit v0

    return-void

    .line 110
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized d()V
    .locals 4

    .prologue
    .line 117
    const-class v1, Lcom/alipay/mobile/rome/syncsdk/transport/a;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/alipay/mobile/rome/syncsdk/transport/a;->c:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/alipay/mobile/rome/syncsdk/transport/a;->c:I

    .line 118
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/transport/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "addSpdyFailCount: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/alipay/mobile/rome/syncsdk/transport/a;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    monitor-exit v1

    return-void

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized e()Z
    .locals 6

    .prologue
    .line 125
    const-class v1, Lcom/alipay/mobile/rome/syncsdk/transport/a;

    monitor-enter v1

    const/4 v0, 0x0

    .line 128
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportStrategy;->isLongLinkSpdySwitchOn()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 134
    :goto_0
    monitor-exit v1

    return v0

    .line 129
    :catch_0
    move-exception v2

    .line 130
    :try_start_1
    sget-object v3, Lcom/alipay/mobile/rome/syncsdk/transport/a;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "isSpdyMasterSwitchOn: [ ret=false ][ TException="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " ]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 130
    invoke-static {v3, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
