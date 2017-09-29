.class final Lcom/alipay/mobile/socialsdk/chat/widget/b;
.super Ljava/lang/Object;
.source "ShareDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/widget/b;->a:Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/b;->a:Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog;->a:Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog$OnShareButtonClickListener;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/widget/b;->a:Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/widget/b;->a:Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog;

    invoke-virtual {v2}, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x2

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog$OnShareButtonClickListener;->onClick(Lcom/alipay/mobile/personalbase/model/ShareModel;Ljava/lang/String;I)V

    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/b;->a:Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog;->dismiss()V

    .line 70
    return-void
.end method
