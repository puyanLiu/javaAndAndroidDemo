.class Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$AMapLocationListenerWrapper;
.super Ljava/lang/Object;
.source "LBSLocationManagerProxy.java"

# interfaces
.implements Lcom/amap/api/location/AMapLocationListener;


# instance fields
.field private a:Lcom/alipay/mobile/common/lbs/LBSLocationListener;

.field final synthetic this$0:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;Lcom/alipay/mobile/common/lbs/LBSLocationListener;)V
    .locals 0

    .prologue
    .line 521
    iput-object p1, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$AMapLocationListenerWrapper;->this$0:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 522
    iput-object p2, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$AMapLocationListenerWrapper;->a:Lcom/alipay/mobile/common/lbs/LBSLocationListener;

    .line 523
    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3

    .prologue
    .line 527
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "LocationListener.OnLocationChanged at: AMapLocationListenerWrapper"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    return-void
.end method

.method public onLocationChanged(Lcom/amap/api/location/AMapLocation;)V
    .locals 5

    .prologue
    .line 547
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "LBSLocationManagerProxy onLocationChanged(AMapLocation aMapLocation)"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAMapException()Lcom/amap/api/location/core/AMapLocException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/location/core/AMapLocException;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_1

    .line 550
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$AMapLocationListenerWrapper;->this$0:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    invoke-static {v0, p1}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->access$700(Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;Lcom/amap/api/location/AMapLocation;)Lcom/alipay/mobile/common/lbs/LBSLocation;

    move-result-object v0

    .line 552
    iget-object v1, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$AMapLocationListenerWrapper;->this$0:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->access$800(Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;Lcom/alipay/mobile/common/lbs/LBSLocation;)V

    .line 553
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "LBSLocationManagerProxy onLocationChanged:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$AMapLocationListenerWrapper;->a:Lcom/alipay/mobile/common/lbs/LBSLocationListener;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    iget-object v1, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$AMapLocationListenerWrapper;->a:Lcom/alipay/mobile/common/lbs/LBSLocationListener;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/common/lbs/LBSLocationListener;->onLocationUpdate(Lcom/alipay/mobile/common/lbs/LBSLocation;)V

    .line 561
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$AMapLocationListenerWrapper;->this$0:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    invoke-static {v0}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->access$1300(Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;)V

    .line 562
    return-void

    .line 556
    :cond_1
    if-eqz p1, :cond_0

    .line 557
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "aMapLocationError ErrorCode = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAMapException()Lcom/amap/api/location/core/AMapLocException;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amap/api/location/core/AMapLocException;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$AMapLocationListenerWrapper;->a:Lcom/alipay/mobile/common/lbs/LBSLocationListener;

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAMapException()Lcom/amap/api/location/core/AMapLocException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/location/core/AMapLocException;->getErrorCode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/lbs/LBSLocationListener;->onLocationFailed(I)V

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 542
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "LocationListener.onProviderDisabled at: AMapLocationListenerWrapper"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 537
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "LocationListener.onProviderEnabled at: AMapLocationListenerWrapper"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 532
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "LocationListener.onStatusChanged at: AMapLocationListenerWrapper"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    return-void
.end method
