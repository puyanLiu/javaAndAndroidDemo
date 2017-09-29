.class public Lcom/alipay/kabaoprod/biz/financial/fund/result/FundLuckEnterInfoResult;
.super Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;
.source "FundLuckEnterInfoResult.java"


# instance fields
.field public campRules:Ljava/lang/String;

.field public campTile:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getCampRules()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/result/FundLuckEnterInfoResult;->campRules:Ljava/lang/String;

    return-object v0
.end method

.method public getCampTile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/result/FundLuckEnterInfoResult;->campTile:Ljava/lang/String;

    return-object v0
.end method

.method public setCampRules(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/fund/result/FundLuckEnterInfoResult;->campRules:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setCampTile(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/fund/result/FundLuckEnterInfoResult;->campTile:Ljava/lang/String;

    .line 53
    return-void
.end method
