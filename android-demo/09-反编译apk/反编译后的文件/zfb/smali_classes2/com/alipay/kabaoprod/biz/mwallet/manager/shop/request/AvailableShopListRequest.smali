.class public Lcom/alipay/kabaoprod/biz/mwallet/manager/shop/request/AvailableShopListRequest;
.super Lcom/alipay/kabaoprod/service/facade/model/ToString;
.source "AvailableShopListRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public curCityName:Ljava/lang/String;

.field public currentPage:I

.field public latitude:Ljava/lang/Double;

.field public longitude:Ljava/lang/Double;

.field public pageSize:I

.field public passId:Ljava/lang/String;

.field public radius:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/alipay/kabaoprod/service/facade/model/ToString;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/kabaoprod/biz/mwallet/manager/shop/request/AvailableShopListRequest;->currentPage:I

    .line 45
    const/16 v0, 0x14

    iput v0, p0, Lcom/alipay/kabaoprod/biz/mwallet/manager/shop/request/AvailableShopListRequest;->pageSize:I

    .line 55
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/kabaoprod/biz/mwallet/manager/shop/request/AvailableShopListRequest;->radius:Ljava/lang/Double;

    .line 31
    return-void
.end method
