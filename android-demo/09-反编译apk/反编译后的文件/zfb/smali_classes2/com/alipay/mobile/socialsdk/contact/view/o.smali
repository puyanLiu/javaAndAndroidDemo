.class final Lcom/alipay/mobile/socialsdk/contact/view/o;
.super Ljava/lang/Object;
.source "VarifyNameMgrForContacts.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/view/n;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/view/n;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/view/o;->a:Lcom/alipay/mobile/socialsdk/contact/view/n;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/o;->a:Lcom/alipay/mobile/socialsdk/contact/view/n;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/view/n;->a(Lcom/alipay/mobile/socialsdk/contact/view/n;)Lcom/alipay/mobile/socialsdk/contact/view/l;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/view/l;->a(Lcom/alipay/mobile/socialsdk/contact/view/l;)Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;->a:Landroid/app/Activity;

    check-cast v0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;

    const-string/jumbo v1, "TAG_MULTI_INPUT_ACCOUNT"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;->addFragment(Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 75
    return-void
.end method
