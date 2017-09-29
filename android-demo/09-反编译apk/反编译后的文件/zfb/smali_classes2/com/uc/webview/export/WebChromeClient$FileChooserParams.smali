.class public abstract Lcom/uc/webview/export/WebChromeClient$FileChooserParams;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Api;
.end annotation


# static fields
.field public static final MODE_OPEN:I = 0x0

.field public static final MODE_OPEN_FOLDER:I = 0x2

.field public static final MODE_OPEN_MULTIPLE:I = 0x1

.field public static final MODE_SAVE:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseResult(ILandroid/content/Intent;)[Landroid/net/Uri;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 371
    if-nez p0, :cond_1

    .line 382
    :cond_0
    :goto_0
    return-object v0

    .line 374
    :cond_1
    if-eqz p1, :cond_2

    const/4 v1, -0x1

    if-eq p0, v1, :cond_3

    :cond_2
    move-object v1, v0

    .line 378
    :goto_1
    if-eqz v1, :cond_0

    .line 379
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    .line 380
    const/4 v2, 0x0

    aput-object v1, v0, v2

    goto :goto_0

    .line 374
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    goto :goto_1
.end method


# virtual methods
.method public abstract createIntent()Landroid/content/Intent;
.end method

.method public abstract getAcceptTypes()[Ljava/lang/String;
.end method

.method public abstract getFilenameHint()Ljava/lang/String;
.end method

.method public abstract getMode()I
.end method

.method public abstract getTitle()Ljava/lang/CharSequence;
.end method

.method public abstract isCaptureEnabled()Z
.end method
