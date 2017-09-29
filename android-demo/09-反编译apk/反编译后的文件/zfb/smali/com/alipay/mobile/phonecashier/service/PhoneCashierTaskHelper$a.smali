.class final Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper$a;
.super Ljava/lang/Thread;
.source "PhoneCashierTaskHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper$a;->a:Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mIsRun ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper$a;->a:Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;

    iget-boolean v1, v1, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->d(Ljava/lang/String;)V

    .line 112
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper$a;->a:Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;

    iget-boolean v0, v0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->b:Z

    if-nez v0, :cond_1

    .line 148
    :cond_0
    return-void

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper$a;->a:Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;

    invoke-static {v0}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->a(Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 115
    :try_start_0
    const-string/jumbo v0, "phonecashier helper thread wait"

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->b(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper$a;->a:Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;

    invoke-static {v0}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->a(Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 113
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper$a;->a:Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;

    iget-boolean v0, v0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->b:Z

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper$a;->a:Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;

    invoke-static {v0}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->b(Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 125
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper$a;->a:Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;

    invoke-static {v0}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->c(Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;)Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayBean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper$a;->a:Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->a:Z

    .line 127
    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper$a;->a:Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;

    invoke-static {v0}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->c(Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;)Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayBean;->e()Z

    move-result v0

    .line 128
    if-eqz v0, :cond_3

    .line 129
    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper$a;->a:Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;

    invoke-static {v0}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->c(Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;)Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayBean;->b()Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;

    move-result-object v0

    .line 130
    const/4 v2, 0x0

    .line 129
    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;->onPaySuccess(Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierPaymentResult;)V

    .line 144
    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper$a;->a:Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->a:Z

    .line 124
    :cond_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 113
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 133
    :cond_3
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 134
    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/MicroApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 137
    iget-object v2, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper$a;->a:Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;

    new-instance v3, Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;

    .line 138
    iget-object v4, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper$a;->a:Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;

    invoke-static {v4}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->c(Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;)Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayBean;->a()Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;

    move-result-object v4

    .line 139
    iget-object v5, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper$a;->a:Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;

    invoke-static {v5}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->c(Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;)Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayBean;->d()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v0, v4, v5}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;-><init>(Lcom/alipay/mobile/framework/MicroApplicationContext;Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;Ljava/lang/String;)V

    .line 137
    invoke-static {v2, v3}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->a(Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;)V

    .line 140
    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper$a;->a:Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;

    invoke-static {v0}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->d(Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;)Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper$a;->a:Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;

    invoke-static {v2}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->c(Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;)Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayBean;

    move-result-object v2

    .line 141
    invoke-virtual {v2}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayBean;->b()Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;

    move-result-object v2

    .line 140
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;->a(Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;)V

    .line 142
    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper$a;->a:Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;

    invoke-static {v0}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->c(Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;)Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayBean;->c()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_1
.end method
