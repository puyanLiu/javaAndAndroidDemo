.class public Lcom/alipay/mobilecsa/common/service/rpc/request/InviteShopListRequest;
.super Lcom/alipay/mobilecsa/common/service/rpc/request/H5BaseRequest;
.source "InviteShopListRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public buryPointJsonString:Ljava/lang/String;

.field public clientVersion:Ljava/lang/String;

.field public currentCity:Ljava/lang/String;

.field public extend:Ljava/lang/String;

.field public qmkdFilter:Ljava/lang/String;

.field public query:Ljava/lang/String;

.field public queryIndex:Ljava/lang/String;

.field public searchId:Ljava/lang/String;

.field public sessionId:Ljava/lang/String;

.field public size:I

.field public start:I

.field public systemType:Ljava/lang/String;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/alipay/mobilecsa/common/service/rpc/request/H5BaseRequest;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobilecsa/common/service/rpc/request/InviteShopListRequest;->start:I

    .line 38
    const/4 v0, 0x3

    iput v0, p0, Lcom/alipay/mobilecsa/common/service/rpc/request/InviteShopListRequest;->size:I

    .line 72
    const-string/jumbo v0, "INIT"

    iput-object v0, p0, Lcom/alipay/mobilecsa/common/service/rpc/request/InviteShopListRequest;->qmkdFilter:Ljava/lang/String;

    .line 10
    return-void
.end method
