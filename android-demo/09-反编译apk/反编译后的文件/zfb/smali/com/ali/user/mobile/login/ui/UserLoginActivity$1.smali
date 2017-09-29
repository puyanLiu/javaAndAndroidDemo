.class Lcom/ali/user/mobile/login/ui/UserLoginActivity$1;
.super Ljava/lang/Object;
.source "UserLoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/UserLoginActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/UserLoginActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/UserLoginActivity$1;->this$0:Lcom/ali/user/mobile/login/ui/UserLoginActivity;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/UserLoginActivity$1;->this$0:Lcom/ali/user/mobile/login/ui/UserLoginActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/UserLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/rsa/Rsa;->getRSAKey(Landroid/content/Context;)Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v0

    const-string/jumbo v0, "UserLoginActivity"

    const-string/jumbo v1, "Exception when doPreGetRsa"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
