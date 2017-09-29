.class final Lcom/alipay/mobile/socialsdk/contact/fragment/aq;
.super Ljava/lang/Object;
.source "GroupSingleSelectFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/aq;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/aq;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/aq;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->d:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->getContactSerched(Ljava/lang/String;)V

    .line 75
    return-void
.end method
