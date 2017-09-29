.class public Lcom/alipay/kabaoprod/biz/financial/account/request/AssetAccountInfoReq;
.super Lcom/alipay/kabaoprod/service/facade/model/ToString;
.source "AssetAccountInfoReq.java"


# instance fields
.field public traveLDate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alipay/kabaoprod/service/facade/model/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getTraveLDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/request/AssetAccountInfoReq;->traveLDate:Ljava/lang/String;

    return-object v0
.end method

.method public setTraveLDate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/request/AssetAccountInfoReq;->traveLDate:Ljava/lang/String;

    .line 41
    return-void
.end method
