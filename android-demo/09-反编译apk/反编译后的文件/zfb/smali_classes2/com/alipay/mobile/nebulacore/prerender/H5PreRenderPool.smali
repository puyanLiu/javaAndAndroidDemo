.class public Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;
.super Ljava/lang/Object;
.source "H5PreRenderPool.java"


# static fields
.field public static instance:Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebulacore/ui/H5Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Z

.field private f:Landroid/os/Handler;

.field private g:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->a:Ljava/util/Map;

    .line 20
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->b:Ljava/util/List;

    .line 44
    return-void
.end method

.method public static final getInstance()Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;
    .locals 2

    .prologue
    .line 35
    const-class v1, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    monitor-enter v1

    .line 36
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->instance:Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->instance:Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    .line 35
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    sget-object v0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->instance:Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addParamList(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_0
    return-void
.end method

.method public containsListParam(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsPoolKey(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getFragment(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    .line 143
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFragmentParams(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 150
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPreFragmentCount()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPreFragmentPool()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebulacore/ui/H5Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->a:Ljava/util/Map;

    return-object v0
.end method

.method public getPreHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->f:Landroid/os/Handler;

    return-object v0
.end method

.method public getPreParamList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->b:Ljava/util/List;

    return-object v0
.end method

.method public getPreRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->g:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getUrls()Lcom/alibaba/fastjson/JSONArray;
    .locals 5

    .prologue
    .line 60
    new-instance v1, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    :cond_0
    return-object v1

    .line 62
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 63
    const-string/jumbo v3, "url="

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 64
    const/4 v3, 0x0

    const-string/jumbo v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->a:Ljava/util/Map;

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->b:Ljava/util/List;

    if-nez v0, :cond_1

    .line 51
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->b:Ljava/util/List;

    .line 53
    :cond_1
    return-void
.end method

.method public isIntercept()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->e:Z

    return v0
.end method

.method public isPreRender()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->d:Z

    return v0
.end method

.method public putPreView(Ljava/lang/String;Lcom/alipay/mobile/nebulacore/ui/H5Fragment;)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 166
    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->b:Ljava/util/List;

    .line 167
    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->a:Ljava/util/Map;

    .line 168
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->c:Ljava/lang/String;

    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->d:Z

    .line 170
    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->f:Landroid/os/Handler;

    .line 171
    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->g:Ljava/lang/Runnable;

    .line 172
    return-void
.end method

.method public removeFragment(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_0
    return-void
.end method

.method public removeList(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 163
    :cond_0
    return-void
.end method

.method public setCurrentTag(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->c:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setIsIntercept(Z)V
    .locals 0

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->e:Z

    .line 121
    return-void
.end method

.method public setIsPreRender(Z)V
    .locals 0

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->d:Z

    .line 105
    return-void
.end method

.method public setPreHandler(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->f:Landroid/os/Handler;

    .line 129
    return-void
.end method

.method public setPreRunnable(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->g:Ljava/lang/Runnable;

    .line 137
    return-void
.end method
