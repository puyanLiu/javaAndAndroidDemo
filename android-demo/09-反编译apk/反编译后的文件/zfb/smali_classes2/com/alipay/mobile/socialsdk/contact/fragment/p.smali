.class final Lcom/alipay/mobile/socialsdk/contact/fragment/p;
.super Ljava/lang/Object;
.source "ContactListMainPageFragment.java"

# interfaces
.implements Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$ItemChoiceSelectListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/fragment/o;

.field private final synthetic b:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/fragment/o;Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/p;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/o;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/p;->b:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(I)V
    .locals 4

    .prologue
    .line 142
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 143
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    .line 144
    const-class v2, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity_;

    .line 143
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 145
    const-string/jumbo v1, "key_aliaccount"

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/p;->b:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 146
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 147
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    .line 148
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 149
    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v2

    .line 150
    sget v3, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->REQ_CODE:I

    .line 149
    invoke-interface {v1, v2, v0, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivityForResult(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;I)V

    .line 153
    :cond_0
    return-void
.end method
