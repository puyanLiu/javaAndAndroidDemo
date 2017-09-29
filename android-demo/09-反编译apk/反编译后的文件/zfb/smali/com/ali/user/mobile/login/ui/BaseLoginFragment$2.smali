.class Lcom/ali/user/mobile/login/ui/BaseLoginFragment$2;
.super Lcom/ali/user/mobile/login/AbsNotifyFinishCaller;
.source "BaseLoginFragment.java"


# instance fields
.field private final synthetic a:Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/BaseLoginFragment;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/BaseLoginFragment;Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/BaseLoginFragment$2;->this$0:Lcom/ali/user/mobile/login/ui/BaseLoginFragment;

    iput-object p2, p0, Lcom/ali/user/mobile/login/ui/BaseLoginFragment$2;->a:Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

    .line 141
    invoke-direct {p0}, Lcom/ali/user/mobile/login/AbsNotifyFinishCaller;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyPacelable(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 144
    const-string/jumbo v0, "BaseLoginFragment"

    const-string/jumbo v1, "biz notifyPacelable to do onLoginPostFinish"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginFragment$2;->this$0:Lcom/ali/user/mobile/login/ui/BaseLoginFragment;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/BaseLoginFragment$2;->a:Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->onLoginPostFinish(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V

    .line 146
    return-void
.end method

.method public notifySerializable(Ljava/io/Serializable;)V
    .locals 2

    .prologue
    .line 150
    const-string/jumbo v0, "BaseLoginFragment"

    const-string/jumbo v1, "biz notifySerializable to do onLoginPostFinish"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginFragment$2;->this$0:Lcom/ali/user/mobile/login/ui/BaseLoginFragment;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/BaseLoginFragment$2;->a:Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->onLoginPostFinish(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V

    .line 152
    return-void
.end method
