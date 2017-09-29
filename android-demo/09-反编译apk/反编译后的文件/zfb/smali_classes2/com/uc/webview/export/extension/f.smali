.class final Lcom/uc/webview/export/extension/f;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 471
    iput-object p1, p0, Lcom/uc/webview/export/extension/f;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 471
    const-string/jumbo v0, "sdk_vdls"

    invoke-static {v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/uc/webview/export/extension/f;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/uc/webview/export/internal/d;->b(Landroid/content/Context;)V

    return-void
.end method
