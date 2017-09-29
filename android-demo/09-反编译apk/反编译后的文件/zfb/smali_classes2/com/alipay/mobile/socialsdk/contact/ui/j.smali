.class final Lcom/alipay/mobile/socialsdk/contact/ui/j;
.super Ljava/lang/Object;
.source "ChatRoomSelectPeopleActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/j;->a:Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;

    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 390
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/j;->a:Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->a(Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/j;->a:Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->a(Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "20000166"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 391
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/j;->a:Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->finish()V

    .line 392
    return-void
.end method
