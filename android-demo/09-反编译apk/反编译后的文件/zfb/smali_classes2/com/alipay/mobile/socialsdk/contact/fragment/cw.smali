.class final Lcom/alipay/mobile/socialsdk/contact/fragment/cw;
.super Ljava/lang/Object;
.source "SingleFriendSelectFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/cw;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/cw;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/cw;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->u:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->getContactSearched(Ljava/lang/String;)V

    .line 124
    return-void
.end method
