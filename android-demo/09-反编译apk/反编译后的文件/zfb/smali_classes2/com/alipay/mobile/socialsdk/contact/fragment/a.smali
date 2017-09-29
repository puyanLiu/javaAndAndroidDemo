.class final Lcom/alipay/mobile/socialsdk/contact/fragment/a;
.super Ljava/lang/Object;
.source "ChatRoomSelectPeopleFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment_;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/a;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment_;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/a;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment_;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment_;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/a;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment_;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment_;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/a;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment_;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment_;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/a;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment_;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment_;->access$001(Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment_;)V

    .line 100
    :cond_0
    return-void
.end method
