.class Lcom/alipay/android/phone/nfd/nfdservice/ui/common/af;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final synthetic e:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;

.field private b:I

.field private c:J

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "WifiHelper.java"

    const-class v2, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/af;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "onReceive"

    const-string/jumbo v3, "com.alipay.android.phone.nfd.nfdservice.ui.common.WifiHelper$WifiReceiver"

    const-string/jumbo v4, "android.content.Context:android.content.Intent"

    const-string/jumbo v5, "context:intent"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x2a7

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/af;->e:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method private constructor <init>(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;)V
    .locals 2

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/af;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/af;->c:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/af;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/af;-><init>(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/af;->e:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1, p2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v8, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/af;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;

    invoke-static {v8}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;->a(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;)Z

    move-result v8

    if-nez v8, :cond_0

    :try_start_0
    const-string/jumbo v8, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string/jumbo v0, "newState"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/SupplicantState;

    const-string/jumbo v8, "WifiHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "WifiReceiver SUPPLICANT_STATE_CHANGED_ACTION "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v8

    iget-object v9, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/af;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;

    invoke-static {v9}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;->b(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;->i()[I

    move-result-object v9

    invoke-virtual {v0}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v0

    aget v0, v9, v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unknown supplicant state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string/jumbo v8, "Monitor"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "onReceive at: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v9, ", Intent: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v2, v4, v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", cost:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long/2addr v0, v6

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ms."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v8, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_0
    move v1, v2

    :pswitch_1
    if-eqz v1, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/af;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;

    invoke-static {v0, v8}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;->a(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;Landroid/net/NetworkInfo$DetailedState;)V

    :goto_1
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/af;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;

    invoke-static {v0, v8}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;->b(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/af;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;->a(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_1

    :cond_2
    const-string/jumbo v8, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string/jumbo v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_3

    move v1, v2

    :cond_3
    iget-object v8, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/af;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;

    invoke-static {v8}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;->b(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/af;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;

    invoke-virtual {v1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;->g()I

    move-result v1

    if-eqz v0, :cond_4

    iget-object v8, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/af;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;->a(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;Landroid/net/NetworkInfo$DetailedState;)V

    :cond_4
    iget-object v8, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/af;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;

    invoke-virtual {v8, v1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;->a(I)V

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/af;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;->b(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/af;->c:J

    sub-long v0, v8, v0

    const-wide/16 v10, 0x1f40

    cmp-long v0, v0, v10

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/af;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v10, 0x1

    invoke-virtual {v0, v1, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    :try_start_2
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/af;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;->g()I

    move-result v0

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/af;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;->a(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iput-wide v8, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/af;->c:J

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/af;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iput-wide v8, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/af;->c:J

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/af;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0

    :cond_6
    const-string/jumbo v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/af;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;->g()I

    move-result v0

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/af;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;->a(I)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/af;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;

    const-string/jumbo v1, "wifi_state"

    const/4 v8, 0x4

    invoke-virtual {p2, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;->a(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;I)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/af;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;->a(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;Landroid/net/NetworkInfo$DetailedState;)V

    const-string/jumbo v0, "newRssi"

    const/16 v1, -0xc8

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/af;->b:I

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/af;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;->c(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/af;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdNetWorkUtil;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_a

    iget-object v8, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/af;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;

    invoke-static {v8}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;->d(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;)Ljava/util/HashSet;

    move-result-object v8

    if-eqz v8, :cond_a

    const/4 v8, 0x0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;

    iget v8, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/af;->b:I

    iput v8, v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->i:I

    iput-object v1, v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->j:Landroid/net/wifi/WifiInfo;

    :cond_a
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/af;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;->e(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;)Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->a:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/af;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;->f(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/af;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;->a(I)V

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    const-string/jumbo v1, "WifiHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "WifiReceiver CONNECTIVITY_ACTION "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_c

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/af;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;->a(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;Landroid/net/NetworkInfo$DetailedState;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/af;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;->b(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_0

    :cond_c
    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/af;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;->a(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;Landroid/net/NetworkInfo$DetailedState;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/af;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;->b(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;Landroid/net/NetworkInfo$DetailedState;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
