.class public Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;
.super Ljava/lang/Object;
.source "DrawingCache.java"

# interfaces
.implements Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDrawingCache;
.implements Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Poolable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDrawingCache",
        "<",
        "Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;",
        ">;",
        "Lcom/alipay/mobile/beehive/compositeui/danmaku/model/objectpool/Poolable",
        "<",
        "Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;",
        ">;"
    }
.end annotation


# instance fields
.field private mHolder:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;

.field private mIsPooled:Z

.field private mNextElement:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;

.field private mSize:I

.field private referenceCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;->mSize:I

    .line 20
    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;->referenceCount:I

    .line 23
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;

    invoke-direct {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;->mHolder:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;

    .line 24
    return-void
.end method


# virtual methods
.method public build(IIIZ)V
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;->mHolder:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;

    .line 29
    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;

    invoke-direct {v0, p1, p2, p3}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;-><init>(III)V

    .line 34
    :goto_0
    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;->mHolder:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;

    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;->mHolder:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;->mHolder:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;

    iget-object v1, v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;->mSize:I

    .line 36
    return-void

    .line 32
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->buildCache(IIIZ)V

    goto :goto_0
.end method

.method public decreaseReference()V
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;->referenceCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;->referenceCount:I

    .line 105
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;->mHolder:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;->mHolder:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->recycle()V

    .line 60
    :cond_0
    iput v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;->mSize:I

    .line 61
    iput v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;->referenceCount:I

    .line 62
    return-void
.end method

.method public erase()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;->mHolder:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;

    .line 41
    if-nez v0, :cond_0

    .line 45
    :goto_0
    return-void

    .line 44
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->erase()V

    goto :goto_0
.end method

.method public get()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;->mHolder:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;->mHolder:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 50
    :cond_0
    const/4 v0, 0x0

    .line 52
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;->mHolder:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;

    goto :goto_0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;->get()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;

    move-result-object v0

    return-object v0
.end method

.method public getNextPoolable()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;->mNextElement:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;

    return-object v0
.end method

.method public bridge synthetic getNextPoolable()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;->getNextPoolable()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;

    move-result-object v0

    return-object v0
.end method

.method public hasReferences()Z
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;->referenceCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public height()I
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;->mHolder:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;->mHolder:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;

    iget v0, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->height:I

    .line 120
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public increaseReference()V
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;->referenceCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;->referenceCount:I

    .line 100
    return-void
.end method

.method public isPooled()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;->mIsPooled:Z

    return v0
.end method

.method public setNextPoolable(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;->mNextElement:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;

    .line 75
    return-void
.end method

.method public bridge synthetic setNextPoolable(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;->setNextPoolable(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;)V

    return-void
.end method

.method public setPooled(Z)V
    .locals 0

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;->mIsPooled:Z

    .line 90
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;->mHolder:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;

    if-eqz v0, :cond_0

    .line 67
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;->mSize:I

    .line 69
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public width()I
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;->mHolder:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;->mHolder:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;

    iget v0, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->width:I

    .line 112
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
