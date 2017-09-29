.class public Lcom/alipay/mobilecsa/common/service/rpc/response/CollectShopResponse;
.super Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;
.source "CollectShopResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public addBonusValue:Ljava/lang/String;

.field public allBonusValue:Ljava/lang/String;

.field public queryCollectUrl:Ljava/lang/String;

.field public shareChannelInfo:Lcom/alipay/mobilecsa/common/service/rpc/model/ShareChannelInfo;

.field public tipText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;-><init>()V

    return-void
.end method
