.class public Lcom/alipay/android/phone/discovery/o2ohome/biz/mobilecsa/HomePageRpcModel;
.super Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/model/BaseRpcModel;
.source "HomePageRpcModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/model/BaseRpcModel",
        "<",
        "Lcom/alipay/mobilecsa/common/service/rpc/service/HomePageService;",
        "Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;",
        ">;"
    }
.end annotation


# instance fields
.field private request:Lcom/alipay/mobilecsa/common/service/rpc/request/HomePageReq;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/alipay/mobilecsa/common/service/rpc/service/HomePageService;

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/model/BaseRpcModel;-><init>(Ljava/lang/Class;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected bridge synthetic requestData(Ljava/lang/Object;)Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/alipay/mobilecsa/common/service/rpc/service/HomePageService;

    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/mobilecsa/HomePageRpcModel;->requestData(Lcom/alipay/mobilecsa/common/service/rpc/service/HomePageService;)Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v0

    return-object v0
.end method

.method protected requestData(Lcom/alipay/mobilecsa/common/service/rpc/service/HomePageService;)Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/mobilecsa/HomePageRpcModel;->request:Lcom/alipay/mobilecsa/common/service/rpc/request/HomePageReq;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/mobilecsa/HomePageRpcModel;->request:Lcom/alipay/mobilecsa/common/service/rpc/request/HomePageReq;

    invoke-interface {p1, v0}, Lcom/alipay/mobilecsa/common/service/rpc/service/HomePageService;->gainHomePage(Lcom/alipay/mobilecsa/common/service/rpc/request/HomePageReq;)Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v0

    .line 30
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRequest(Lcom/alipay/mobilecsa/common/service/rpc/request/HomePageReq;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/mobilecsa/HomePageRpcModel;->request:Lcom/alipay/mobilecsa/common/service/rpc/request/HomePageReq;

    .line 23
    return-void
.end method
