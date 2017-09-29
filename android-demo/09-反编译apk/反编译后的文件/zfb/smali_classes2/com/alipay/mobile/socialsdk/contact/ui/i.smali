.class final Lcom/alipay/mobile/socialsdk/contact/ui/i;
.super Ljava/lang/Object;
.source "ChatRoomSelectPeopleActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;

.field private final synthetic b:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/i;->a:Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/i;->b:Ljava/util/Map;

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .prologue
    .line 374
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 375
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 376
    const-class v1, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    .line 374
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/i;->a:Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;

    sget v2, Lcom/alipay/mobile/socialsdk/R$string;->create_chat_room_add_friend:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 378
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/i;->a:Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;

    sget v3, Lcom/alipay/mobile/socialsdk/R$string;->create_group_add_friend_tip:I

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    .line 379
    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/ui/i;->b:Ljava/util/Map;

    const/4 v5, 0x0

    .line 377
    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->addFriendDialogBatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alipay/mobile/framework/service/ext/contact/AddFriendVerifyCallBack;)V

    .line 381
    return-void
.end method
