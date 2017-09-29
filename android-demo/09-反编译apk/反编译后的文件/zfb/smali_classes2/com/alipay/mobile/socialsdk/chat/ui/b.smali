.class final Lcom/alipay/mobile/socialsdk/chat/ui/b;
.super Ljava/lang/Object;
.source "ShareDialogActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/ui/b;->a:Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/b;->a:Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;->b(Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;)Lcom/alipay/mobile/framework/service/ext/contact/ShareResultCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/b;->a:Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;->b(Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;)Lcom/alipay/mobile/framework/service/ext/contact/ShareResultCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/ui/b;->a:Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;->c(Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/ui/b;->a:Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;

    invoke-static {v2}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;->d(Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/contact/ShareResultCallback;->onShareSucceed(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/b;->a:Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;->finish()V

    .line 109
    return-void
.end method
