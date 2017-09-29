.class public Lcom/alipay/android/phone/discovery/o2ohome/biz/mobilecsa/CityQueryRpcModel;
.super Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/model/BaseRpcModel;
.source "CityQueryRpcModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/model/BaseRpcModel",
        "<",
        "Lcom/alipay/mobilecsa/common/service/rpc/service/CityQueryService;",
        "Lcom/alipay/mobilecsa/common/service/rpc/response/CityQueryResponse;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/alipay/mobilecsa/common/service/rpc/service/CityQueryService;

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/model/BaseRpcModel;-><init>(Ljava/lang/Class;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected bridge synthetic requestData(Ljava/lang/Object;)Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/alipay/mobilecsa/common/service/rpc/service/CityQueryService;

    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/mobilecsa/CityQueryRpcModel;->requestData(Lcom/alipay/mobilecsa/common/service/rpc/service/CityQueryService;)Lcom/alipay/mobilecsa/common/service/rpc/response/CityQueryResponse;

    move-result-object v0

    return-object v0
.end method

.method protected requestData(Lcom/alipay/mobilecsa/common/service/rpc/service/CityQueryService;)Lcom/alipay/mobilecsa/common/service/rpc/response/CityQueryResponse;
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/alipay/mobilecsa/common/service/rpc/request/CityRequest;

    invoke-direct {v0}, Lcom/alipay/mobilecsa/common/service/rpc/request/CityRequest;-><init>()V

    .line 22
    invoke-interface {p1, v0}, Lcom/alipay/mobilecsa/common/service/rpc/service/CityQueryService;->queryAllCity(Lcom/alipay/mobilecsa/common/service/rpc/request/CityRequest;)Lcom/alipay/mobilecsa/common/service/rpc/response/CityQueryResponse;

    move-result-object v0

    return-object v0
.end method
