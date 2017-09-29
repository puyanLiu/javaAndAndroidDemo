.class public Lcom/alipay/mobile/beehive/photo/data/PhotoGroup;
.super Ljava/lang/Object;
.source "PhotoGroup.java"


# instance fields
.field private id:Ljava/lang/String;

.field private offset:I

.field private photoInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/beehive/service/PhotoInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoGroup;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoGroup;->offset:I

    return v0
.end method

.method public getPhotoInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/beehive/service/PhotoInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoGroup;->photoInfoList:Ljava/util/List;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoGroup;->id:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setOffset(I)V
    .locals 0

    .prologue
    .line 43
    iput p1, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoGroup;->offset:I

    .line 44
    return-void
.end method

.method public setPhotoInfoList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/alipay/mobile/beehive/service/PhotoInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoGroup;->photoInfoList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoGroup;->photoInfoList:Ljava/util/List;

    .line 35
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoGroup;->photoInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 36
    return-void

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoGroup;->photoInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/data/PhotoGroup;->photoInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method
