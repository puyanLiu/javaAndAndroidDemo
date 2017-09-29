.class Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$30;
.super Ljava/lang/Object;
.source "AliUserLoginFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Lcom/ali/user/mobile/service/UrlFetchService$UrlFetchCallback;

.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;Ljava/lang/String;Lcom/ali/user/mobile/service/UrlFetchService$UrlFetchCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$30;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iput-object p2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$30;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$30;->b:Lcom/ali/user/mobile/service/UrlFetchService$UrlFetchCallback;

    .line 1212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1216
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$30;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getLoginAccount()Ljava/lang/String;

    move-result-object v1

    .line 1217
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$30;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v0, v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mUrlFetchService:Lcom/ali/user/mobile/service/UrlFetchService;

    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$30;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-virtual {v2}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getLoginType()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$30;->a:Ljava/lang/String;

    const-string/jumbo v4, "alipay"

    iget-object v5, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$30;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-virtual {v5}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getLoginType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ali/user/mobile/info/AppInfo;->getApdid()Ljava/lang/String;

    move-result-object v4

    .line 1218
    :goto_0
    iget-object v5, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$30;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v5, v5, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mAccountInputView:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v5}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$30;->b:Lcom/ali/user/mobile/service/UrlFetchService$UrlFetchCallback;

    .line 1217
    invoke-interface/range {v0 .. v6}, Lcom/ali/user/mobile/service/UrlFetchService;->foundH5urls(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/mobile/service/UrlFetchService$UrlFetchCallback;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1222
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$30;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->dismissProgress()V

    .line 1224
    return-void

    .line 1218
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$30;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v4, v4, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mRdsWraper:Lcom/ali/user/mobile/login/rds/RDSWraper;

    iget-object v5, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$30;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v5, v5, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v1}, Lcom/ali/user/mobile/login/rds/RDSWraper;->getRdsData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    goto :goto_0

    .line 1219
    :catch_0
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1221
    :catchall_0
    move-exception v0

    .line 1222
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$30;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-virtual {v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->dismissProgress()V

    .line 1223
    throw v0
.end method
