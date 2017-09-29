.class Lcom/taobao/gcanvas/GAudioHandler$VolumeObserver;
.super Landroid/database/ContentObserver;
.source "GAudioHandler.java"


# instance fields
.field private final mGAudioHandlerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/taobao/gcanvas/GAudioHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/taobao/gcanvas/GAudioHandler;Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 76
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/taobao/gcanvas/GAudioHandler$VolumeObserver;->mGAudioHandlerRef:Ljava/lang/ref/WeakReference;

    .line 77
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 82
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 84
    iget-object v0, p0, Lcom/taobao/gcanvas/GAudioHandler$VolumeObserver;->mGAudioHandlerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/gcanvas/GAudioHandler;

    .line 85
    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {v0}, Lcom/taobao/gcanvas/GAudioHandler;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "mode_ringer"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 87
    if-eq v1, v3, :cond_0

    .line 89
    invoke-static {v0}, Lcom/taobao/gcanvas/GAudioHandler;->access$000(Lcom/taobao/gcanvas/GAudioHandler;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 90
    invoke-static {v0}, Lcom/taobao/gcanvas/GAudioHandler;->access$000(Lcom/taobao/gcanvas/GAudioHandler;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/gcanvas/GAudioPlayer;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/taobao/gcanvas/GAudioPlayer;->setVolume(F)V

    goto :goto_0

    .line 96
    :cond_0
    invoke-static {v0}, Lcom/taobao/gcanvas/GAudioHandler;->access$000(Lcom/taobao/gcanvas/GAudioHandler;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 97
    invoke-static {v0}, Lcom/taobao/gcanvas/GAudioHandler;->access$000(Lcom/taobao/gcanvas/GAudioHandler;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/gcanvas/GAudioPlayer;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Lcom/taobao/gcanvas/GAudioPlayer;->setVolume(F)V

    goto :goto_1

    .line 101
    :cond_1
    return-void
.end method
