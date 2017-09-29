.class final Lcom/alipay/android/widgets/asset/w;
.super Lcom/alipay/mobile/framework/service/common/TaskScheduleService$Transaction;
.source "WealthHomeBroadcastReceiver.java"


# instance fields
.field final synthetic a:Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;

.field private final synthetic b:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;


# direct methods
.method constructor <init>(Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/w;->a:Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;

    iput-object p2, p0, Lcom/alipay/android/widgets/asset/w;->b:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    .line 485
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$Transaction;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 488
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/w;->a:Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;

    invoke-static {}, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "openWapActivity()"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/w;->a:Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;

    invoke-static {v0}, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->i(Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;)Lcom/alipay/android/widgets/asset/utils/BindCardProcessor;

    move-result-object v0

    .line 490
    invoke-virtual {p0}, Lcom/alipay/android/widgets/asset/w;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/widgets/asset/w;->b:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/widgets/asset/utils/BindCardProcessor;->a(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    .line 491
    return-void
.end method
