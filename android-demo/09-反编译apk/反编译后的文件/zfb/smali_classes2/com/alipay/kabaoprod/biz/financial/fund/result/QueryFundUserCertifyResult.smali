.class public Lcom/alipay/kabaoprod/biz/financial/fund/result/QueryFundUserCertifyResult;
.super Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;
.source "QueryFundUserCertifyResult.java"


# instance fields
.field public certifyResult:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getCertifyResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/result/QueryFundUserCertifyResult;->certifyResult:Ljava/lang/String;

    return-object v0
.end method

.method public setCertifyResult(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/fund/result/QueryFundUserCertifyResult;->certifyResult:Ljava/lang/String;

    .line 50
    return-void
.end method
