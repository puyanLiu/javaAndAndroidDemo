.class public Lcom/alipay/mobilecsa/common/service/rpc/request/CdpRequest;
.super Lcom/alipay/mobilecsa/common/service/rpc/request/BaseRpcRequest;
.source "CdpRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public pid:Ljava/lang/String;

.field public shopId:Ljava/lang/String;

.field public spaceCodeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alipay/mobilecsa/common/service/rpc/request/BaseRpcRequest;-><init>()V

    return-void
.end method
