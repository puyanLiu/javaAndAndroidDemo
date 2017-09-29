.class public Lcom/alipay/mobilecsa/common/service/rpc/response/InviteShopListResponse;
.super Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;
.source "InviteShopListResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public count:I

.field public extInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public hasMore:Z

.field public inviteShopInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilecsa/common/service/rpc/model/InviteShopInfo;",
            ">;"
        }
    .end annotation
.end field

.field public invitedShop:Ljava/lang/String;

.field public query:Ljava/lang/String;

.field public start:I

.field public totalCount:I

.field public waitInvite:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobilecsa/common/service/rpc/response/InviteShopListResponse;->start:I

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobilecsa/common/service/rpc/response/InviteShopListResponse;->extInfo:Ljava/util/Map;

    .line 15
    return-void
.end method
