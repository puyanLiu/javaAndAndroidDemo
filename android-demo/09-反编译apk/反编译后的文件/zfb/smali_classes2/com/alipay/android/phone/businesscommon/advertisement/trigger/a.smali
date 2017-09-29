.class final Lcom/alipay/android/phone/businesscommon/advertisement/trigger/a;
.super Ljava/lang/Object;
.source "AdH5Plugin.java"

# interfaces
.implements Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/advertisement/trigger/AdH5Plugin;

.field private final synthetic b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/advertisement/trigger/AdH5Plugin;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/trigger/a;->a:Lcom/alipay/android/phone/businesscommon/advertisement/trigger/AdH5Plugin;

    iput-object p2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/trigger/a;->b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/trigger/a;->b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 74
    return-void
.end method

.method public final onSuccess(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)V
    .locals 2

    .prologue
    .line 67
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/trigger/a;->b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 68
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 67
    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 69
    return-void
.end method
