.class public Lcom/alipay/mobilecsa/common/service/rpc/response/OpenShopIndexResponse;
.super Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;
.source "OpenShopIndexResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public joinActivity:Ljava/lang/String;

.field public joinActivityInfo:Lcom/alipay/mobilecsa/common/service/rpc/model/JoinActivityInfo;

.field public unJoinActivityInfo:Lcom/alipay/mobilecsa/common/service/rpc/model/UnJoinActivityInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;-><init>()V

    return-void
.end method
