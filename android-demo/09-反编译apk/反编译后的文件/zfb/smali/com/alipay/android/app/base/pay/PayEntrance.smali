.class public Lcom/alipay/android/app/base/pay/PayEntrance;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/base/pay/PayEntrance$PayResult;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private static b:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/app/base/pay/PayEntrance;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 46
    new-instance v0, Lcom/alipay/android/app/base/pay/a;

    invoke-direct {v0}, Lcom/alipay/android/app/base/pay/a;-><init>()V

    sput-object v0, Lcom/alipay/android/app/base/pay/PayEntrance;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 84
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/android/app/base/pay/PayEntrance;->c:Z

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 154
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    new-instance v0, Lcom/alipay/android/app/logic/decorator/RpcRequestDecorator;

    invoke-direct {v0}, Lcom/alipay/android/app/logic/decorator/RpcRequestDecorator;-><init>()V

    new-instance v0, Lcom/alipay/android/app/logic/request/RequestConfig;

    const-string/jumbo v2, ""

    invoke-direct {v0, v2}, Lcom/alipay/android/app/logic/request/RequestConfig;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ""

    invoke-static {v0, v2}, Lcom/alipay/android/app/logic/decorator/RpcRequestDecorator;->a(Lcom/alipay/android/app/logic/request/RequestConfig;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    move-object v0, v1

    .line 253
    :goto_0
    return-object v0

    .line 158
    :cond_0
    invoke-static {}, Lcom/alipay/android/app/base/trade/TradeManager;->a()Lcom/alipay/android/app/base/trade/TradeManager;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Lcom/alipay/android/app/base/trade/TradeManager;->c()V

    .line 160
    const-string/jumbo v0, "null"

    invoke-static {v0}, Lcom/alipay/android/app/sys/GlobalContext;->c(Ljava/lang/String;)V

    .line 161
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/base/pay/PayEntrance;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 162
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    sget-object v0, Lcom/alipay/android/app/base/pay/PayEntrance;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 164
    invoke-static {}, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->e()V

    .line 165
    const-string/jumbo v0, " PayEntrance  pay  start "

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->f(Ljava/lang/String;)V

    .line 166
    invoke-static {}, Lcom/alipay/android/app/helper/MspConfig;->r()Lcom/alipay/android/app/helper/MspConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/helper/MspConfig;->i()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "6002"

    const-string/jumbo v3, ""

    invoke-static {v0, v2, v3}, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v2

    .line 171
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "PayEntrance process run"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/android/app/util/LogUtils;->b(Ljava/lang/String;)V

    .line 172
    const-wide/16 v4, 0xfa0

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 173
    const-string/jumbo v2, "MspStep:process time < 4000"

    invoke-static {v2}, Lcom/alipay/android/app/util/LogUtils;->b(Ljava/lang/String;)V

    .line 174
    sput-boolean v7, Lcom/alipay/android/app/logic/request/RequestConfig;->a:Z

    .line 175
    new-instance v2, Lcom/alipay/android/app/base/pay/b;

    invoke-direct {v2}, Lcom/alipay/android/app/base/pay/b;-><init>()V

    invoke-static {v2}, Lcom/alipay/android/app/util/GlobalExcutorUtil;->a(Ljava/lang/Runnable;)V

    .line 182
    :goto_1
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v2}, Lcom/alipay/android/app/statistic/StatisticManager;->a([Ljava/lang/Object;)V

    .line 183
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    .line 185
    invoke-static {}, Lcom/alipay/android/app/statistic/StatisticManager;->e()V

    .line 187
    invoke-static {}, Lcom/alipay/android/app/helper/MspConfig;->r()Lcom/alipay/android/app/helper/MspConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/helper/MspConfig;->m()Lcom/alipay/android/app/helper/ProtocolType;

    move-result-object v2

    sget-object v3, Lcom/alipay/android/app/helper/ProtocolType;->Msp:Lcom/alipay/android/app/helper/ProtocolType;

    if-ne v2, v3, :cond_2

    .line 188
    invoke-static {}, Lcom/alipay/android/app/MspInitAssistService;->getMspInstance()Lcom/alipay/android/app/MspInitAssistService;

    move-result-object v2

    .line 189
    if-eqz v2, :cond_2

    .line 190
    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Lcom/alipay/android/app/MspInitAssistService;->pay(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 245
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    sget-object v2, Lcom/alipay/android/app/base/pay/PayEntrance;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v2}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 248
    invoke-static {v1}, Lcom/alipay/android/app/base/pay/PayEntrance;->a(Lcom/alipay/android/app/base/pay/PayEntrance$PayResult;)V

    goto/16 :goto_0

    .line 177
    :cond_1
    sput-boolean v6, Lcom/alipay/android/app/logic/request/RequestConfig;->a:Z

    goto :goto_1

    .line 194
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/alipay/android/app/base/trade/TradeManager;->a()Lcom/alipay/android/app/base/trade/TradeManager;

    move-result-object v3

    .line 196
    invoke-static {p0}, Lcom/alipay/android/app/util/Utils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 197
    invoke-static {v4}, Lcom/alipay/android/app/util/Utils;->a(Ljava/lang/String;)I

    move-result v5

    .line 198
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 200
    invoke-static {}, Lcom/alipay/android/app/base/trade/TradeManager;->a()Lcom/alipay/android/app/base/trade/TradeManager;

    move-result-object v2

    invoke-static {v4}, Lcom/alipay/android/app/util/Utils;->a(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/alipay/android/app/base/trade/TradeManager;->e(I)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v2, v7}, Lcom/alipay/android/app/base/trade/TradeManager;->d(I)Lcom/alipay/android/app/base/trade/Trade;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {v2}, Lcom/alipay/android/app/base/trade/TradeManager;->b(Lcom/alipay/android/app/base/trade/Trade;)V

    .line 202
    :cond_3
    :goto_2
    new-instance v2, Lcom/alipay/android/app/base/pay/PayEntrance$PayResult;

    invoke-direct {v2}, Lcom/alipay/android/app/base/pay/PayEntrance$PayResult;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 203
    :try_start_2
    new-instance v1, Lcom/alipay/android/app/base/trade/Trade;

    invoke-direct {v1, v5, v6, v4, v2}, Lcom/alipay/android/app/base/trade/Trade;-><init>(IILjava/lang/String;Lcom/alipay/android/app/base/pay/PayEntrance$PayResult;)V

    .line 205
    new-instance v6, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-direct {v6}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;-><init>()V

    invoke-virtual {v1, v6}, Lcom/alipay/android/app/base/trade/Trade;->a(Lcom/alipay/android/app/base/pay/IActivityAdapter;)V

    .line 206
    new-instance v6, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;

    invoke-direct {v6}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;-><init>()V

    invoke-virtual {v1, v6}, Lcom/alipay/android/app/base/trade/Trade;->b(Lcom/alipay/android/app/base/pay/IActivityAdapter;)V

    .line 207
    invoke-virtual {v3, v1}, Lcom/alipay/android/app/base/trade/TradeManager;->a(Lcom/alipay/android/app/base/trade/Trade;)V

    .line 210
    new-instance v1, Lcom/alipay/android/app/base/message/MspMessage;

    invoke-direct {v1, v5, v4}, Lcom/alipay/android/app/base/message/MspMessage;-><init>(ILjava/lang/Object;)V

    .line 212
    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/alipay/android/app/base/message/MsgSubject;->b(Lcom/alipay/android/app/base/message/MspMessage;)V

    .line 215
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->g()Landroid/content/Context;

    move-result-object v3

    const-class v5, Lcom/alipay/android/app/MspService;

    invoke-direct {v1, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->g()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-static {v4}, Lcom/alipay/android/app/logic/util/ExternalinfoUtil;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->v()V

    :cond_4
    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->g()Landroid/content/Context;

    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->h()V

    invoke-static {}, Lcom/alipay/android/app/util/LogAgent;->a()V

    .line 217
    monitor-enter v2
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 219
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 223
    :goto_3
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 225
    :try_start_5
    iget-boolean v1, v2, Lcom/alipay/android/app/base/pay/PayEntrance$PayResult;->a:Z

    if-eqz v1, :cond_8

    .line 227
    sget-boolean v1, Lcom/alipay/android/app/base/pay/PayEntrance;->c:Z

    if-eqz v1, :cond_5

    .line 228
    const/4 v1, 0x0

    sput-boolean v1, Lcom/alipay/android/app/base/pay/PayEntrance;->c:Z

    .line 229
    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->g()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/app/MspInitAssistService;->initFirstCreate(Landroid/content/Context;)V

    .line 231
    :cond_5
    invoke-static {}, Lcom/alipay/android/app/MspInitAssistService;->initServiceCreate()V

    .line 233
    invoke-static {}, Lcom/alipay/android/app/MspInitAssistService;->getMspInstance()Lcom/alipay/android/app/MspInitAssistService;

    move-result-object v1

    .line 234
    if-eqz v1, :cond_6

    .line 235
    invoke-static {v2}, Lcom/alipay/android/app/base/pay/PayEntrance$PayResult;->b(Lcom/alipay/android/app/base/pay/PayEntrance$PayResult;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lcom/alipay/android/app/MspInitAssistService;->pay(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v0

    .line 245
    :cond_6
    :goto_4
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    sget-object v1, Lcom/alipay/android/app/base/pay/PayEntrance;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 248
    invoke-static {v2}, Lcom/alipay/android/app/base/pay/PayEntrance;->a(Lcom/alipay/android/app/base/pay/PayEntrance$PayResult;)V

    .line 250
    :goto_5
    sget-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->APPID:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/sys/GlobalContext;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/android/app/util/LogAgent;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->m()V

    goto/16 :goto_0

    .line 200
    :cond_7
    :try_start_6
    invoke-virtual {v2, v6}, Lcom/alipay/android/app/base/trade/TradeManager;->b(I)Lcom/alipay/android/app/base/trade/Trade;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {v2}, Lcom/alipay/android/app/base/trade/TradeManager;->b(Lcom/alipay/android/app/base/trade/Trade;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_2

    .line 245
    :catch_0
    move-exception v2

    :goto_6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    sget-object v2, Lcom/alipay/android/app/base/pay/PayEntrance;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v2}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 248
    invoke-static {v1}, Lcom/alipay/android/app/base/pay/PayEntrance;->a(Lcom/alipay/android/app/base/pay/PayEntrance$PayResult;)V

    goto :goto_5

    .line 220
    :catch_1
    move-exception v1

    :try_start_7
    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    .line 223
    :catchall_0
    move-exception v1

    :try_start_8
    monitor-exit v2

    throw v1

    .line 245
    :catch_2
    move-exception v1

    move-object v1, v2

    goto :goto_6

    .line 238
    :cond_8
    invoke-virtual {v2}, Lcom/alipay/android/app/base/pay/PayEntrance$PayResult;->b()Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result-object v0

    goto :goto_4

    .line 245
    :catchall_1
    move-exception v0

    move-object v2, v1

    :goto_7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    sget-object v1, Lcom/alipay/android/app/base/pay/PayEntrance;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 248
    invoke-static {v2}, Lcom/alipay/android/app/base/pay/PayEntrance;->a(Lcom/alipay/android/app/base/pay/PayEntrance$PayResult;)V

    throw v0

    .line 245
    :catchall_2
    move-exception v0

    goto :goto_7
.end method

.method static synthetic a()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/alipay/android/app/base/pay/PayEntrance;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method private static a(Lcom/alipay/android/app/base/pay/PayEntrance$PayResult;)V
    .locals 2

    .prologue
    .line 120
    if-eqz p0, :cond_0

    .line 121
    invoke-static {p0}, Lcom/alipay/android/app/base/pay/PayEntrance$PayResult;->a(Lcom/alipay/android/app/base/pay/PayEntrance$PayResult;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/statistic/StatisticManager;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_0
    invoke-static {}, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->e()V

    .line 124
    invoke-static {}, Lcom/alipay/android/app/statistic/StatisticManager;->b()V

    .line 125
    return-void
.end method
