.class public final Lcom/uc/webview/export/internal/a/a/b;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/uc/webview/export/internal/a/a/a;


# direct methods
.method public constructor <init>(Lcom/uc/webview/export/internal/a/a/a;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/uc/webview/export/internal/a/a/b;->a:Lcom/uc/webview/export/internal/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/uc/webview/export/internal/a/a/b;->a:Lcom/uc/webview/export/internal/a/a/a;

    new-instance v1, Lcom/uc/webview/export/internal/a/a/c;

    invoke-direct {v1, v0}, Lcom/uc/webview/export/internal/a/a/c;-><init>(Lcom/uc/webview/export/internal/a/a/a;)V

    invoke-virtual {v1}, Lcom/uc/webview/export/internal/a/a/c;->start()V

    .line 241
    return-void
.end method
