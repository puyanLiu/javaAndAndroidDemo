.class public Lcom/alipay/mobilecsa/common/service/rpc/request/EveryShopRequest;
.super Lcom/alipay/mobilecsa/common/service/rpc/request/H5BaseRequest;
.source "EveryShopRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public dataId:Ljava/lang/String;

.field public pageNum:I

.field public pageSize:I

.field public remoteAddr:Ljava/lang/String;

.field public sessionId:Ljava/lang/String;

.field public shopId:Ljava/lang/String;

.field public umidToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/alipay/mobilecsa/common/service/rpc/request/H5BaseRequest;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobilecsa/common/service/rpc/request/EveryShopRequest;->pageNum:I

    .line 38
    const/16 v0, 0x14

    iput v0, p0, Lcom/alipay/mobilecsa/common/service/rpc/request/EveryShopRequest;->pageSize:I

    .line 10
    return-void
.end method
