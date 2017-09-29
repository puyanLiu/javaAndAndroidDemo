.class public Lcom/alipay/mobilecsa/common/service/rpc/response/MyInviteShopsResponse;
.super Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;
.source "MyInviteShopsResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public discountNum:Ljava/lang/String;

.field public enterReward:Ljava/lang/String;

.field public enterShopNum:Ljava/lang/String;

.field public hasNextPage:Z

.field public shops:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilecsa/common/service/rpc/model/MyInviteShop;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;-><init>()V

    return-void
.end method
