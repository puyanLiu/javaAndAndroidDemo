.class Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsInfoListenerWrapper;
.super Ljava/lang/Object;
.source "LBSInfoServiceImpl.java"

# interfaces
.implements Lcom/alipay/mobile/common/lbs/LBSLocationListener;


# instance fields
.field mInfoListener:Lcom/alipay/mobile/framework/service/LBSInfoService$LBSInfoListener;

.field final synthetic this$0:Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;Lcom/alipay/mobile/framework/service/LBSInfoService$LBSInfoListener;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsInfoListenerWrapper;->this$0:Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    iput-object p2, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsInfoListenerWrapper;->mInfoListener:Lcom/alipay/mobile/framework/service/LBSInfoService$LBSInfoListener;

    .line 267
    return-void
.end method


# virtual methods
.method public onLocationFailed(I)V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsInfoListenerWrapper;->mInfoListener:Lcom/alipay/mobile/framework/service/LBSInfoService$LBSInfoListener;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/framework/service/LBSInfoService$LBSInfoListener;->onGetLBSInfoFailed(I)V

    .line 278
    return-void
.end method

.method public onLocationUpdate(Lcom/alipay/mobile/common/lbs/LBSLocation;)V
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsInfoListenerWrapper;->this$0:Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;

    invoke-static {v0, p1}, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->access$0(Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;Lcom/alipay/mobile/common/lbs/LBSLocation;)Lcom/alipay/mobilelbs/common/service/facade/vo/Location;

    move-result-object v0

    .line 272
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsInfoListenerWrapper;->mInfoListener:Lcom/alipay/mobile/framework/service/LBSInfoService$LBSInfoListener;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/service/LBSInfoService$LBSInfoListener;->onLBSInfoChanged(Lcom/alipay/mobilelbs/common/service/facade/vo/Location;)V

    .line 273
    return-void
.end method
