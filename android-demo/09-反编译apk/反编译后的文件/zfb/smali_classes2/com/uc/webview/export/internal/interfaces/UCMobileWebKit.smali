.class public interface abstract Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Interface;
.end annotation


# virtual methods
.method public abstract getCoreBuildSeq()Ljava/lang/String;
.end method

.method public abstract getCoreVersion()Ljava/lang/String;
.end method

.method public abstract getWebResources()Lcom/uc/webview/export/internal/interfaces/IWebResourceInternal;
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onLowMemory()V
.end method

.method public abstract onOrientationChanged()V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract onScreenLock()V
.end method

.method public abstract onScreenUnLock()V
.end method

.method public abstract onTrimMemory(I)V
.end method

.method public abstract onWindowSizeChanged()V
.end method

.method public abstract setLocationManagerUC(Lcom/uc/webview/export/extension/ILocationManager;)V
.end method

.method public abstract setThirdNetwork(Lcom/uc/webview/export/internal/interfaces/INetwork;Lcom/uc/webview/export/internal/interfaces/INetworkDecider;)V
.end method
