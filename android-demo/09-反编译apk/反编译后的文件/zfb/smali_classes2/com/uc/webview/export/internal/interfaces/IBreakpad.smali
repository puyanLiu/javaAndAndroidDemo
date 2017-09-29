.class public interface abstract Lcom/uc/webview/export/internal/interfaces/IBreakpad;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Api;
.end annotation


# static fields
.field public static final CRASH_LOG_PREFIX:Ljava/lang/String; = "SDKBrowser"


# virtual methods
.method public abstract addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setCrashLogFileName(Ljava/lang/String;)V
.end method

.method public abstract uploadCrashLogs()V
.end method
