.class public final Lcom/uc/webview/export/internal/android/o;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/uc/webview/export/internal/interfaces/IWebStorage;


# instance fields
.field private a:Landroid/webkit/WebStorage;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/uc/webview/export/internal/android/o;->a:Landroid/webkit/WebStorage;

    .line 55
    return-void
.end method


# virtual methods
.method public final deleteAllData()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/o;->a:Landroid/webkit/WebStorage;

    invoke-virtual {v0}, Landroid/webkit/WebStorage;->deleteAllData()V

    .line 86
    return-void
.end method

.method public final deleteOrigin(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/o;->a:Landroid/webkit/WebStorage;

    invoke-virtual {v0, p1}, Landroid/webkit/WebStorage;->deleteOrigin(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public final getOrigins(Landroid/webkit/ValueCallback;)V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/o;->a:Landroid/webkit/WebStorage;

    new-instance v1, Lcom/uc/webview/export/internal/android/o$a;

    invoke-direct {v1, p0, p1}, Lcom/uc/webview/export/internal/android/o$a;-><init>(Lcom/uc/webview/export/internal/android/o;Landroid/webkit/ValueCallback;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebStorage;->getOrigins(Landroid/webkit/ValueCallback;)V

    .line 60
    return-void
.end method

.method public final getQuotaForOrigin(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/o;->a:Landroid/webkit/WebStorage;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebStorage;->getQuotaForOrigin(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 70
    return-void
.end method

.method public final getUsageForOrigin(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/o;->a:Landroid/webkit/WebStorage;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebStorage;->getUsageForOrigin(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 65
    return-void
.end method

.method public final setQuotaForOrigin(Ljava/lang/String;J)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/o;->a:Landroid/webkit/WebStorage;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebStorage;->setQuotaForOrigin(Ljava/lang/String;J)V

    .line 76
    return-void
.end method
