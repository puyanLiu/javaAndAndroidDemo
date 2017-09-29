.class final Lcom/uc/webview/export/internal/android/d;
.super Lcom/uc/webview/export/HttpAuthHandler;
.source "ProGuard"


# instance fields
.field private a:Landroid/webkit/HttpAuthHandler;


# direct methods
.method constructor <init>(Landroid/webkit/HttpAuthHandler;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/uc/webview/export/HttpAuthHandler;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/uc/webview/export/internal/android/d;->a:Landroid/webkit/HttpAuthHandler;

    .line 10
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/d;->a:Landroid/webkit/HttpAuthHandler;

    invoke-virtual {v0}, Landroid/webkit/HttpAuthHandler;->cancel()V

    .line 20
    return-void
.end method

.method public final proceed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/d;->a:Landroid/webkit/HttpAuthHandler;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/HttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public final useHttpAuthUsernamePassword()Z
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/d;->a:Landroid/webkit/HttpAuthHandler;

    invoke-virtual {v0}, Landroid/webkit/HttpAuthHandler;->useHttpAuthUsernamePassword()Z

    move-result v0

    return v0
.end method
