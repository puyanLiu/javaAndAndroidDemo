.class public interface abstract Lcom/uc/webview/export/internal/interfaces/IWebStorage;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Interface;
.end annotation


# virtual methods
.method public abstract deleteAllData()V
.end method

.method public abstract deleteOrigin(Ljava/lang/String;)V
.end method

.method public abstract getOrigins(Landroid/webkit/ValueCallback;)V
.end method

.method public abstract getQuotaForOrigin(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
.end method

.method public abstract getUsageForOrigin(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
.end method

.method public abstract setQuotaForOrigin(Ljava/lang/String;J)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
