.class public Lcom/alipay/mobile/aspect/FrameworkPointCutManager;
.super Ljava/lang/Object;
.source "FrameworkPointCutManager.java"


# static fields
.field static final TAG:Ljava/lang/String; = "PointCut"

.field private static a:Lcom/alipay/mobile/aspect/FrameworkPointCutManager;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/aspect/Advice;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->b:Ljava/util/Map;

    .line 20
    return-void
.end method

.method public static getInstance()Lcom/alipay/mobile/aspect/FrameworkPointCutManager;
    .locals 2

    .prologue
    .line 23
    sget-object v0, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->a:Lcom/alipay/mobile/aspect/FrameworkPointCutManager;

    if-nez v0, :cond_1

    .line 24
    const-class v1, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;

    monitor-enter v1

    .line 25
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->a:Lcom/alipay/mobile/aspect/FrameworkPointCutManager;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;

    invoke-direct {v0}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;-><init>()V

    sput-object v0, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->a:Lcom/alipay/mobile/aspect/FrameworkPointCutManager;

    .line 28
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_1
    sget-object v0, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->a:Lcom/alipay/mobile/aspect/FrameworkPointCutManager;

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getAdviceOnPointCut(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/aspect/Advice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 74
    return-object v0
.end method

.method public registerPointCutAdvice(Ljava/lang/String;Lcom/alipay/mobile/aspect/Advice;)V
    .locals 3

    .prologue
    .line 39
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 43
    if-nez v0, :cond_2

    .line 44
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 45
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v1, p0, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string/jumbo v0, "PointCut"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "registerPointCutAdvice put:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :cond_2
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    const-string/jumbo v0, "PointCut"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "registerPointCutAdvice add:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerPointCutAdvice([Ljava/lang/String;Lcom/alipay/mobile/aspect/Advice;)V
    .locals 3

    .prologue
    .line 60
    if-eqz p1, :cond_0

    .line 61
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 62
    invoke-virtual {p0, v2, p2}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->registerPointCutAdvice(Ljava/lang/String;Lcom/alipay/mobile/aspect/Advice;)V

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_0
    return-void
.end method
