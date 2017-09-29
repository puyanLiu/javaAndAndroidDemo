.class public Lcom/alipay/kabaoprod/biz/financial/pcredit/result/PcreditProdInfoResult;
.super Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;
.source "PcreditProdInfoResult.java"


# instance fields
.field public prodInfoImgUrl:Ljava/lang/String;

.field public prodInfoText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getProdInfoImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/result/PcreditProdInfoResult;->prodInfoImgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getProdInfoText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/result/PcreditProdInfoResult;->prodInfoText:Ljava/lang/String;

    return-object v0
.end method

.method public setProdInfoImgUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/result/PcreditProdInfoResult;->prodInfoImgUrl:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setProdInfoText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/result/PcreditProdInfoResult;->prodInfoText:Ljava/lang/String;

    .line 41
    return-void
.end method
