.class public Lcom/alipay/mobile/emotion/app/EmotionApp;
.super Lcom/alipay/mobile/framework/app/ActivityApplication;
.source "EmotionApp.java"


# instance fields
.field private params:Landroid/os/Bundle;

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;-><init>()V

    return-void
.end method

.method private parseParams()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/emotion/app/EmotionApp;->params:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/alipay/mobile/emotion/app/EmotionApp;->params:Landroid/os/Bundle;

    const-string/jumbo v1, "path"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/emotion/app/EmotionApp;->path:Ljava/lang/String;

    .line 57
    :cond_0
    return-void
.end method

.method private route()V
    .locals 2

    .prologue
    .line 60
    const-string/jumbo v0, "manager"

    iget-object v1, p0, Lcom/alipay/mobile/emotion/app/EmotionApp;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/emotion/app/EmotionApp;->params:Landroid/os/Bundle;

    const-class v1, Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity_;

    invoke-static {v0, v1}, Lcom/alipay/mobile/emotion/util/JumpUtil;->startActivity(Landroid/os/Bundle;Ljava/lang/Class;)V

    .line 73
    :goto_0
    return-void

    .line 62
    :cond_0
    const-string/jumbo v0, "store"

    iget-object v1, p0, Lcom/alipay/mobile/emotion/app/EmotionApp;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 63
    const-string/jumbo v0, "preview"

    iget-object v1, p0, Lcom/alipay/mobile/emotion/app/EmotionApp;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/emotion/app/EmotionApp;->params:Landroid/os/Bundle;

    const-class v1, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity_;

    invoke-static {v0, v1}, Lcom/alipay/mobile/emotion/util/JumpUtil;->startActivity(Landroid/os/Bundle;Ljava/lang/Class;)V

    goto :goto_0

    .line 66
    :cond_1
    const-string/jumbo v0, "detail"

    iget-object v1, p0, Lcom/alipay/mobile/emotion/app/EmotionApp;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/emotion/app/EmotionApp;->params:Landroid/os/Bundle;

    const-class v1, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_;

    invoke-static {v0, v1}, Lcom/alipay/mobile/emotion/util/JumpUtil;->startActivity(Landroid/os/Bundle;Ljava/lang/Class;)V

    goto :goto_0

    .line 68
    :cond_2
    const-string/jumbo v0, "favorite"

    iget-object v1, p0, Lcom/alipay/mobile/emotion/app/EmotionApp;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/emotion/app/EmotionApp;->params:Landroid/os/Bundle;

    const-class v1, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity_;

    invoke-static {v0, v1}, Lcom/alipay/mobile/emotion/util/JumpUtil;->startActivity(Landroid/os/Bundle;Ljava/lang/Class;)V

    goto :goto_0

    .line 71
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/emotion/app/EmotionApp;->params:Landroid/os/Bundle;

    const-class v1, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity_;

    invoke-static {v0, v1}, Lcom/alipay/mobile/emotion/util/JumpUtil;->startActivity(Landroid/os/Bundle;Ljava/lang/Class;)V

    goto :goto_0
.end method


# virtual methods
.method public getEntryClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/alipay/mobile/emotion/app/EmotionApp;->params:Landroid/os/Bundle;

    .line 31
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method protected onRestart(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/alipay/mobile/emotion/app/EmotionApp;->params:Landroid/os/Bundle;

    .line 41
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/app/EmotionApp;->onStart()V

    .line 42
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/app/EmotionApp;->parseParams()V

    .line 47
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/app/EmotionApp;->route()V

    .line 48
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method
