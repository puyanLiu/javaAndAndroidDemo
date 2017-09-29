.class public Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;
.super Ljava/lang/Object;
.source "PhoneCashierTaskHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper$a;
    }
.end annotation


# static fields
.field private static d:Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;


# instance fields
.field a:Z

.field public b:Z

.field private c:Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayBean;

.field private e:Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper$a;

.field private final f:Ljava/lang/Object;

.field private final g:Ljava/lang/Object;

.field private h:Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->a:Z

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->e:Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper$a;

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->f:Ljava/lang/Object;

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->g:Ljava/lang/Object;

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->b:Z

    .line 23
    return-void
.end method

.method public static a()Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->d:Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;

    if-nez v0, :cond_0

    .line 36
    const-string/jumbo v0, "PhoneCashierTaskHelper init"

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->b(Ljava/lang/String;)V

    .line 37
    new-instance v0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;

    invoke-direct {v0}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;-><init>()V

    .line 38
    sput-object v0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->d:Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->b()V

    .line 40
    :cond_0
    sget-object v0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->d:Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->f:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->h:Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->g:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;)Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayBean;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->c:Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayBean;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;)Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->h:Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayBean;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "phonecashier helper toPay mIsPaying ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->b(Ljava/lang/String;)V

    .line 55
    iget-boolean v1, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->a:Z

    if-eqz v1, :cond_0

    .line 73
    :goto_0
    return v0

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 59
    :try_start_0
    iput-object p1, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->c:Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayBean;

    .line 58
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    iget-object v1, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 62
    :try_start_1
    iget-object v2, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->e:Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper$a;

    invoke-virtual {v2}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper$a;->getState()Ljava/lang/Thread$State;

    move-result-object v2

    .line 63
    const-string/jumbo v3, "state start"

    invoke-static {v3}, Lcom/alipay/android/app/util/LogUtils;->b(Ljava/lang/String;)V

    .line 64
    sget-object v3, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    if-ne v2, v3, :cond_2

    .line 65
    const-string/jumbo v2, "phonecashier helper toPay  notify lock"

    invoke-static {v2}, Lcom/alipay/android/app/util/LogUtils;->b(Ljava/lang/String;)V

    .line 67
    iget-object v2, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->f:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 61
    :cond_1
    monitor-exit v1

    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 68
    :cond_2
    :try_start_2
    sget-object v3, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v2, v3, :cond_1

    .line 69
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->d:Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;

    .line 70
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v0, 0x0

    goto :goto_0

    .line 61
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 44
    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/AppInfo;->isDebuggable()Z

    move-result v0

    sput-boolean v0, Lcom/alipay/android/app/pay/GlobalConstant;->DEBUG:Z

    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->e:Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper$a;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper$a;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper$a;-><init>(Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;)V

    iput-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->e:Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper$a;

    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->e:Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper$a;

    const-string/jumbo v1, "phonecashierthread"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper$a;->setName(Ljava/lang/String;)V

    .line 48
    const-string/jumbo v0, "mThread start"

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->b(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->e:Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper$a;

    invoke-virtual {v0}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper$a;->start()V

    .line 51
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->c:Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayBean;

    if-eqz v0, :cond_2

    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->c:Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayBean;

    .line 80
    invoke-virtual {v0}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayBean;->d()Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {v0}, Lcom/alipay/android/app/util/Utils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/util/Utils;->a(Ljava/lang/String;)I

    move-result v0

    .line 81
    invoke-static {}, Lcom/alipay/android/app/data/BizDataSource;->a()Lcom/alipay/android/app/data/BizDataSource;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/data/BizDataSource;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 82
    invoke-static {}, Lcom/alipay/android/app/data/BizDataSource;->a()Lcom/alipay/android/app/data/BizDataSource;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/data/BizDataSource;->b(I)Lcom/alipay/android/app/data/BizData;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->h:Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->h:Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;

    invoke-virtual {v1}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;->a()V

    .line 86
    :cond_0
    invoke-static {}, Lcom/alipay/android/app/data/BizDataSource;->a()Lcom/alipay/android/app/data/BizDataSource;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/android/app/data/BizDataSource;->a(Lcom/alipay/android/app/data/BizDataSource;Lcom/alipay/android/app/data/BizData;)V

    .line 101
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->a:Z

    .line 105
    :cond_2
    :goto_1
    return-void

    .line 88
    :cond_3
    invoke-static {}, Lcom/alipay/android/app/base/trade/TradeManager;->a()Lcom/alipay/android/app/base/trade/TradeManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/base/trade/TradeManager;->e(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->h:Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;

    if-eqz v1, :cond_4

    .line 90
    iget-object v1, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->h:Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;

    invoke-virtual {v1}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;->a()V

    .line 92
    :cond_4
    invoke-static {}, Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;->a()Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;->c(I)Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    move-result-object v1

    .line 93
    if-eqz v1, :cond_5

    .line 94
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->exit(Ljava/lang/String;)V

    .line 96
    :cond_5
    invoke-static {}, Lcom/alipay/android/app/ui/TradeUiManager;->a()Lcom/alipay/android/app/ui/TradeUiManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/ui/TradeUiManager;->c(I)Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->h()V
    :try_end_0
    .catch Lcom/alipay/android/app/exception/AppErrorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
