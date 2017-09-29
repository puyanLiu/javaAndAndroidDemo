.class final Lcom/alipay/mobile/socialsdk/contact/fragment/b;
.super Ljava/lang/Object;
.source "ChatRoomSelectPeopleFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobilechat/biz/group/rpc/response/CreateGroupAndQrCodeResult;

.field final synthetic b:Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment_;Lcom/alipay/mobilechat/biz/group/rpc/response/CreateGroupAndQrCodeResult;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/b;->b:Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment_;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/b;->a:Lcom/alipay/mobilechat/biz/group/rpc/response/CreateGroupAndQrCodeResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/b;->b:Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment_;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment_;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/b;->b:Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment_;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment_;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/b;->b:Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment_;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment_;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/b;->b:Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment_;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/b;->a:Lcom/alipay/mobilechat/biz/group/rpc/response/CreateGroupAndQrCodeResult;

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment_;->access$101(Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment_;Lcom/alipay/mobilechat/biz/group/rpc/response/CreateGroupAndQrCodeResult;)V

    .line 116
    :cond_0
    return-void
.end method
