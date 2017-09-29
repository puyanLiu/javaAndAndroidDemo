.class public Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;
.super Ljava/lang/Object;
.source "H5FragmentManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5FragmentManager"


# instance fields
.field private a:Landroid/support/v4/app/FragmentManager;

.field private b:I

.field private c:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/alipay/mobile/nebulacore/ui/H5Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->a:Landroid/support/v4/app/FragmentManager;

    .line 28
    sget v0, Lcom/alipay/mobile/nebulacore/R$id;->h5_fragment:I

    iput v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->b:I

    .line 29
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->c:Ljava/util/Stack;

    .line 30
    invoke-static {}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getInstance()Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->d:Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    .line 31
    return-void
.end method

.method private a(Lcom/alipay/mobile/nebulacore/ui/H5Fragment;)Z
    .locals 1

    .prologue
    .line 108
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    :cond_0
    const/4 v0, 0x0

    .line 115
    :goto_0
    return v0

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->a:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 113
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 115
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addFragment(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->d:Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getPreFragmentPool()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->d:Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    .line 39
    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->containsPoolKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->d:Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->setIsPreRender(Z)V

    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->d:Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getFragment(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->pushFragment(Lcom/alipay/mobile/nebulacore/ui/H5Fragment;Z)Z

    .line 49
    :goto_0
    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->d:Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->setIsPreRender(Z)V

    .line 46
    new-instance v0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;-><init>()V

    .line 47
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0, v0, v2}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->pushFragment(Lcom/alipay/mobile/nebulacore/ui/H5Fragment;Z)Z

    goto :goto_0
.end method

.method public declared-synchronized addPreFragment(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->d:Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->containsPoolKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;-><init>()V

    .line 54
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 55
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->a:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 56
    iget v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->b:I

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 57
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 58
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->d:Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->putPreView(Ljava/lang/String;Lcom/alipay/mobile/nebulacore/ui/H5Fragment;)V

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->d:Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->containsListParam(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->d:Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->addParamList(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :cond_0
    monitor-exit p0

    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clearPreFragment(II)V
    .locals 3

    .prologue
    .line 169
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->d:Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getPreFragmentPool()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->d:Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getPreParamList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 182
    :cond_0
    return-void

    .line 172
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 173
    :goto_0
    if-le p1, p2, :cond_2

    .line 178
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 179
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->d:Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->removeList(Ljava/lang/Object;)V

    goto :goto_1

    .line 174
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->d:Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->d:Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    invoke-virtual {v2, p1}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getFragmentParams(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getFragment(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->a(Lcom/alipay/mobile/nebulacore/ui/H5Fragment;)Z

    .line 175
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->d:Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->d:Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    invoke-virtual {v2, p1}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getFragmentParams(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->removeFragment(Ljava/lang/String;)V

    .line 176
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->d:Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getFragmentParams(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 173
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public getFragmentCount()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->c:Ljava/util/Stack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public peekFragment()Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->c:Ljava/util/Stack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    :cond_0
    const/4 v0, 0x0

    .line 69
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    goto :goto_0
.end method

.method public popFragment()Z
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 120
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->removeFragment(I)Z

    move-result v0

    return v0
.end method

.method public pushFragment(Lcom/alipay/mobile/nebulacore/ui/H5Fragment;Z)Z
    .locals 3

    .prologue
    .line 73
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->c:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    :cond_1
    const/4 v0, 0x0

    .line 94
    :goto_0
    return v0

    .line 77
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    .line 79
    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->a(Lcom/alipay/mobile/nebulacore/ui/H5Fragment;)Z

    .line 82
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->c:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->c:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->a:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->d:Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getPreFragmentPool()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 87
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->d:Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->containsPoolKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 88
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 89
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->d:Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->setCurrentTag(Ljava/lang/String;)V

    .line 94
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 92
    :cond_5
    iget v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->b:I

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_1
.end method

.method public removeFragment(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 124
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->c:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    :cond_0
    :goto_0
    return v0

    .line 128
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->c:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    .line 129
    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    .line 133
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->c:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    .line 134
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->removeFragment(Lcom/alipay/mobile/nebulacore/ui/H5Fragment;)Z

    move-result v0

    goto :goto_0
.end method

.method public removeFragment(Lcom/alipay/mobile/nebulacore/ui/H5Fragment;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 138
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->c:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->d:Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getPreFragmentPool()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 139
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->d:Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->containsPoolKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 165
    :cond_1
    :goto_0
    return v2

    .line 143
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 148
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_5

    move v0, v1

    .line 149
    :goto_1
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->a:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 150
    invoke-virtual {v3, p1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 152
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->c:Ljava/util/Stack;

    invoke-virtual {v3, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 154
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->d:Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getPreParamList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->d:Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getPreParamList()Ljava/util/List;

    move-result-object v3

    .line 155
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 156
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->d:Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getPreFragmentPool()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->d:Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getPreParamList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 159
    :cond_3
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 160
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    .line 161
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 163
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->d:Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->setCurrentTag(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->d:Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->setIsPreRender(Z)V

    move v2, v1

    .line 165
    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 148
    goto :goto_1

    .line 161
    :cond_6
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->a:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v4/app/FragmentTransaction;->attach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_2
.end method
