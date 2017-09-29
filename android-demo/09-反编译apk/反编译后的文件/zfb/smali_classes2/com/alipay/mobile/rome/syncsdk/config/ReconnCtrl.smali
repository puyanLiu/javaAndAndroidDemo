.class public Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;
.super Ljava/lang/Object;
.source "ReconnCtrl.java"


# static fields
.field public static final MAX_CONTROL_SECONDS:I = 0x258

.field public static final MIN_CONTROL_SECONDS:I = 0xa

.field private static volatile a:Ljava/lang/String;

.field private static volatile b:I

.field private static volatile c:Z

.field private static volatile d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    const-string/jumbo v0, "active"

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->a:Ljava/lang/String;

    .line 23
    sput v1, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->b:I

    .line 32
    sput-boolean v1, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->c:Z

    .line 36
    sput v1, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->d:I

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized AddConnSeq()V
    .locals 4

    .prologue
    .line 80
    const-class v1, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->d:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->d:I

    .line 81
    const-string/jumbo v0, "ReconnCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "AddConnSeq["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    monitor-exit v1

    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized addFailCount()V
    .locals 4

    .prologue
    .line 107
    const-class v1, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->b:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->b:I

    .line 108
    const-string/jumbo v0, "ReconnCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "addFailCount["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit v1

    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized decreaseFailCount()V
    .locals 4

    .prologue
    .line 123
    const-class v1, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->b:I

    if-lez v0, :cond_0

    .line 124
    sget v0, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->b:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->b:I

    .line 126
    :cond_0
    const-string/jumbo v0, "ReconnCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "decreaseFailCount["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    monitor-exit v1

    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getConnAction()Ljava/lang/String;
    .locals 4

    .prologue
    .line 194
    const-class v1, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "ReconnCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getConnAction:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getConnSeq()I
    .locals 4

    .prologue
    .line 88
    const-class v1, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "ReconnCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getConnSeq["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    sget v0, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getFailCount()I
    .locals 4

    .prologue
    .line 115
    const-class v1, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "ReconnCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getFailCount["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    sget v0, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized isConnActionActive()Z
    .locals 3

    .prologue
    .line 144
    const-class v1, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->a:Ljava/lang/String;

    const-string/jumbo v2, "active"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    const/4 v0, 0x1

    .line 147
    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized isForceStopped()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 44
    const-class v1, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v2, "ReconnCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "  flowControlByServer="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v4, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->c:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils;->getCurrentAppStatus()Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;->BACKGROUND:Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v3, :cond_1

    .line 53
    :cond_0
    :goto_0
    monitor-exit v1

    return v0

    .line 49
    :cond_1
    :try_start_1
    sget-object v2, Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils;->SCREEN_STATUS:Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$ScreenStatus;

    sget-object v3, Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$ScreenStatus;->SCREEN_OFF:Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$ScreenStatus;

    if-eq v2, v3, :cond_0

    .line 53
    sget-boolean v0, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->c:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized isReconnEnable()Z
    .locals 5

    .prologue
    .line 156
    const-class v1, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;

    monitor-enter v1

    const/4 v0, 0x0

    .line 157
    :try_start_0
    sget v2, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->b:I

    const/16 v3, 0xa

    if-ge v2, v3, :cond_0

    .line 158
    const/4 v0, 0x1

    .line 161
    :cond_0
    const-string/jumbo v2, "ReconnCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "isReconnEnable: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 162
    sget v4, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "][10]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 161
    invoke-static {v2, v3}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    monitor-exit v1

    return v0

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized resetConnSeq()V
    .locals 3

    .prologue
    .line 71
    const-class v1, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "ReconnCtrl"

    const-string/jumbo v2, "resetConnSeq"

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const/4 v0, 0x0

    sput v0, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit v1

    return-void

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized resetFailCount()V
    .locals 3

    .prologue
    .line 98
    const-class v1, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "ReconnCtrl"

    const-string/jumbo v2, "resetFailCount"

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const/4 v0, 0x0

    sput v0, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    monitor-exit v1

    return-void

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setConnAction(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 173
    const-class v1, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "ReconnCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setConnAction:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    if-nez p0, :cond_0

    .line 176
    const-string/jumbo p0, ""

    .line 178
    :cond_0
    sput-object p0, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    monitor-exit v1

    return-void

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setConnActionActive()V
    .locals 3

    .prologue
    .line 185
    const-class v1, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "ReconnCtrl"

    const-string/jumbo v2, "setConnActionActive"

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string/jumbo v0, "active"

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    monitor-exit v1

    return-void

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setFailCountForOnceEnable()V
    .locals 4

    .prologue
    .line 133
    const-class v1, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;

    monitor-enter v1

    const/16 v0, 0x9

    :try_start_0
    sput v0, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->b:I

    .line 135
    const-string/jumbo v0, "ReconnCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setFailCountForOnceEnable["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    monitor-exit v1

    return-void

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setFlowCotrol(Z)V
    .locals 4

    .prologue
    .line 60
    const-class v1, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "ReconnCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setFlowCotrol:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    sput-boolean p0, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit v1

    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
