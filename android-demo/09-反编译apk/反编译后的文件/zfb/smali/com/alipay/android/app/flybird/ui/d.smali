.class final Lcom/alipay/android/app/flybird/ui/d;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

.field final synthetic b:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V
    .locals 0

    .prologue
    .line 973
    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/d;->b:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    iput-object p2, p0, Lcom/alipay/android/app/flybird/ui/d;->a:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 976
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/d;->a:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->h()[Ljava/lang/String;

    move-result-object v0

    .line 977
    const-string/jumbo v1, " MiniEventHandlerHelper wappay  start "

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/String;)V

    .line 978
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/d;->b:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->a(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    .line 979
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/d;->b:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v2}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->a(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 980
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 981
    const/4 v3, 0x0

    aget-object v3, v0, v3

    .line 982
    const-string/jumbo v4, "url"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    const-string/jumbo v3, "type"

    const-string/jumbo v4, "wappay"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    array-length v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 986
    aget-object v0, v0, v5

    .line 987
    const-string/jumbo v3, "cookie"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    :cond_0
    const-string/jumbo v0, "from_mcashier"

    invoke-virtual {v2, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 992
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 997
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/d;->b:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->a(Landroid/content/Intent;)V

    .line 999
    :cond_1
    sget-object v1, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 1001
    :try_start_0
    const-string/jumbo v0, " MiniEventHandlerHelper wappay  wait "

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/String;)V

    .line 1002
    sget-object v0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1006
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1008
    const-string/jumbo v0, " MiniEventHandlerHelper wappay  notify "

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/String;)V

    .line 1009
    invoke-static {}, Lcom/alipay/android/app/pay/Result;->a()Ljava/lang/String;

    move-result-object v0

    .line 1010
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1013
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/d;->b:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->exit(Ljava/lang/String;)V

    .line 1014
    return-void

    .line 1003
    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1006
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
