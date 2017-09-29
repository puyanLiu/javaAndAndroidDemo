.class Lcom/ali/user/mobile/login/ui/BaseLoginFragment$UnifyLoginHandler;
.super Landroid/os/Handler;
.source "BaseLoginFragment.java"


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/BaseLoginFragment;


# direct methods
.method public constructor <init>(Lcom/ali/user/mobile/login/ui/BaseLoginFragment;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/BaseLoginFragment$UnifyLoginHandler;->this$0:Lcom/ali/user/mobile/login/ui/BaseLoginFragment;

    .line 245
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 246
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    .line 250
    const-string/jumbo v0, "BaseLoginFragment"

    const-string/jumbo v1, "UnifyLoginHandler receive msg: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 255
    :goto_0
    return-void

    .line 253
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

    .line 254
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/BaseLoginFragment$UnifyLoginHandler;->this$0:Lcom/ali/user/mobile/login/ui/BaseLoginFragment;

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->onLoginPreFinish(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V

    goto :goto_0

    .line 251
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
