.class public Lcom/uc/webview/export/HttpAuthHandler;
.super Landroid/os/Handler;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Api;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
.end method

.method public proceed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
.end method

.method public useHttpAuthUsernamePassword()Z
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/uc/webview/export/extension/MustOverrideException;

    invoke-direct {v0}, Lcom/uc/webview/export/extension/MustOverrideException;-><init>()V

    throw v0
.end method
