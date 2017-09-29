.class final Lcom/uc/webview/export/internal/android/m;
.super Lcom/uc/webview/export/WebChromeClient$FileChooserParams;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/uc/webview/export/internal/android/j;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/android/j;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/uc/webview/export/internal/android/m;->a:Lcom/uc/webview/export/internal/android/j;

    invoke-direct {p0}, Lcom/uc/webview/export/WebChromeClient$FileChooserParams;-><init>()V

    return-void
.end method


# virtual methods
.method public final createIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 249
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 250
    const-string/jumbo v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    const-string/jumbo v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    return-object v0
.end method

.method public final getAcceptTypes()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 229
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "*/*"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public final getFilenameHint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public final getMode()I
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x0

    return v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 239
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public final isCaptureEnabled()Z
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x0

    return v0
.end method
