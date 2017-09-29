.class final Lcom/alipay/mobile/socialsdk/chat/ui/a;
.super Ljava/lang/Object;
.source "ShareDialogActivity.java"

# interfaces
.implements Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog$OnShareButtonClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/ui/a;->a:Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Lcom/alipay/mobile/personalbase/model/ShareModel;Ljava/lang/String;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, -0x2

    .line 54
    if-ne p3, v1, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/a;->a:Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;->a(Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;)Lcom/alipay/mobile/framework/service/ext/contact/ShareSelectCallback;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 55
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/a;->a:Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;->a(Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;)Lcom/alipay/mobile/framework/service/ext/contact/ShareSelectCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/service/ext/contact/ShareSelectCallback;->onShareCanceled()V

    .line 68
    :cond_0
    :goto_0
    if-ne p3, v2, :cond_1

    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/a;->a:Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "directShare"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/a;->a:Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;->finish()V

    .line 72
    :cond_2
    return-void

    .line 56
    :cond_3
    if-ne p3, v1, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/a;->a:Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;->b(Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;)Lcom/alipay/mobile/framework/service/ext/contact/ShareResultCallback;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/a;->a:Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;->b(Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;)Lcom/alipay/mobile/framework/service/ext/contact/ShareResultCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/service/ext/contact/ShareResultCallback;->onShareCanceled()V

    goto :goto_0

    .line 58
    :cond_4
    if-ne p3, v2, :cond_0

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/a;->a:Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "directShare"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/a;->a:Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;->sendShareContent(Lcom/alipay/mobile/personalbase/model/ShareModel;Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/a;->a:Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;->a(Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;)Lcom/alipay/mobile/framework/service/ext/contact/ShareSelectCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 63
    const-string/jumbo v1, "extra_word"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/ui/a;->a:Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;->a(Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;)Lcom/alipay/mobile/framework/service/ext/contact/ShareSelectCallback;

    move-result-object v1

    invoke-interface {v1, v4, v4, v0}, Lcom/alipay/mobile/framework/service/ext/contact/ShareSelectCallback;->onPersonSelected(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method
