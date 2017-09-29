.class public Lcom/alipay/mobile/beehive/photo/ui/PhotoPreviewActivity;
.super Lcom/alipay/mobile/beehive/photo/wrapper/PhotoActivity;
.source "PhotoPreviewActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PhotoPreviewActivity"


# instance fields
.field private cashierTitlebar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

.field private isShowCashierTitleBar:Z

.field private photoBrowseView:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/wrapper/PhotoActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/beehive/photo/wrapper/PhotoActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/beehive/photo/wrapper/PhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoPreviewActivity;->photoBrowseView:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoPreviewActivity;->photoBrowseView:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->backPressed()V

    .line 76
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/16 v4, 0x400

    const/4 v1, 0x0

    .line 28
    invoke-super {p0, p1}, Lcom/alipay/mobile/beehive/photo/wrapper/PhotoActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoPreviewActivity;->requestWindowFeature(I)Z

    .line 30
    if-nez p1, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 32
    if-nez p1, :cond_1

    .line 33
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoPreviewActivity;->finish()V

    .line 56
    :goto_0
    return-void

    .line 37
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "PhotoPreviewActivity"

    const-string/jumbo v3, "initialize photo preview with save instance."

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_1
    const-string/jumbo v0, "browseGallery"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoPreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 46
    :cond_2
    sget v0, Lcom/alipay/mobile/beehive/R$layout;->activity_photo_preview:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoPreviewActivity;->setContentView(I)V

    .line 47
    sget v0, Lcom/alipay/mobile/beehive/R$id;->photo_browse_view:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoPreviewActivity;->photoBrowseView:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;

    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoPreviewActivity;->photoBrowseView:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->setActivity(Landroid/app/Activity;)V

    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoPreviewActivity;->photoBrowseView:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->setBundle(Landroid/os/Bundle;)V

    .line 50
    const-string/jumbo v0, "using_phone_cashier_title_bar"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoPreviewActivity;->isShowCashierTitleBar:Z

    .line 52
    sget v0, Lcom/alipay/mobile/beehive/R$id;->cashier_top_bar:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoPreviewActivity;->cashierTitlebar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 53
    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoPreviewActivity;->cashierTitlebar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoPreviewActivity;->isShowCashierTitleBar:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setVisibility(I)V

    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoPreviewActivity;->cashierTitlebar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getTitlebarBg()Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    move-result-object v0

    const v1, 0x3f262a3b

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 53
    :cond_3
    const/16 v0, 0x8

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 60
    invoke-super {p0}, Lcom/alipay/mobile/beehive/photo/wrapper/PhotoActivity;->onDestroy()V

    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoPreviewActivity;->photoBrowseView:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->setActivity(Landroid/app/Activity;)V

    .line 62
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/alipay/mobile/beehive/photo/wrapper/PhotoActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoPreviewActivity;->photoBrowseView:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->newIntent(Landroid/content/Intent;)V

    .line 87
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lcom/alipay/mobile/beehive/photo/wrapper/PhotoActivity;->onPause()V

    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoPreviewActivity;->photoBrowseView:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->pause()V

    .line 68
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Lcom/alipay/mobile/beehive/photo/wrapper/PhotoActivity;->onResume()V

    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoPreviewActivity;->photoBrowseView:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->resume()V

    .line 82
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/alipay/mobile/beehive/photo/wrapper/PhotoActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/ui/PhotoPreviewActivity;->photoBrowseView:Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;

    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/ui/PhotoPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/beehive/photo/ui/PhotoBrowseView;->saveInstanceState(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 92
    return-void
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/alipay/mobile/beehive/photo/wrapper/PhotoActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/beehive/photo/wrapper/PhotoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
