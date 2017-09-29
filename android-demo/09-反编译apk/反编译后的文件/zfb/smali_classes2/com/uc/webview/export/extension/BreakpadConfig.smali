.class public Lcom/uc/webview/export/extension/BreakpadConfig;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Api;
.end annotation


# instance fields
.field public mCrashDir:Ljava/lang/String;

.field public mCrashLogFileName:Ljava/lang/String;

.field public mEnableEncryptLog:Z

.field public mEnableJavaLog:Z

.field public mUploadUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/uc/webview/export/extension/BreakpadConfig;->mCrashDir:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, "http://119.147.224.154:8012/upload"

    iput-object v0, p0, Lcom/uc/webview/export/extension/BreakpadConfig;->mUploadUrl:Ljava/lang/String;

    .line 28
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/uc/webview/export/extension/BreakpadConfig;->mCrashLogFileName:Ljava/lang/String;

    .line 34
    iput-boolean v1, p0, Lcom/uc/webview/export/extension/BreakpadConfig;->mEnableJavaLog:Z

    .line 40
    iput-boolean v1, p0, Lcom/uc/webview/export/extension/BreakpadConfig;->mEnableEncryptLog:Z

    .line 43
    iput-object p1, p0, Lcom/uc/webview/export/extension/BreakpadConfig;->mCrashDir:Ljava/lang/String;

    .line 44
    return-void
.end method
