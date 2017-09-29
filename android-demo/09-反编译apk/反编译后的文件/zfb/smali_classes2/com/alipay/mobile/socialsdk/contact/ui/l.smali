.class final Lcom/alipay/mobile/socialsdk/contact/ui/l;
.super Ljava/lang/Object;
.source "ChatRoomSelectPeopleActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobilechat/biz/group/rpc/response/GroupCreateResult;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity_;Lcom/alipay/mobilechat/biz/group/rpc/response/GroupCreateResult;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/l;->c:Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity_;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/l;->a:Lcom/alipay/mobilechat/biz/group/rpc/response/GroupCreateResult;

    iput-object p3, p0, Lcom/alipay/mobile/socialsdk/contact/ui/l;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/l;->c:Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity_;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity_;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/l;->c:Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity_;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/l;->a:Lcom/alipay/mobilechat/biz/group/rpc/response/GroupCreateResult;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/l;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity_;->a(Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity_;Lcom/alipay/mobilechat/biz/group/rpc/response/GroupCreateResult;Ljava/lang/String;)V

    .line 79
    :cond_0
    return-void
.end method
