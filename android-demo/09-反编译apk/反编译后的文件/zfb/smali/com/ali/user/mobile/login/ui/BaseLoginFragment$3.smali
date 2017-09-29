.class Lcom/ali/user/mobile/login/ui/BaseLoginFragment$3;
.super Ljava/lang/Object;
.source "BaseLoginFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/BaseLoginFragment;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/BaseLoginFragment;Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/BaseLoginFragment$3;->this$0:Lcom/ali/user/mobile/login/ui/BaseLoginFragment;

    iput-object p2, p0, Lcom/ali/user/mobile/login/ui/BaseLoginFragment$3;->a:Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 213
    const-string/jumbo v0, "BaseLoginFragment"

    const-string/jumbo v1, "save history"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginFragment$3;->this$0:Lcom/ali/user/mobile/login/ui/BaseLoginFragment;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->getLoginAccount()Ljava/lang/String;

    move-result-object v1

    .line 215
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    const-string/jumbo v0, "BaseLoginFragment"

    const-string/jumbo v1, "account is empty, abort save history"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :goto_0
    return-void

    .line 219
    :cond_0
    new-instance v0, Lcom/ali/user/mobile/login/LoginHistory;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/ali/user/mobile/login/ui/BaseLoginFragment$3;->this$0:Lcom/ali/user/mobile/login/ui/BaseLoginFragment;

    invoke-virtual {v4}, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->getLoginType()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ali/user/mobile/login/ui/BaseLoginFragment$3;->a:Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

    iget-object v5, v5, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->headImg:Ljava/lang/String;

    iget-object v6, p0, Lcom/ali/user/mobile/login/ui/BaseLoginFragment$3;->a:Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

    iget-object v6, v6, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->userId:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/ali/user/mobile/login/LoginHistory;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/BaseLoginFragment$3;->this$0:Lcom/ali/user/mobile/login/ui/BaseLoginFragment;

    invoke-virtual {v1}, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->getLoginHistoryManager()Lcom/ali/user/mobile/login/LoginHistoryManager;

    move-result-object v1

    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/BaseLoginFragment$3;->a:Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

    iget-object v2, v2, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->userId:Ljava/lang/String;

    iget-object v3, p0, Lcom/ali/user/mobile/login/ui/BaseLoginFragment$3;->this$0:Lcom/ali/user/mobile/login/ui/BaseLoginFragment;

    invoke-virtual {v3}, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->getLoginType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/ali/user/mobile/login/LoginHistoryManager;->deleteLoginHistoryByUserId(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/BaseLoginFragment$3;->this$0:Lcom/ali/user/mobile/login/ui/BaseLoginFragment;

    invoke-virtual {v1}, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->getLoginHistoryManager()Lcom/ali/user/mobile/login/LoginHistoryManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/ali/user/mobile/login/LoginHistoryManager;->saveHistory(Lcom/ali/user/mobile/login/LoginHistory;)V

    goto :goto_0
.end method
