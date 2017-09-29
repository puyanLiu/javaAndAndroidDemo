.class final Lcom/uc/webview/export/extension/o;
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
    .line 330
    iput-object p1, p0, Lcom/uc/webview/export/extension/o;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 330
    check-cast p1, Lcom/uc/webview/export/utility/download/UpdateTask;

    :try_start_0
    new-instance v0, Lcom/uc/webview/export/utility/SetupTask;

    invoke-static {}, Lcom/uc/webview/export/extension/UCCore;->a()Lcom/uc/webview/export/utility/SetupTask;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/uc/webview/export/utility/SetupTask;-><init>(Lcom/uc/webview/export/utility/SetupTask;)V

    const-string/jumbo v1, "CONTEXT"

    iget-object v2, p0, Lcom/uc/webview/export/extension/o;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/utility/SetupTask;

    move-result-object v0

    const-string/jumbo v1, "loadPolicy"

    const-string/jumbo v2, "SPECIFIED_ONLY"

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/utility/SetupTask;

    move-result-object v0

    const-string/jumbo v1, "dexFilePath"

    invoke-virtual {p1}, Lcom/uc/webview/export/utility/download/UpdateTask;->getUpdateDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/utility/SetupTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/webview/export/utility/SetupTask;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
