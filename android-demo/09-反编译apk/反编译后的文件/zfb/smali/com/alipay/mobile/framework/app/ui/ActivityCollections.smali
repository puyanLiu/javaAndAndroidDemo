.class public Lcom/alipay/mobile/framework/app/ui/ActivityCollections;
.super Ljava/lang/Object;
.source "ActivityCollections.java"


# static fields
.field private static volatile a:Lcom/alipay/mobile/framework/app/ui/ActivityCollections;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/framework/app/ui/ActivityCollections$ActivityRef;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->b:Ljava/util/Map;

    .line 38
    return-void
.end method

.method public static declared-synchronized createInstance()Lcom/alipay/mobile/framework/app/ui/ActivityCollections;
    .locals 2

    .prologue
    .line 58
    const-class v1, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->a:Lcom/alipay/mobile/framework/app/ui/ActivityCollections;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;-><init>()V

    sput-object v0, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->a:Lcom/alipay/mobile/framework/app/ui/ActivityCollections;

    .line 61
    :cond_0
    sget-object v0, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->a:Lcom/alipay/mobile/framework/app/ui/ActivityCollections;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized destroy(Landroid/app/Activity;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 68
    const-class v5, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;

    monitor-enter v5

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->a:Lcom/alipay/mobile/framework/app/ui/ActivityCollections;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 103
    :cond_0
    :goto_0
    monitor-exit v5

    return-void

    .line 72
    :cond_1
    :try_start_1
    sget-object v1, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->a:Lcom/alipay/mobile/framework/app/ui/ActivityCollections;

    iget-object v1, v1, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 73
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 79
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/app/ui/ActivityCollections$ActivityRef;

    .line 82
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ui/ActivityCollections$ActivityRef;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/app/Activity;

    move-object v2, v0

    .line 84
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    if-eq v2, p0, :cond_2

    .line 86
    instance-of v1, v2, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    if-eqz v1, :cond_5

    .line 87
    const-string/jumbo v1, "void com.alipay.mobile.framework.app.ui.BaseActivity.finish()"

    move-object v4, v1

    .line 92
    :goto_2
    const/4 v1, 0x0

    new-array v7, v1, [Ljava/lang/Object;

    .line 93
    invoke-static {v4, v2, v7}, Lcom/alipay/mobile/aspect/FrameworkPointcutCall;->onCallBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 94
    invoke-static {v4, v2, v7}, Lcom/alipay/mobile/aspect/FrameworkPointcutCall;->onCallAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 95
    if-eqz v1, :cond_3

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    .line 96
    :cond_3
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    move-object v2, v3

    .line 99
    :cond_4
    invoke-static {v4, v2, v7}, Lcom/alipay/mobile/aspect/FrameworkPointcutCall;->onCallAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 68
    :catchall_0
    move-exception v1

    monitor-exit v5

    throw v1

    .line 88
    :cond_5
    :try_start_2
    instance-of v1, v2, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-eqz v1, :cond_7

    .line 89
    const-string/jumbo v1, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.finish()"

    move-object v4, v1

    goto :goto_2

    .line 102
    :cond_6
    sget-object v1, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->a:Lcom/alipay/mobile/framework/app/ui/ActivityCollections;

    iget-object v1, v1, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_7
    move-object v4, v3

    goto :goto_2
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/framework/app/ui/ActivityCollections;
    .locals 2

    .prologue
    .line 46
    const-class v1, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->a:Lcom/alipay/mobile/framework/app/ui/ActivityCollections;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;-><init>()V

    sput-object v0, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->a:Lcom/alipay/mobile/framework/app/ui/ActivityCollections;

    .line 49
    :cond_0
    sget-object v0, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->a:Lcom/alipay/mobile/framework/app/ui/ActivityCollections;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized recordActivity(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 111
    monitor-enter p0

    if-eqz p1, :cond_4

    .line 112
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    const-string/jumbo v1, "ActivityCollections"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "recordActivity(key="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->b:Ljava/util/Map;

    new-instance v2, Lcom/alipay/mobile/framework/app/ui/ActivityCollections$ActivityRef;

    invoke-direct {v2, p0, p1}, Lcom/alipay/mobile/framework/app/ui/ActivityCollections$ActivityRef;-><init>(Lcom/alipay/mobile/framework/app/ui/ActivityCollections;Landroid/app/Activity;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 119
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 120
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 121
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 122
    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/app/ui/ActivityCollections$ActivityRef;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ui/ActivityCollections$ActivityRef;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 123
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 126
    :cond_2
    :try_start_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 127
    iget-object v2, p0, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->b:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 130
    :cond_3
    const-string/jumbo v0, "ActivityCollections"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "size="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->b:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    :cond_4
    monitor-exit p0

    return-void
.end method
