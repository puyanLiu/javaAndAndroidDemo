.class public Lcom/alipay/kabaoprod/biz/financial/fund/model/ImgInfo;
.super Lcom/alipay/kabaoprod/service/facade/model/ToString;
.source "ImgInfo.java"


# instance fields
.field public imgDesc:Ljava/lang/String;

.field public imgTitle:Ljava/lang/String;

.field public imgUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alipay/kabaoprod/service/facade/model/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getImgDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/model/ImgInfo;->imgDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getImgTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/model/ImgInfo;->imgTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/model/ImgInfo;->imgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setImgDesc(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/fund/model/ImgInfo;->imgDesc:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setImgTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/fund/model/ImgInfo;->imgTitle:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setImgUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/fund/model/ImgInfo;->imgUrl:Ljava/lang/String;

    .line 53
    return-void
.end method
