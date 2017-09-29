.class public interface abstract Lcom/uc/webview/export/internal/interfaces/IGeolocationPermissions;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Interface;
.end annotation


# virtual methods
.method public abstract allow(Ljava/lang/String;)V
.end method

.method public abstract clear(Ljava/lang/String;)V
.end method

.method public abstract clearAll()V
.end method

.method public abstract getAllowed(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
.end method

.method public abstract getOrigins(Landroid/webkit/ValueCallback;)V
.end method
