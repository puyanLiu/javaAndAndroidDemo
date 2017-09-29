.class Lcom/ali/user/mobile/common/api/AliUserLogin$3;
.super Ljava/lang/Object;
.source "AliUserLogin.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field final synthetic this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/common/api/AliUserLogin;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$3;->this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;

    iput-object p2, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$3;->a:Landroid/content/Context;

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 245
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$3;->this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;

    iget-object v1, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$3;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/ali/user/mobile/common/api/AliUserLogin;->access$1(Lcom/ali/user/mobile/common/api/AliUserLogin;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :goto_0
    return-void

    .line 246
    :catch_0
    move-exception v0

    .line 247
    const-string/jumbo v1, "AliUserLogin"

    const-string/jumbo v2, "setupAlipaySsoLogin exception"

    invoke-static {v1, v2, v0}, Lcom/ali/user/mobile/log/AliUserLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 248
    iget-object v0, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$3;->this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;

    iget-object v1, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$3;->a:Landroid/content/Context;

    invoke-virtual {v0, v3, v1, v3}, Lcom/ali/user/mobile/common/api/AliUserLogin;->openLoginPage(Lcom/taobao/android/sso/UserInfo;Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0
.end method
