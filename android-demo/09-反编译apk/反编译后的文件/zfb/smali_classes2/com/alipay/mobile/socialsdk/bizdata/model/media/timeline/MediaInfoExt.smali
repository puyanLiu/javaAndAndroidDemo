.class public Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaInfoExt;
.super Ljava/lang/Object;
.source "MediaInfoExt.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private h:I

.field private w:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaInfoExt;->w:I

    .line 12
    iput p2, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaInfoExt;->h:I

    .line 13
    return-void
.end method


# virtual methods
.method public getH()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaInfoExt;->h:I

    return v0
.end method

.method public getW()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaInfoExt;->w:I

    return v0
.end method

.method public setH(I)V
    .locals 0

    .prologue
    .line 32
    iput p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaInfoExt;->h:I

    .line 33
    return-void
.end method

.method public setW(I)V
    .locals 0

    .prologue
    .line 24
    iput p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaInfoExt;->w:I

    .line 25
    return-void
.end method
