.class final Lcom/uc/webview/export/extension/d;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/uc/webview/export/utility/download/UpdateTask;

.field final synthetic b:Lcom/uc/webview/export/extension/c;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/extension/c;Lcom/uc/webview/export/utility/download/UpdateTask;)V
    .locals 0

    .prologue
    .line 488
    iput-object p1, p0, Lcom/uc/webview/export/extension/d;->b:Lcom/uc/webview/export/extension/c;

    iput-object p2, p0, Lcom/uc/webview/export/extension/d;->a:Lcom/uc/webview/export/utility/download/UpdateTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/uc/webview/export/extension/d;->a:Lcom/uc/webview/export/utility/download/UpdateTask;

    invoke-virtual {v0}, Lcom/uc/webview/export/utility/download/UpdateTask;->start()Lcom/uc/webview/export/utility/download/UpdateTask;

    .line 492
    return-void
.end method
