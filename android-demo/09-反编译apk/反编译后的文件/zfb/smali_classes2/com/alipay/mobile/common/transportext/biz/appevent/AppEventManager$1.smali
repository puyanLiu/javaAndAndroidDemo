.class final Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager$1;
.super Ljava/lang/Object;
.source "AppEventManager.java"

# interfaces
.implements Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager$EventInterface;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private check()Z
    .locals 1

    .prologue
    .line 105
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager;->access$000()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    const/4 v0, 0x0

    .line 108
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final onAppLeaveEvent()V
    .locals 5

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager$1;->check()Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    :cond_0
    return-void

    .line 94
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager;->access$000()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager;->access$000()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager$EventInterface;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager$EventInterface;

    .line 95
    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 97
    :try_start_0
    invoke-interface {v3}, Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager$EventInterface;->onAppLeaveEvent()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    :catch_0
    move-exception v3

    .line 99
    const-string/jumbo v4, "amnet_AppEventManager"

    invoke-static {v4, v3}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final onAppResumeEvent()V
    .locals 5

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager$1;->check()Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    :cond_0
    return-void

    .line 64
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager;->access$000()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager;->access$000()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager$EventInterface;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager$EventInterface;

    .line 65
    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 67
    :try_start_0
    invoke-interface {v3}, Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager$EventInterface;->onAppResumeEvent()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    :catch_0
    move-exception v3

    .line 69
    const-string/jumbo v4, "amnet_AppEventManager"

    invoke-static {v4, v3}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final onSeceenOffEvent()V
    .locals 5

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager$1;->check()Z

    move-result v0

    if-nez v0, :cond_1

    .line 58
    :cond_0
    return-void

    .line 50
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager;->access$000()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager;->access$000()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager$EventInterface;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager$EventInterface;

    .line 51
    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 53
    :try_start_0
    invoke-interface {v3}, Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager$EventInterface;->onSeceenOffEvent()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    :catch_0
    move-exception v3

    .line 55
    const-string/jumbo v4, "amnet_AppEventManager"

    invoke-static {v4, v3}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final onSeceenOnEvent()V
    .locals 5

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager$1;->check()Z

    move-result v0

    if-nez v0, :cond_1

    .line 43
    :cond_0
    return-void

    .line 35
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager;->access$000()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager;->access$000()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager$EventInterface;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager$EventInterface;

    .line 36
    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 38
    :try_start_0
    invoke-interface {v3}, Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager$EventInterface;->onSeceenOnEvent()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    :catch_0
    move-exception v3

    .line 40
    const-string/jumbo v4, "amnet_AppEventManager"

    invoke-static {v4, v3}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final onSyncInitChanged(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager$1;->check()Z

    move-result v0

    if-nez v0, :cond_1

    .line 87
    :cond_0
    return-void

    .line 79
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager;->access$000()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager;->access$000()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager$EventInterface;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager$EventInterface;

    .line 80
    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 82
    :try_start_0
    invoke-interface {v3, p1}, Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager$EventInterface;->onSyncInitChanged(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    :catch_0
    move-exception v3

    .line 84
    const-string/jumbo v4, "amnet_AppEventManager"

    invoke-static {v4, v3}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
