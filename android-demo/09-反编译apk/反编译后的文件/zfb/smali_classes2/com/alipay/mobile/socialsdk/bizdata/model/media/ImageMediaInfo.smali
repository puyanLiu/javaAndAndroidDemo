.class public Lcom/alipay/mobile/socialsdk/bizdata/model/media/ImageMediaInfo;
.super Lcom/alipay/mobile/socialsdk/bizdata/model/media/CommonMediaInfo;
.source "ImageMediaInfo.java"


# instance fields
.field private h:F

.field private i:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private w:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/CommonMediaInfo;-><init>()V

    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/CommonMediaInfo;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ImageMediaInfo;->i:Ljava/lang/String;

    .line 13
    int-to-float v0, p2

    iput v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ImageMediaInfo;->w:F

    .line 14
    int-to-float v0, p3

    iput v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ImageMediaInfo;->h:F

    .line 15
    iput-object p4, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ImageMediaInfo;->s:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public getH()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ImageMediaInfo;->h:F

    float-to-int v0, v0

    return v0
.end method

.method public getI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ImageMediaInfo;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ImageMediaInfo;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getW()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ImageMediaInfo;->w:F

    float-to-int v0, v0

    return v0
.end method

.method public setH(F)V
    .locals 0

    .prologue
    .line 55
    iput p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ImageMediaInfo;->h:F

    .line 56
    return-void
.end method

.method public setI(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ImageMediaInfo;->i:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setS(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ImageMediaInfo;->s:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setW(F)V
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ImageMediaInfo;->w:F

    .line 48
    return-void
.end method
