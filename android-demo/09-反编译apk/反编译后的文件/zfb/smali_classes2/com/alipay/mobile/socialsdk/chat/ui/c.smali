.class final Lcom/alipay/mobile/socialsdk/chat/ui/c;
.super Ljava/lang/Object;
.source "ShareDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/ui/c;->a:Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/c;->a:Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;->a(Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;)Lcom/alipay/mobile/framework/service/ext/contact/ShareSelectCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/c;->a:Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;->a(Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;)Lcom/alipay/mobile/framework/service/ext/contact/ShareSelectCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/service/ext/contact/ShareSelectCallback;->onShareCanceled()V

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/c;->a:Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity;->finish()V

    .line 142
    return-void
.end method
